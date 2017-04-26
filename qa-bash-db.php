<?php

function db_create_script($userid) {
    qa_db_query_sub(
            'INSERT INTO `^scripts`(`userid`, `last_version`, `score`, `run_count`, `accessibility`)'
            . ' VALUES ($,1,0,0,$)', $userid, 'A');

    return qa_db_last_insert_id();
}

function db_create_version($userid, $scriptid, $script, $versionid = 1) {
    qa_db_query_sub(
            'INSERT INTO `^versions`(`versionid`, `scriptid`, `created`, `editorid`, `description`, `example`, `commitmsg`, `name`)'
            . ' VALUES ($,$,NOW(),$,$,$,$,$)', $versionid, $scriptid, $userid, $script['desc'], $script['example_data'], @$script['example_data'], $script['name']);
    return $versionid;
}

function db_get_stagid_by_stag($stag) {
    $result = qa_db_query_sub('SELECT `stagid` FROM `^stags` WHERE `stag` =$', $stag);
    return qa_db_read_one_value($result, true);
}

function db_create_stag($tag) {
    qa_db_query_sub(
            'INSERT INTO `^stags`(`stag`) VALUES ($)', $tag);
    return qa_db_last_insert_id();
}

function db_add_version_stag_relation($scriptid, $versionid, $stagid) {
    qa_db_query_sub(
            'INSERT INTO `^version_stags`(`versionid`, `scriptid`, `stagid`)'
            . ' VALUES ($,$,$)', $versionid, $scriptid, $stagid);
}

function db_get_repoid_by_args($repo) {
    $result = qa_db_query_sub('SELECT `repoid` FROM `^repos` WHERE `git` = $ AND `file_path` = $ AND `comm` = $ AND `r_order` = $;'
            , $repo['git'], $repo['file'], $repo['comm'], $repo['order']);
    return qa_db_read_one_value($result, true);
}

function db_create_repo($repo) {
    qa_db_query_sub(
            'INSERT INTO `^repos`(`git`, `file_path`, `comm`, `r_order`)'
            . ' VALUES ($,$,$,$)'
            , $repo['git'], $repo['file'], $repo['comm'], $repo['order']);
    return qa_db_last_insert_id();
}

function db_add_version_repo_relation($scriptid, $versionid, $repoid) {
    qa_db_query_sub(
            'INSERT INTO `^version_repos`(`scriptid`, `versionid`, `repoid`) '
            . ' VALUES ($,$,$)', $scriptid, $versionid, $repoid);
}

function db_add_user_points($userid, $add_points) {
    qa_db_query_sub('UPDATE ^userpoints SET `bonus` = `bonus` + $ WHERE userid = $', $add_points, $userid);
}

function qa_db_set_script_last_version($scriptid, $versionid) {
    qa_db_query_sub(
            'UPDATE ^scripts SET last_version = $ WHERE scriptid = $', $versionid, $scriptid);
}

function qa_db_get_script($scriptid) {
    $result = qa_db_query_sub('SELECT scriptid, userid, last_version, score, run_count, accessibility FROM'
            . '  ^scripts WHERE scriptid = $', $scriptid);
    return qa_db_read_one_assoc($result, true);
}

function qa_db_get_version($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT name ,`versionid`, `scriptid`, `created`, `editorid`, `description`, `example`, `commitmsg` FROM'
            . ' `^versions` WHERE `scriptid` =$ AND `versionid` = $', $scriptid, $versionid);
    return qa_db_read_one_assoc($result, true);
}

function qa_db_get_version_overview($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT name , `created`, `editorid` FROM'
            . ' `^versions` WHERE `scriptid` =$ AND `versionid` = $', $scriptid, $versionid);
    return qa_db_read_one_assoc($result, true);
}

function qa_db_get_stags($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT stag FROM ^version_stags JOIN ^stags ON'
            . ' ^version_stags.stagid = ^stags.stagid WHERE'
            . ' scriptid = $ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_all_assoc($result);
}

function qa_db_get_repos($scriptid, $versionid) {
    $result = qa_db_query_sub('SELECT git, file_path AS "file", comm, r_order AS "order" FROM'
            . ' qa_version_repos JOIN ^repos ON ^version_repos.repoid = ^repos.repoid WHERE'
            . ' scriptid = $ AND versionid = $', $scriptid, $versionid);
    return qa_db_read_all_assoc($result);
}

function get_stag_count() {
    $result = qa_db_query_sub('SELECT COUNT(stagid) FROM qa_scripts s JOIN qa_version_stags v ON s.scriptid = v.scriptid AND s.last_version = v.versionid;');
    return qa_db_read_one_value($result);
}

function get_stags($start, $count) {
    $result = qa_db_query_sub('SELECT s.stag, T.count '
            . 'FROM qa_stags s JOIN (SELECT X.stagid, COUNT(*) count FROM (Select v.stagid FROM qa_scripts s JOIN qa_version_stags v ON s.scriptid = v.scriptid AND s.last_version = v.versionid) AS X GROUP BY stagid) AS T ON s.stagid = T.stagid '
            . 'ORDER BY T.count DESC LIMIT #,#', $start, $count);
    return qa_db_read_all_assoc($result);
}

