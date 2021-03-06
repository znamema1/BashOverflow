<?php

/*
 * Author: Martin Znamenacek
 * Description: Functions for DB requests.
 */

/*
 * Returns owner of the script.
 */
function db_get_script_owner($scriptid) {
    $result = qa_db_query_sub('SELECT userid FROM ^scripts WHERE scriptid = #', $scriptid);
    return qa_db_read_one_value($result, true);
}

/*
 * Updates scripts accessibility.
 */
function db_update_script_access($scriptid, $acc) {
    qa_db_query_sub('UPDATE ^scripts SET accessibility = $ WHERE scriptid = #', $acc, $scriptid);
}

/*
 * Creates a new script in the db.
 */
function db_create_script($userid) {
    qa_db_query_sub(
            'INSERT INTO ^scripts(userid, last_version, score, run_count, accessibility)'
            . ' VALUES ($,1,0,0,$)', $userid, 'A');

    return qa_db_last_insert_id();
}

/*
 * Creates a new version in the db.
 */
function db_create_version($userid, $scriptid, $script, $versionid = 1) {
    qa_db_query_sub(
            'INSERT INTO ^versions(versionid, scriptid, created, editorid, description, example, commitmsg, name)'
            . ' VALUES ($,$,NOW(),$,$,$,$,$)', $versionid, $scriptid, $userid, $script['desc'], $script['example_data'], @$script['comm_msg'], $script['name']);
    return $versionid;
}

/*
 * Returns stagid searched by stag.
 */
function db_get_stagid_by_stag($stag) {
    $result = qa_db_query_sub('SELECT stagid FROM ^stags WHERE stag =$', $stag);
    return qa_db_read_one_value($result, true);
}

/*
 * Creates a new stag in the db.
 */
function db_create_stag($stag) {
    qa_db_query_sub(
            'INSERT INTO ^stags(stag) VALUES ($)', $stag);
    return qa_db_last_insert_id();
}

/*
 * Creates db relation between version and related stags
 */
function db_add_version_stag_relation($scriptid, $versionid, $stagid) {
    qa_db_query_sub(
            'INSERT INTO ^version_stags(versionid, scriptid, stagid)'
            . ' VALUES ($,$,$)', $versionid, $scriptid, $stagid);
}

/*
 * Returns repoid searched by all informations about repo.
 */
function db_get_repoid_by_args($repo) {
    $result = qa_db_query_sub('SELECT repoid FROM ^repos WHERE git = $ AND file_path = $ AND comm = $ AND r_order = $;'
            , $repo['git'], $repo['file'], $repo['comm'], $repo['order']);
    return qa_db_read_one_value($result, true);
}

/*
 * Creates a new repo in the db.
 */
function db_create_repo($repo) {
    qa_db_query_sub(
            'INSERT INTO ^repos(git, file_path, comm, r_order)'
            . ' VALUES ($,$,$,$)'
            , $repo['git'], $repo['file'], $repo['comm'], $repo['order']);
    return qa_db_last_insert_id();
}

/*
 * Creates db relation between version and related repos
 */
function db_add_version_repo_relation($scriptid, $versionid, $repoid) {
    qa_db_query_sub(
            'INSERT INTO ^version_repos(scriptid, versionid, repoid) '
            . ' VALUES ($,$,$)', $scriptid, $versionid, $repoid);
}

/*
 * Adds points to he user.
 */
function db_add_user_points($userid, $add_points) {
    qa_db_query_sub('UPDATE ^userpoints SET bonus = bonus + $ WHERE userid = $', $add_points, $userid);
}

/*
 * Sets scripts new last versionid.
 */
function db_set_script_last_version($scriptid, $versionid) {
    qa_db_query_sub(
            'UPDATE ^scripts SET last_version = $ WHERE scriptid = $', $versionid, $scriptid);
}

/*
 * Returns informations about script.
 */
function db_get_script($scriptid) {
    $result = qa_db_query_sub('SELECT scriptid, userid, last_version, score, run_count, accessibility  FROM'
            . '  ^scripts WHERE scriptid = $', $scriptid);
    return qa_db_read_one_assoc($result, true);
}

