<?php

/*
 * Author: Martin Znamenacek
 * Description: Core functions for scripts functionality.
 */

require_once __DIR__ . '/qa-bash-db.php';
require_once QA_INCLUDE_DIR . 'qa-app-users.php';

/*
 * Creates a new script in the application.
 */
function create_script($script) {
    $userid = qa_get_logged_in_userid();

    $scriptid = db_create_script($userid);
    $versionid = db_create_version($userid, $scriptid, $script);

    $stags = $script['tags'];
    if (isset($stags)) {
        foreach ($stags as $stag) {
            $stagid = db_get_stagid_by_stag($stag);
            if (!isset($stagid)) {
                $stagid = db_create_stag($stag);
            }
            db_add_version_stag_relation($scriptid, $versionid, $stagid);
        }
    }

    foreach ($script['repos'] as $order => $repo) {
        $repoid = db_get_repoid_by_args($repo);
        if (!isset($repoid)) {
            $repoid = db_create_repo($repo);
        }
        db_add_version_repo_relation($scriptid, $versionid, $repoid);
    }
    user_add_points_create($userid);

    return $scriptid;
}

/*
 * Creates a new version of script.
 */
function update_script($scriptid, $script) {
    $userid = qa_get_logged_in_userid();
    $data = db_get_script($scriptid);
    if (!isset($data)) {
        return;
    }
    $version = $data['last_version'];

    $versionid = db_create_version($userid, $scriptid, $script, $version + 1);

    db_set_script_last_version($scriptid, $versionid);

    $stags = $script['tags'];
    if (isset($stags)) {
        foreach ($stags as $stag) {
            $stagid = db_get_stagid_by_stag($stag);
            if (!isset($stagid)) {
                $stagid = db_create_stag($stag);
            }
            db_add_version_stag_relation($scriptid, $versionid, $stagid);
        }
    }

    foreach ($script['repos'] as $order => $repo) {
        $repoid = db_get_repoid_by_args($repo);
        if (!isset($repoid)) {
            $repoid = db_create_repo($repo);
        }
        db_add_version_repo_relation($scriptid, $versionid, $repoid);
    }
    user_add_points_edit($userid);

    return $scriptid;
}

/*
 * Returns full informations about script.
 */
function get_script($scriptid, $ver = null) {
    $script = db_get_script($scriptid);
    if (!isset($script)) {
        return null;
    }

    if (!isset($ver)) {
        $ver = $script['last_version'];
    }
    $data = db_get_version($scriptid, $ver);
    if (!isset($data)) {
        return null;
    }

    $stags = db_get_script_stags($scriptid, $ver);
    $repos = db_get_repos($scriptid, $ver);

    if (!empty($stags[0]['stag'])) {
        foreach ($stags as $value) {
            $tags[] = $value['stag'];
        }
    }
    $ret['scriptid'] = $scriptid;
    $ret['name'] = $data['name'];
    $ret['desc'] = $data['description'];
    $ret['tags'] = @$tags;
    $ret['example_data'] = @$data['example'];
    $ret['comm_msg'] = @$data['commitmsg'];
    $ret['repos'] = $repos;
    $ret['author'] = $script['userid'];
    $ret['editor'] = $data['editorid'];
    $ret['edit_date'] = $data['created'];
    $ret['score'] = $script['score'];
    $ret['exec_count'] = $script['run_count'];
    $ret['versions'] = range(1, $script['last_version']);
    if ($ver == null) {
        $ret['selected_version'] = $script['last_version'];
    } else {
        $ret['selected_version'] = $ver;
    }
    $ret['is_public'] = $script['accessibility'] == 'A';
    return $ret;
}

/*
 * Returns the popular stags
 */
function get_popular_stags($start, $count = null) {
    $result = db_get_stags($start, $count);
    foreach ($result as $value) {
        $ret[$value['stag']] = $value['count'];
    }
    return $ret;
}

/*
 * Returns scripts searched by stag
 */
function get_scripts_by_stag($stag, $start, $count = null) {
    $result = db_get_versionid_and_scriptid_by_stag($stag, $start, $count);

    foreach ($result as $script) {
        $ret[] = get_script_overview($script['scriptid'], $script['versionid']);
    }
    return @$ret;
}


