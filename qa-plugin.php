<?php

/*
  Plugin Name: BashOverflow plugin
  Plugin URI:
  Plugin Description: Extends the functionality of Q2A by script managing.
  Plugin Version: 0.1
  Plugin Date: 2017-04-16
  Plugin Author: Martin Znamenáček
  Plugin Author URI:
  Plugin License: GPLv2
  Plugin Minimum Question2Answer Version: 1.7
  Plugin Update Check URI:
 */

if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
    header('Location: ../../');
    exit;
}
qa_register_plugin_module(
        'page', // type of module
        'qa-bash-create.php', // PHP file containing module class
        'qa_bash_create_page', // name of module class
        'Create script page' // human-readable name of module
);
qa_register_plugin_module(
        'page', // type of module
        'qa-bash-detail.php', // PHP file containing module class
        'qa_bash_detail_page', // name of module class
        'Detail of script page' // human-readable name of module
);
qa_register_plugin_module(
        'page', // type of module
        'qa-bash-run.php', // PHP file containing module class
        'qa_bash_run_page', // name of module class
        'Run script page' // human-readable name of module
);
qa_register_plugin_module(
        'page', // type of module
        'qa-bash-list.php', // PHP file containing module class
        'qa_bash_list_page', // name of module class
        'List of scripts page' // human-readable name of module
);

qa_register_plugin_phrases(
        'qa-bash-lang-*.php', // pattern for language files
        'plugin_bash' // prefix to retrieve phrases
);

qa_register_plugin_layer(
        'qa-bash-layer.php', // PHP file containing layer
        'layer hack' // human-readable name of layer
);
