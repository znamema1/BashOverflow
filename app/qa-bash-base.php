<?php

if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
    header('Location: ../../');
    exit;
}

require_once __DIR__ . '/qa-bash-db.php';
require_once QA_INCLUDE_DIR . 'qa-app-users.php';

function create_script($script) {
    $userid = qa_get_logged_in_userid();

    $scriptid = db_create_script($userid);
    $versionid = db_create_version($userid, $scriptid, $script);

    $stags = $script['tags'];
    if (isset($stags)) {
        foreach ($stags as $tag) {
            $stagid = db_get_stagid_by_stag($tag);
            if (!isset($stagid)) {
                $stagid = db_create_stag($tag);
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

function update_script($scriptid, $script) {
    $userid = qa_get_logged_in_userid();
    $data = qa_db_get_script($scriptid);
    if (!isset($data)) {
        return;
    }
    $version = $data['last_version'];

    $versionid = db_create_version($userid, $scriptid, $script, $version + 1);

    qa_db_set_script_last_version($scriptid, $versionid);

    $stags = $script['tags'];
    if (isset($stags)) {
        foreach ($stags as $tag) {
            $stagid = db_get_stagid_by_stag($tag);
            if (!isset($stagid)) {
                $stagid = db_create_stag($tag);
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

function get_script($scriptid, $ver = null) {
    $script = qa_db_get_script($scriptid);
    if (!isset($script)) {
        return null;
    }

    if (!isset($ver)) {
        $ver = $script['last_version'];
    }
    $data = qa_db_get_version($scriptid, $ver);
    if (!isset($data)) {
        return null;
    }

    $stags = qa_db_get_stags($scriptid, $ver);
    $repos = qa_db_get_repos($scriptid, $ver);

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

function get_popular_tags($start, $count = null) {
    $result = get_stags($start, $count);
    foreach ($result as $value) {
        $ret[$value['stag']] = $value['count'];
    }
    return $ret;
}

function get_scripts_by_tag($tag, $start, $count = null) {
    $result = get_versionid_and_scriptid_by_stag($tag, $start, $count);

    foreach ($result as $script) {
        $ret[] = get_script_overview($script['scriptid'], $script['versionid']);
    }
    return @$ret;
}

function get_count_all_scripts() {
    return db_get_count_all_scripts();
}
function get_count_all_my_scripts($userid) {
    return db_get_count_all_my_scripts($userid);
}

function get_scripts_by_sort($sort, $start, $count) {
    $result = db_get_scripts_by_sort($sort, $start, $count);
    foreach ($result as $script) {
        $ret[] = get_script_overview($script['scriptid'], $script['last_version']);
    }
    return @$ret;
}

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
    }

    $ret = array_slice($ret, $start, $count);
    return @$ret;
}

function get_script_overview($scriptid, $versionid) {
    $script = qa_db_get_script($scriptid);
    $data = qa_db_get_version_overview($scriptid, $versionid);

    $stags = qa_db_get_stags($scriptid, $versionid);

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
    $ret['what'] = qa_html('owned');
    $ret['when'] = '2 minutes ago';
    $ret['created'] = $data['created'];
    $ret['who'] = qa_html(' by ') . get_user_info_base($script['userid']) . qa_html(' (' . $authorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    $ret['what_2'] = qa_html('edited');
    $ret['when_2'] = qa_when_to_html($data['created'], @$options['fulldatedays']);
    $ret['who_2'] = qa_html('by ') . get_user_info_base($data['editorid']) . qa_html(' (' . $editorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    return $ret;
}

function search_scripts($q, $start, $count) {
    $result = get_scripts_by_q($q, $start, $count);

    foreach ($result as $script) {
        $ret[] = get_script_overview($script['scriptid'], $script['versionid']);
    }
    return @$ret;
}

function get_user_info_base($userid) {
    $handle = qa_userid_to_handle($userid);
    return qa_get_one_user_html($handle);
}

function run_script($script) {
    // api connect
}

function vote_script($userid, $scriptid, $vote) {
    $old_vote = db_get_user_vote($userid, $scriptid);
    $value = $vote == 'up' ? 1 : -1;
    if (isset($old_vote)) {
        db_remove_vote($userid, $scriptid);
        db_update_score($scriptid, $value * -1);
    } else {
        db_create_vote($userid, $scriptid, $value);
        db_update_score($scriptid, $value);
    }
    return db_get_script_score($scriptid);
}

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

function user_add_points_create($userid) {
    $points = 10;
    require_once QA_INCLUDE_DIR . 'db/points.php';

    db_add_user_points($userid, $points);
    qa_db_points_update_ifuser($userid, null);
}

function user_add_points_edit($userid) {
    $points = 5;
    require_once QA_INCLUDE_DIR . 'db/points.php';

    db_add_user_points($userid, $points);
    qa_db_points_update_ifuser($userid, null);
}

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
    $len = strlen($script['name']);
    if ($len < 5 || $len > 40) {
        $script['name_error'] = qa_lang_html('plugin_bash/error_script_name');
        return false;
    }
    return true;
}

function validate_script_desc(&$script) {
    $len = strlen($script['desc']);
    if ($len > 400) {
        $script['desc_error'] = qa_lang_html('plugin_bash/error_script_desc');
        return false;
    }
    return true;
}

function validate_script_tags(&$script) {
    $count = count($script['tags']);
    if ($count > 5) {
        $script['tags_error'] = qa_lang_html('plugin_bash/error_script_tags_count');
        return false;
    }
    if (count($count)) {
        foreach ($script['tags'] as $tag) {
            if (strlen($tag) > 20) {
                $script['tags_error'] = qa_lang_html('plugin_bash/error_script_tags_length');
                return false;
            }
        }
    }

    return true;
}

function validate_script_example_data(&$script) {
    $len = strlen($script['example_data']);
    if ($len > 300) {
        $script['example_data_error'] = qa_lang_html('plugin_bash/error_script_example_data');
        return false;
    }
    return true;
}

function validate_script_comm_msg(&$script) {
    $len = strlen($script['comm_msg']);
    if ($len < 5 || $len > 150) {
        $script['comm_msg_error'] = qa_lang_html('plugin_bash/error_script_comm_msg');
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
    $regex = '/^https:\/\/github\.com\/\S{1,39}\/\S{1,100}\.git/';
    if (!preg_match_all($regex, $repo['git']) == 1) {
        $repo['git_error'] = qa_lang_html('plugin_bash/error_script_git_format');
        return false;
    } else {
        return true;
    }
}

function validate_file(&$repo) {
    $len = strlen($repo['file']);
    if ($len > 150 || substr($repo['file'], 0, 1) == '.') {
        $repo['file_error'] = qa_lang_html('plugin_bash/error_script_file_format');
        return false;
    }
    return true;
}

function validate_comm(&$repo) {
    $len = strlen($repo['comm']);
    if ($len < 6 || $len > 40) {
        $repo['comm_error'] = qa_lang_html('plugin_bash/error_script_comm_format');
        return false;
    }
    return true;
}