/*
 * Return count of all scripts in the database.
 */
function get_count_all_scripts() {
    return db_get_count_all_scripts();
}

/*
 * Return count of users scripts.
 */
function get_count_all_my_scripts($userid) {
    return db_get_count_all_my_scripts($userid);
}

/*
 * Returns scripts sorted by sort field (votes, runs).
 */
function get_scripts_by_sort($sort, $start, $count) {
    $result = db_get_scripts_by_sort($sort, $start, $count);
    foreach ($result as $script) {
        $ret[] = get_script_overview($script['scriptid'], $script['last_version']);
    }
    return @$ret;
}

/*
 * Returns scripts sorted by date.
 */
function get_scripts_by_date($is_mine, $start, $count) {
    $userid = qa_get_logged_in_userid();
    if ($is_mine) {
        if (!isset($userid)) {
            return;
        }

        $result = db_get_my_scripts($userid);
    } else {
        $result = db_get_scripts();
    }
    foreach ($result as $script) {
        $ret[] = get_script_overview($script['scriptid'], $script['last_version']);
    }
    if (isset($ret)) {
        qa_sort_by($ret, 'created');
        $ret = array_reverse($ret);
        $ret = array_slice($ret, $start, $count);
    }
    return @$ret;
}

/*
 * Returns basic informations about script for list page.
 */
