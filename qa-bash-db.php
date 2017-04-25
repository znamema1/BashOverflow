<?php

function db_create_script($userid) {
    qa_db_query_sub(
            'INSERT INTO `^scripts`(`userid`, `last_version`, `score`, `run_count`, `accessibility`)'
            . ' VALUES ($,1,0,0,$)', $userid, 'A');

    return qa_db_last_insert_id();
}

function db_create_version($userid, $scriptid, $script, $versionid = 1) {
    qa_db_query_sub(
            'INSERT INTO `qa_versions`(`versionid`, `scriptid`, `created`, `editorid`, `description`, `example`, `commitmsg`, `name`)'
            . ' VALUES ($,$,NOW(),$,$,$,$,$)', $versionid, $scriptid, $userid, $script['desc'], $script['example_data'], @$script['example_data'], $script['name']);
    return $versionid;
}

function db_get_stagid_by_stag($stag) {
    $result = qa_db_query_sub('SELECT `stagid` FROM `qa_stags` WHERE `stag` =$', $stag);
    return qa_db_read_one_value($result, true);
}

function db_create_stag($tag) {
    qa_db_query_sub(
            'INSERT INTO `qa_stags`(`stag`) VALUES ($)', $tag);
    return qa_db_last_insert_id();
}

function db_add_version_stag_relation($scriptid, $versionid, $stagid) {
    qa_db_query_sub(
            'INSERT INTO `qa_version_stags`(`versionid`, `scriptid`, `stagid`)'
            . ' VALUES ($,$,$)', $versionid, $scriptid, $stagid);
}

function db_get_repoid_by_args($repo) {
    $result = qa_db_query_sub('SELECT `repoid` FROM `qa_repos` WHERE `git` = $ AND `file_path` = $ AND `comm` = $ AND `r_order` = $;'
            , $repo['git'], $repo['file'], $repo['comm'], $repo['order']);
    return qa_db_read_one_value($result, true);
}

function db_create_repo($repo) {
    qa_db_query_sub(
            'INSERT INTO `qa_repos`(`git`, `file_path`, `comm`, `r_order`)'
            . ' VALUES ($,$,$,$)'
            , $repo['git'], $repo['file'], $repo['comm'], $repo['order']);
    return qa_db_last_insert_id();
}

function db_add_version_repo_relation($scriptid, $versionid, $repoid) {
    qa_db_query_sub(
            'INSERT INTO `qa_version_repos`(`scriptid`, `versionid`, `repoid`) '
            . ' VALUES ($,$,$)', $scriptid, $versionid, $repoid);
}

function db_add_user_points($userid, $add_points) {
    qa_db_query_sub('UPDATE qa_userpoints SET `bonus` = `bonus` + $ WHERE userid = $', $add_points, $userid);
}

function qa_db_set_script_last_version($scriptid, $versionid) {
    qa_db_query_sub(
            'UPDATE qa_scripts SET last_version = $ WHERE scriptid = $', $versionid, $scriptid);
}

function qa_db_get_script($scriptid) {
    $result = qa_db_query_sub('SELECT scriptid, userid, last_version, score, run_count, accessibility FROM'
            . '  qa_scripts WHERE scriptid = $', $scriptid);
    return qa_db_read_one_assoc($result, true);
}

function qa_db_get_version($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT name ,`versionid`, `scriptid`, `created`, `editorid`, `description`, `example`, `commitmsg` FROM'
            . ' `qa_versions` WHERE `scriptid` =$ AND `versionid` = $', $scriptid, $versionid);
    return qa_db_read_one_assoc($result, true);
}

function qa_db_get_stags($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT stag FROM qa_version_stags JOIN qa_stags ON'
            . ' qa_version_stags.stagid = qa_stags.stagid WHERE'
            . ' scriptid = $ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_all_assoc($result);
}

function qa_db_get_repos($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT git, file_path AS "file", comm, r_order AS "order" FROM'
            . ' qa_version_repos JOIN qa_repos ON qa_version_repos.repoid = qa_repos.repoid WHERE'
            . ' scriptid = $ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_all_assoc($result);
}

function init_db_tables($table_list) {
    
}
