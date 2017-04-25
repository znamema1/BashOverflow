<?php

if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
    header('Location: ../../');
    exit;
}

require_once "qa-bash-db.php";
require_once QA_INCLUDE_DIR . 'qa-app-users.php';

function create_script($script) {
    $userid = qa_get_logged_in_userid();

    $scriptid = db_create_script($userid);
    $versionid = db_create_version($userid, $scriptid, $script);

    $stags = explode(' ', $script['tags']);
    $stags = array_unique($stags);
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

    $stags = explode(' ', $script['tags']);
    $stags = array_unique($stags);
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

    $script['name'] = $data['name'];
    $script['desc'] = $data['description'];
    $script['tags'] = @$tags;
    $script['example_data'] = @$data['example'];
    $script['comm_msg'] = @$data['commitmsg'];
    $script['repos'] = $repos;
    $script['author'] = $script['userid'];
    $script['edit'] = $data['editorid'];
    $script['create_date'] = 'XXX'; // to delete
    $script['edit_date'] = $data['created'];
    $script['score'] = $script['score'];
    $script['exec_count'] = $script['run_count'];
    $script['versions'] = range(1, $script['last_version']);
    if ($ver == null) {
        $script['selected_version'] = $script['last_version'];
    } else {
        $script['selected_version'] = $ver;
    }
    return $script;
}

/*
  function get_scripts_by_tag($tag, $start = 0) {
  $scripts = db_getscripts_versions_by_tag($tag, $start);
  }

  function get_scripts_by_user($userid, $start) {
  $userid = qa_get_logged_in_userid();
  $scripts = db_get_scripts_by_user($userid);
  $scripts = db_get_curr_versions_by_scriptid($scripts['id']);


  return $array;
  }

  function get_all_scripts($type, $start) {
  return db_get_script($type, $start);
  }

  function get_script_by_query($query, $start) {
  //??
  }

  function run_script($script) {
  // api connect
  }

  function vote_script($script, $vote) {

  } */

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
    if ($len <= 5 || $len > 40) {
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
    $len = strlen($script['tags']);
    if ($len > 400) {
        $script['tags_error'] = qa_lang_html('plugin_bash/error_script_tags');
        return false;
    }
    return true;
}

function validate_script_example_data(&$script) {
    $len = strlen($script['example_data']);
    if ($len > 400) {
        $script['example_data_error'] = qa_lang_html('plugin_bash/error_script_example_data');
        return false;
    }
    return true;
}

function validate_script_comm_msg(&$script) {
    $len = strlen($script['comm_msg']);
    if ($len <= 5 || $len > 100) {
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
//    require_once 'qa-bash-api-handler.php';
//    $parts = explode('/', $repo['git']);
//    $user = $parts[3];
//    $repos = $parts[4];
//        
//    return check_script($user, $repos, $repo['file'], $repo['comm']);
//    $repo['git'];
//    $repo['file'];
//    $repo['comm'];
    $ret = true;
    if (!isset($repo['git']) || strlen($repo['git']) == 0) {
        $repo['git_error'] = qa_lang_html('plugin_bash/error_script_git_empty');
        $ret = false;
    }
    if (!isset($repo['file']) || strlen($repo['file']) == 0) {
        $repo['file_error'] = qa_lang_html('plugin_bash/error_script_file_empty');
        $ret = false;
    }
    if (!isset($repo['comm']) || strlen($repo['comm']) == 0) {
        $repo['comm_error'] = qa_lang_html('plugin_bash/error_script_comm_empty');
        $ret = false;
    }
    return $ret;
}