/*
 * Returns verions informations.
 */
function db_get_version($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT name ,versionid, scriptid, UNIX_TIMESTAMP(created) AS created, editorid, description, example, commitmsg FROM'
            . ' ^versions WHERE scriptid =$ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_one_assoc($result, true);
}

/*
 * Returns informations baout selected version.
 */
function db_get_version_overview($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT name , UNIX_TIMESTAMP(created) AS created, editorid FROM'
            . ' ^versions WHERE scriptid =$ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_one_assoc($result, true);
}

/*
 * Returns stags related to the version of the script 
 */
function db_get_script_stags($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT stag FROM ^version_stags JOIN ^stags ON'
            . ' ^version_stags.stagid = ^stags.stagid WHERE'
            . ' scriptid = $ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_all_assoc($result);
}

/*
 * Returns repos related to the version of the script 
 */
function db_get_repos($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT git, file_path AS "file", comm, r_order AS "order" FROM'
            . ' ^version_repos JOIN ^repos ON ^version_repos.repoid = ^repos.repoid WHERE'
            . ' scriptid = $ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_all_assoc($result);
}

/*
 * Return count of all scripts in the database.
 */
function db_get_count_all_scripts() {
    $result = qa_db_query_sub('SELECT COUNT(scriptid) FROM ^scripts');
    return qa_db_read_one_value($result);
}

/*
 * Return count of users scripts.
 */
function db_get_count_all_my_scripts($userid) {
    $result = qa_db_query_sub('SELECT COUNT(scriptid) FROM ^scripts WHERE userid = #', $userid);
    return qa_db_read_one_value($result);
}

function db_get_stag_count() {
    $result = qa_db_query_sub('SELECT COUNT(DISTINCT(v.stagid)) FROM ^scripts s JOIN ^version_stags v ON s.scriptid = v.scriptid AND s.last_version = v.versionid');
    return qa_db_read_one_value($result);
}

/*
 * Returns all unique stags, and counts their duplicites. 
 */
function db_get_stags($start, $count) {
    $result = qa_db_query_sub('SELECT s.stag, T.count '
            . 'FROM ^stags s JOIN (SELECT X.stagid, COUNT(*) count FROM (Select v.stagid FROM ^scripts s JOIN ^version_stags v ON s.scriptid = v.scriptid AND s.last_version = v.versionid) AS X GROUP BY stagid) AS T ON s.stagid = T.stagid '
            . 'ORDER BY T.count DESC LIMIT #,#', $start, $count);
    return qa_db_read_all_assoc($result);
}

/*
 * Returns scriptids and versionids searched by stag.
 */
function db_get_versionid_and_scriptid_by_stag($stag, $start, $count) {
    $result = qa_db_query_sub('SELECT X.versionid, X.scriptid FROM '
            . '^stags t JOIN (SELECT v.* FROM ^scripts s JOIN ^version_stags v ON s.scriptid = v.scriptid AND s.last_version = v.versionid) AS X ON t.stagid = X.stagid JOIN ^versions vr ON X.versionid = vr.versionid AND X.scriptid = vr.scriptid '
            . 'WHERE t.stag = $ ORDER BY vr.created DESC LIMIT #,#', $stag, $start, $count);
    return qa_db_read_all_assoc($result);
}

/*
 * Returns scripts sorted by sort field (votes, runs).
 */
function db_get_scripts_by_sort($sort, $start, $count) {
    $result = qa_db_query_sub('SELECT * FROM ^scripts ORDER BY ' . $sort . ' DESC LIMIT #,#', $start, $count);
    return qa_db_read_all_assoc($result);
}

/*
 * Returns all users scripts.
 */
function db_get_my_scripts($userid) {
    $result = qa_db_query_sub('SELECT * FROM ^scripts WHERE userid = #', $userid);
    return qa_db_read_all_assoc($result);
}

/*
 * Returns all scripts.
 */
function db_get_scripts() {
    $result = qa_db_query_sub('SELECT * FROM ^scripts;');
    return qa_db_read_all_assoc($result);
}

/*
 * Returns scripts searched by phrase
 */