function get_script_overview($scriptid, $versionid) {
    $script = db_get_script($scriptid);
    $data = db_get_version_overview($scriptid, $versionid);

    $stags = db_get_script_stags($scriptid, $versionid);

    if (!empty($stags[0]['stag'])) {
        foreach ($stags as $value) {
            $tags[] = $value['stag'];
        }
    }

    $authorinfo = qa_db_single_select(qa_db_user_account_selectspec($script['userid'], true));
    $editorinfo = qa_db_single_select(qa_db_user_account_selectspec($data['editorid'], true));


    $ret['score'] = $script['score'];
    $ret['score_label'] = qa_lang_html_sub_split('main/x_votes', '')['suffix'];
    $ret['exec_count'] = $script['run_count'];
    $ret['exec_label'] = qa_lang_html('plugin_bash/detail_script_exec_label');
    $ret['title'] = $data['name'];
    $ret['url'] = qa_path_html('script/' . $scriptid);
    $ret['tags'] = @$tags;
    $ret['what'] = qa_lang_html('plugin_bash/owned');
    $ret['created'] = $data['created'];
    $ret['who'] = qa_lang_html('plugin_bash/by') .' '. get_user_info_base($script['userid']) . qa_html(' (' . $authorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    $ret['what_2'] = qa_lang_html('plugin_bash/edited');
    $ret['when_2'] = qa_when_to_html($data['created'], @$options['fulldatedays']);
    $ret['who_2'] = qa_lang_html('plugin_bash/by') .' '. get_user_info_base($data['editorid']) . qa_html(' (' . $editorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    return $ret;
}

/*
 * Returns scripts searched by phrase
 */
function search_scripts($q, $start, $count) {
    $result = db_get_scripts_by_q($q, $start, $count);

    foreach ($result as $script) {
        $ret[] = get_script_overview($script['scriptid'], $script['versionid']);
    }
    return @$ret;
}

/*
 * Return informations about user.
 */
function get_user_info_base($userid) {
    $handle = qa_userid_to_handle($userid);
    return qa_get_one_user_html($handle);
}

/*
 * Run selected script and returns result.
 */
function run_script($scriptid, $versionid, $datain) {
    require_once __DIR__ . '/qa-bash-api-handler.php';
    $repos = db_get_repos($scriptid, $versionid);

    if (!isset($repos)) {
        return null;
    }

    $data['repos'] = $repos;
    $data['input'] = $datain;

    db_update_run_count($scriptid);

    $response = api_execute_script($data);
    return json_decode($response, true);
}

/*
 * Create new vote.
 * If vote already exists, delete it.
 */
function vote_script($userid, $scriptid, $vote) {
    require_once QA_INCLUDE_DIR . 'db/points.php';
    $old_vote = db_get_user_vote($userid, $scriptid);
    $script_owner = db_get_script_owner($scriptid);
    $value = $vote == 'up' ? 1 : -1;
    if (isset($old_vote)) {
        db_remove_vote($userid, $scriptid);
        db_update_score($scriptid, $value * -1);
        db_add_user_points($script_owner, $value * -1);
        qa_db_points_update_ifuser($script_owner, null);
    } else {
        db_create_vote($userid, $scriptid, $value);
        db_update_score($scriptid, $value);
        db_add_user_points($script_owner, $value);
        qa_db_points_update_ifuser($script_owner, null);
    }
    return db_get_script_score($scriptid);
}

/*
 * Gets user vote on selected script
 */
function get_user_vote($userid, $scriptid) {
    $vote = db_get_user_vote($userid, $scriptid);
    if (!isset($vote)) {
        return null;
    } else {
        if ($vote > 0) {
            return 'up';
        } else {
            return 'down';
        }
    }
}

/*
 * Adds points from script creating to the user
 */
function user_add_points_create($userid) {
    $points = qa_opt('bashoverflow_create_points');
    require_once QA_INCLUDE_DIR . 'db/points.php';

    db_add_user_points($userid, $points);
    qa_db_points_update_ifuser($userid, null);
}

/*
 * Adds points from script editing to the user
 */
function user_add_points_edit($userid) {
    $points = qa_opt('bashoverflow_edit_points');
    require_once QA_INCLUDE_DIR . 'db/points.php';

    db_add_user_points($userid, $points);
    qa_db_points_update_ifuser($userid, null);
}

/*
 * Marks script as private.
 */
function lock_script($scriptid, $userid) {
    $ownerid = db_get_script_owner($scriptid);
    if ($userid != $ownerid) {
        return;
    } else {
        db_update_script_access($scriptid, 'N');
    }
}

/*
 * Marks script as public.
 */
function unlock_script($scriptid, $userid) {
    $ownerid = db_get_script_owner($scriptid);
    if ($userid != $ownerid) {
        return;
    } else {
        db_update_script_access($scriptid, 'A');
    }
}

/*
 * Validates user entered data. 
 * In case of error, creates error message.
 */
function validate_script(&$script, $check_comm_msg) {
    $ret = true;
    $ret &= validate_script_name($script);
    $ret &= validate_script_desc($script);
    $ret &= validate_script_tags($script);
    $ret &= validate_script_example_data($script);
    $ret &= validate_script_repos($script);

    if ($check_comm_msg) {
        $ret &= validate_script_comm_msg($script);
    }

    return $ret;
}

function validate_script_name(&$script) {
    $min_len = qa_opt('bashoverflow_script_name_min_len');
    $max_len = qa_opt('bashoverflow_script_name_max_len');
    $len = strlen($script['name']);

    if ($len < $min_len || $len > $max_len) {
        $script['name_error'] = strtr(qa_lang_html('plugin_bash/error_script_name'), array(
            '^1' => $min_len,
            '^2' => $max_len));
        return false;
    }
    return true;
}

function validate_script_desc(&$script) {
    $min_len = qa_opt('bashoverflow_script_desc_min_len');
    $max_len = qa_opt('bashoverflow_script_desc_max_len');
    $len = strlen($script['desc']);

    if ($len < $min_len || $len > $max_len) {
        $script['desc_error'] = strtr(qa_lang_html('plugin_bash/error_script_desc'), array(
            '^1' => $min_len,
            '^2' => $max_len));
        return false;
    }
    return true;
}

function validate_script_tags(&$script) {
    $min_count = qa_opt('bashoverflow_script_tag_min_count');
    $max_count = qa_opt('bashoverflow_script_tag_max_count');
    $min_len = qa_opt('bashoverflow_script_tag_min_len');
    $max_len = qa_opt('bashoverflow_script_tag_max_len');

    $count = count($script['tags']);

    if ($count > $max_count || $count < $min_count) {
        $script['tags_error'] = strtr(qa_lang_html('plugin_bash/error_script_tags_count'), array(
            '^1' => $min_count,
            '^2' => $max_count));
        return false;
    }

    if (count($count)) {
        foreach ($script['tags'] as $stag) {
            $len = strlen($stag);
            if ($len < $min_len || $len > $max_len) {
                $script['tags_error'] = strtr(qa_lang_html('plugin_bash/error_script_tags_length'), array(
                    '^1' => $min_len,
                    '^2' => $max_len));
                return false;
            }
        }
    }

    return true;
}

function validate_script_example_data(&$script) {
    $min_len = qa_opt('bashoverflow_script_example_min_len');
    $max_len = qa_opt('bashoverflow_script_example_max_len');
    $len = strlen($script['example_data']);

    if ($len < $min_len || $len > $max_len) {
        $script['example_data_error'] = strtr(qa_lang_html('plugin_bash/error_script_example_data'), array(
            '^1' => $min_len,
            '^2' => $max_len));
        return false;
    }
    return true;
}

function validate_script_comm_msg(&$script) {
    $min_len = qa_opt('bashoverflow_script_comm_msg_min_len');
    $max_len = qa_opt('bashoverflow_script_comm_msg_max_len');
    $len = strlen($script['comm_msg']);

    if ($len < $min_len || $len > $max_len) {
        $script['comm_msg_error'] = strtr(qa_lang_html('plugin_bash/error_script_comm_msg'), array(
            '^1' => $min_len,
            '^2' => $max_len));
        return false;
    }
    return true;
}

function validate_script_repos(&$script) {
    if (!isset($script['repos'])) {
        $script['repos'][0]['git_error'] = qa_lang_html('plugin_bash/error_script_git_empty');
        $script['repos'][0]['file_error'] = qa_lang_html('plugin_bash/error_script_file_empty');
        $script['repos'][0]['comm_error'] = qa_lang_html('plugin_bash/error_script_comm_empty');
        return false;
    }
    $ret = true;
    foreach ($script['repos'] as &$repo) {
        $ret &= validate_script_repo($repo);
    }
    return $ret;
}

function validate_script_repo(&$repo) {
    $ret = true;
    if (!isset($repo['git']) || strlen($repo['git']) == 0) {
        $repo['git_error'] = qa_lang_html('plugin_bash/error_script_git_empty');
        $ret = false;
    } else {
        $ret &= validate_git($repo);
    }
    if (!isset($repo['file']) || strlen($repo['file']) == 0) {
        $repo['file_error'] = qa_lang_html('plugin_bash/error_script_file_empty');
        $ret = false;
    } else {
        $ret &= validate_file($repo);
    }
    if (!isset($repo['comm']) || strlen($repo['comm']) == 0) {
        $repo['comm_error'] = qa_lang_html('plugin_bash/error_script_comm_empty');
        $ret = false;
    } else {
        $ret &= validate_comm($repo);
    }
    return $ret;
}

function validate_git(&$repo) {
    $regex = qa_opt('bashoverflow_script_git_regex');
    if (!preg_match_all($regex, $repo['git']) == 1) {
        $repo['git_error'] = strtr(qa_lang_html('plugin_bash/error_script_git_format'), array(
            '^1' => qa_html(qa_opt('bashoverflow_script_git_template'))));
        return false;
    } else {
        return true;
    }
}

function validate_file(&$repo) {
    $min_len = qa_opt('bashoverflow_script_file_min_len');
    $max_len = qa_opt('bashoverflow_script_file_max_len');
    $len = strlen($repo['file']);

    if ($len < $min_len || $len > $max_len || substr($repo['file'], 0, 1) == '.') {
        $repo['file_error'] = strtr(qa_lang_html('plugin_bash/error_script_file_format'), array(
            '^1' => $min_len,
            '^2' => $max_len));
        return false;
    }
    return true;
}

function validate_comm(&$repo) {

    $min_len = qa_opt('bashoverflow_script_comm_min_len');
    $max_len = qa_opt('bashoverflow_script_comm_max_len');
    $len = strlen($repo['comm']);

    if ($len < $min_len || $len > $max_len) {
        $repo['comm_error'] = strtr(qa_lang_html('plugin_bash/error_script_comm_format'), array(
            '^1' => $min_len,
            '^2' => $max_len));
        return false;
    }
    return true;
}