function get_versionid_and_scriptid_by_stag($stag, $start, $count) {
    $result = qa_db_query_sub('SELECT X.versionid, X.scriptid FROM '
            . 'qa_stags t JOIN (SELECT v.* FROM qa_scripts s JOIN qa_version_stags v ON s.scriptid = v.scriptid AND s.last_version = v.versionid) AS X ON t.stagid = X.stagid JOIN qa_versions vr ON X.versionid = vr.versionid AND X.scriptid = vr.scriptid '
            . 'WHERE t.stag = $ ORDER BY vr.created DESC LIMIT #,#', $stag, $start, $count);
    return qa_db_read_all_assoc($result);
}

function init_db_tables($table_list) {
    if (in_array('qa_scripts', $table_list)) {
        return null;
    }

    require_once QA_INCLUDE_DIR . 'app/users.php';

    return array(
        'CREATE TABLE `^scripts` (
  `scriptid` INT NOT NULL AUTO_INCREMENT,
  `userid` ' . qa_get_mysql_user_column_type() . ' NOT NULL,
  `last_version` INT NULL,
  `score` INT NOT NULL DEFAULT 0,
  `run_count` INT NOT NULL DEFAULT 0,
  `accessibility` CHAR(1) NOT NULL,
  PRIMARY KEY (`scriptid`)
);',
        'CREATE TABLE `^versions` (
  `versionid` INT NOT NULL AUTO_INCREMENT,
  `scriptid` INT NOT NULL,
  `created` DATETIME NOT NULL,
  `editorid` INT(10) UNSIGNED NOT NULL,
  `description` VARCHAR(3000) NOT NULL,
  `example` VARCHAR(500) NOT NULL,
  `commitmsg` VARCHAR(150) NULL,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`versionid`, `scriptid`)
);',
        'CREATE TABLE `^svotes` (
  `userid` ' . qa_get_mysql_user_column_type() . ' NOT NULL,
  `scriptid` INT NOT NULL,
  `vote` TINYINT NOT NULL,
  PRIMARY KEY (`userid`, `scriptid`)
);',
        'CREATE TABLE `^repos` (
  `repoid` INT NOT NULL AUTO_INCREMENT,
  `git` VARCHAR(300) NOT NULL,
  `file_path` VARCHAR(400) NOT NULL,
  `comm` VARCHAR(100) NOT NULL,
  `r_order` INT NOT NULL,
  PRIMARY KEY (`repoid`),
);',
        'CREATE TABLE `^stags` (
  `stagid` INT NOT NULL AUTO_INCREMENT,
  `stag` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`stagid`),
);',
        'CREATE TABLE `^version_stags` (
  `versionid` INT NOT NULL,
  `scriptid` INT NOT NULL,
  `stagid` INT NOT NULL,
  PRIMARY KEY (`versionid`, `scriptid`, `stagid`)
);',
        'CREATE TABLE `^version_repos` (
  `scriptid` INT NOT NULL,
  `versionid` INT NOT NULL,
  `repoid` INT NOT NULL,
  PRIMARY KEY (`scriptid`, `versionid`, `repoid`)
);',
        'ALTER TABLE `^scripts` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;',
        'ALTER TABLE `^versions`ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;',
        'ALTER TABLE `^svotes` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;',
        'ALTER TABLE `^repos` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;',
        'ALTER TABLE `^stags` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;',
        'ALTER TABLE `^version_stags` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;',
        'ALTER TABLE `^version_repos` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;',
        'ALTER TABLE `^scripts` ADD FOREIGN KEY (userid) REFERENCES `^users` (`userid`);',
        'ALTER TABLE `^versions`ADD FOREIGN KEY (scriptid) REFERENCES `^scripts` (`scriptid`);',
        'ALTER TABLE `^versions`ADD FOREIGN KEY (editorid) REFERENCES `^users` (`userid`);',
        'ALTER TABLE `^svotes` ADD FOREIGN KEY (userid) REFERENCES `^users` (`userid`);',
        'ALTER TABLE `^svotes` ADD FOREIGN KEY (scriptid) REFERENCES `^scripts` (`scriptid`);',
        'ALTER TABLE `^version_stags` ADD FOREIGN KEY (versionid) REFERENCES ^versions (versionid);',
        'ALTER TABLE `^version_stags` ADD FOREIGN KEY (scriptid) REFERENCES ^versions (scriptid);',
        'ALTER TABLE `^version_stags` ADD FOREIGN KEY (stagid) REFERENCES `^stags` (`stagid`);',
        'ALTER TABLE `^version_repos` ADD FOREIGN KEY (versionid) REFERENCES `^versions`(`versionid`);',
        'ALTER TABLE `^version_repos` ADD FOREIGN KEY (scriptid) REFERENCES `^versions`(`scriptid`);',
        'ALTER TABLE `^version_repos` ADD FOREIGN KEY (repoid) REFERENCES `^repos` (`repoid`)'
    );
}