function db_get_scripts_by_q($q, $start, $count) {
    $result = qa_db_query_sub('Select s.scriptid, v.versionid  FROM '
            . '^scripts s JOIN ^versions v ON s.scriptid = v.scriptid AND s.last_version = v.versionid '
            . 'WHERE MATCH(v.name, v.description) AGAINST($ IN BOOLEAN MODE) '
            . 'ORDER BY MATCH(v.name, v.description) AGAINST($ IN BOOLEAN MODE) LIMIT #,#', $q, $q, $start, $count);

    return qa_db_read_all_assoc($result);
}

/*
 * Gets user vote on selected script
 */
function db_get_user_vote($userid, $scriptid) {
    $result = qa_db_query_sub('SELECT vote FROM ^svotes '
            . 'WHERE userid = # AND scriptid = #', $userid, $scriptid);
    return qa_db_read_one_value($result, true);
}

/*
 * Deletes vote.
 */
function db_remove_vote($userid, $scriptid) {
    qa_db_query_sub('DELETE FROM ^svotes '
            . 'WHERE userid = # AND scriptid = #', $userid, $scriptid);
}

/*
 * Creates new vote.
 */
function db_create_vote($userid, $scriptid, $value) {
    qa_db_query_sub('INSERT INTO ^svotes(userid, scriptid, vote) '
            . 'VALUES (#,#,#)', $userid, $scriptid, $value);
}

function db_get_script_score($scriptid) {
    $result = qa_db_query_sub('SELECT score FROM ^scripts '
            . 'WHERE scriptid = #', $scriptid);
    return qa_db_read_one_value($result);
}

/*
 * Updates scripts score.
 */
function db_update_score($scriptid, $value) {
    qa_db_query_sub('UPDATE ^scripts SET score = score + # WHERE scriptid = #', $value, $scriptid);
}

/*
 * Increment count od runs of the selected script.
 */
function db_update_run_count($scriptid) {
    qa_db_query_sub('UPDATE ^scripts SET run_count = run_count + 1 WHERE scriptid = #', $scriptid);
}

function db_get_count_user_script($userid) {
    $result = qa_db_query_sub('SELECT COUNT(scriptid) FROM ^scripts WHERE userid = #', $userid);
    return qa_db_read_one_value($result);
}

function db_get_count_user_edited_script($userid) {
    $result = qa_db_query_sub('SELECT COUNT(v.scriptid) FROM ^scripts s JOIN ^versions v ON s.scriptid = v.scriptid '
            . 'WHERE v.editorid != s.userid AND v.editorid = #', $userid);
    return qa_db_read_one_value($result);
}

function db_get_count_user_votedon_up($userid) {
    $result = qa_db_query_sub('SELECT COUNT(scriptid) FROM ^svotes WHERE userid = # AND vote > 0', $userid);
    return qa_db_read_one_value($result);
}

function db_get_count_user_votedon_down($userid) {
    $result = qa_db_query_sub('SELECT COUNT(scriptid) FROM ^svotes WHERE userid = # AND vote < 0', $userid);
    return qa_db_read_one_value($result);
}

function db_get_count_user_votedgot_up($userid) {
    $result = qa_db_query_sub('SELECT COUNT(v.scriptid) FROM ^svotes v JOIN ^scripts s ON s.scriptid = v.scriptid '
            . 'WHERE s.userid = # AND vote > 0', $userid);
    return qa_db_read_one_value($result);
}

function db_get_count_user_votedgot_down($userid) {
    $result = qa_db_query_sub('SELECT COUNT(v.scriptid) FROM ^svotes v JOIN ^scripts s ON s.scriptid = v.scriptid '
            . 'WHERE s.userid = # AND vote < 0', $userid);
    return qa_db_read_one_value($result);
}

function init_db_tables($table_list) {
    if (in_array('qa_scripts', $table_list)) {
        return null;
    }

    require_once QA_INCLUDE_DIR . 'app/users.php';

    return array(
        'CREATE TABLE ^scripts (
    scriptid INT NOT NULL AUTO_INCREMENT,
    userid ' . qa_get_mysql_user_column_type() . ' NOT NULL,
    last_version INT NULL,
    score INT NOT NULL DEFAULT 0,
    run_count INT NOT NULL DEFAULT 0,
    accessibility CHAR(1) NOT NULL,
    PRIMARY KEY (scriptid)
    );
    ',
        'CREATE TABLE ^versions (
    versionid INT NOT NULL AUTO_INCREMENT,
    scriptid INT NOT NULL,
    created DATETIME NOT NULL,
    editorid INT(10) UNSIGNED NOT NULL,
    description VARCHAR(3000) NOT NULL,
    example VARCHAR(500) NOT NULL,
    commitmsg VARCHAR(150) NULL,
    name VARCHAR(150) NOT NULL,
    PRIMARY KEY (versionid, scriptid)
    );
    ',
        'CREATE TABLE ^svotes (
    userid ' . qa_get_mysql_user_column_type() . ' NOT NULL,
    scriptid INT NOT NULL,
    vote TINYINT NOT NULL,
    PRIMARY KEY (userid, scriptid)
    );
    ',
        'CREATE TABLE ^repos (
    repoid INT NOT NULL AUTO_INCREMENT,
    git VARCHAR(300) NOT NULL,
    file_path VARCHAR(400) NOT NULL,
    comm VARCHAR(100) NOT NULL,
    r_order INT NOT NULL,
    PRIMARY KEY (repoid)
    );
    ',
        'CREATE TABLE ^stags (
    stagid INT NOT NULL AUTO_INCREMENT,
    stag VARCHAR(100) NOT NULL,
    PRIMARY KEY (stagid)
    );
    ',
        'CREATE TABLE ^version_stags (
    versionid INT NOT NULL,
    scriptid INT NOT NULL,
    stagid INT NOT NULL,
    PRIMARY KEY (versionid, scriptid, stagid)
    );
    ',
        'CREATE TABLE ^version_repos (
    scriptid INT NOT NULL,
    versionid INT NOT NULL,
    repoid INT NOT NULL,
    PRIMARY KEY (scriptid, versionid, repoid)
    );
    ',
        'ALTER TABLE ^scripts ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    ',
        'ALTER TABLE ^versions ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    ',
        'ALTER TABLE ^svotes ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    ',
        'ALTER TABLE ^repos ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    ',
        'ALTER TABLE ^stags ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    ',
        'ALTER TABLE ^version_stags ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    ',
        'ALTER TABLE ^version_repos ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
    ',
        'ALTER TABLE ^scripts ADD FOREIGN KEY (userid) REFERENCES ^users (userid);
    ',
        'ALTER TABLE ^versions ADD FOREIGN KEY (scriptid) REFERENCES ^scripts (scriptid) ON DELETE CASCADE;
    ',
        'ALTER TABLE ^versions ADD FOREIGN KEY (editorid) REFERENCES ^users (userid);
    ',
        'ALTER TABLE ^svotes ADD FOREIGN KEY (userid) REFERENCES ^users (userid);
    ',
        'ALTER TABLE ^svotes ADD FOREIGN KEY (scriptid) REFERENCES ^scripts (scriptid);
    ',
        'ALTER TABLE ^version_stags ADD FOREIGN KEY (versionid) REFERENCES ^versions(versionid) ON DELETE CASCADE;
    ',
        'ALTER TABLE ^version_stags ADD FOREIGN KEY (scriptid) REFERENCES ^versions(scriptid) ON DELETE CASCADE;
    ',
        'ALTER TABLE ^version_stags ADD FOREIGN KEY (stagid) REFERENCES ^stags (stagid);
    ',
        'ALTER TABLE ^version_repos ADD FOREIGN KEY (versionid) REFERENCES ^versions(versionid) ON DELETE CASCADE;
    ',
        'ALTER TABLE ^version_repos ADD FOREIGN KEY (scriptid) REFERENCES ^versions(scriptid) ON DELETE CASCADE;
    ',
        'ALTER TABLE ^version_repos ADD FOREIGN KEY (repoid) REFERENCES ^repos (repoid);
    ',
        'ALTER TABLE ^versions ADD FULLTEXT search (name,description);'
    );
}
