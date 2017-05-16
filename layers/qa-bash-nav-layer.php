<?php

/*
 * Author: Martin Znamenacek
 * Description: Layer which insert into application navigation links to script pages.
 */

class qa_html_theme_layer extends qa_html_theme_base {

    function doctype() {
        global $qa_request;

        $this->content['css_src'][] = 'https://fonts.googleapis.com/css?family=Roboto'; //sites font
        $this->content['css_src'][] = qa_path_html('/qa-plugin/bash-overflow/CSS/qa-bash-global.css');

        $this->override_main_navigation($qa_request);
        $this->create_sub_navigation($qa_request);

        qa_html_theme_base::doctype();
    }

    /*
     * Adds script links into main naigation bar
     */
    function override_main_navigation($qa_request) {
        $nav_scripts = array(
            'scripts' => array(
                'url' => qa_path_html('scripts'),
                'label' => qa_lang_html('plugin_bash/nav_scripts'),
        ));
        $nav_create_script = array(
            'create_script' => array(
                'url' => qa_path_html('create_script'),
                'label' => qa_lang_html('plugin_bash/nav_create_script'),
        ));
        // add 'scripts' link on the first position in the main navigation bar
        $this->content['navigation']['main'] = array_merge($nav_scripts, $this->content['navigation']['main']);
        // add 'create script' link on the last position in the main navigation bar
        $this->content['navigation']['main'] = array_merge($this->content['navigation']['main'], $nav_create_script);

        if ($qa_request == 'create_script') {
            $this->content['navigation']['main']['create_script']['selected'] = 1;
        }
    }

    /*
     * On selected pages inserts subnavigation
     */
    function create_sub_navigation($qa_request) {
        $this->create_list_page_subnavigation($qa_request);
        $this->create_tags_pages_subnavigation($qa_request);
        $this->create_tag_pages_subnavigation($qa_request);
        $this->create_search_pages_subnavigation($qa_request);
    }

    /*
     * On list page inserts subnavigation
     */
    function create_list_page_subnavigation($qa_request) {
        if (strpos($qa_request, 'scripts') === 0) {
            $sort = @qa_get('sort');
            $this->content['navigation']['sub'] = array(
                'new' => array(
                    'url' => qa_path_html('scripts'),
                    'label' => qa_lang_html('plugin_bash/nav_sub_scripts_recent'),
                    'selected' => (!isset($sort) || ($sort != 'votes' && $sort != 'runs') && $sort != 'mine'),
                ),
                'score' => array(
                    'url' => qa_path_html('scripts', array('sort' => 'votes')),
                    'label' => qa_lang_html('plugin_bash/nav_sub_scripts_votes'),
                    'selected' => $sort == 'votes',
                ),
                'run' => array(
                    'url' => qa_path_html('scripts', array('sort' => 'runs')),
                    'label' => qa_lang_html('plugin_bash/nav_sub_scripts_runs'),
                    'selected' => $sort == 'runs',
                ),
                'mine' => array(
                    'url' => qa_path_html('scripts', array('sort' => 'mine')),
                    'label' => qa_lang_html('plugin_bash/nav_sub_scripts_mine'),
                    'selected' => $sort == 'mine',
                ),
            );
            $this->content['navigation']['main']['scripts']['selected'] = 1;
        }
    }

    /*
     * On tags pages inserts subnavigation
     */
    function create_tags_pages_subnavigation($qa_request) {
        if ($qa_request == 'tags' || $qa_request == 'stags') {
            $this->content['navigation']['sub'] = array(
                'tags' => array(
                    'url' => qa_path_html('tags'),
                    'label' => qa_lang_html('plugin_bash/nav_sub_tags'),
                    'selected' => $qa_request == 'tags',
                ),
                'stags' => array(
                    'url' => qa_path_html('stags'),
                    'label' => qa_lang_html('plugin_bash/nav_sub_stags'),
                    'selected' => $qa_request == 'stags',
                ),
            );
            $this->content['navigation']['main']['tag']['selected'] = 1;
        }
    }

    /*
     * On tag pages inserts subnavigation
     */
    function create_tag_pages_subnavigation($qa_request) {
        if (strpos($qa_request, 'tag') === 0 || strpos($qa_request, 'stag') === 0) {
            $parts = explode("/", $qa_request);

            $this->content['navigation']['sub'] = array(
                'tag' => array(
                    'url' => qa_path_html('tag/' . @$parts[1]),
                    'label' => qa_lang_html('plugin_bash/nav_sub_tag'),
                    'selected' => strpos($qa_request, 'tag') === 0,
                ),
                'stag' => array(
                    'url' => qa_path_html('stag/' . @$parts[1]),
                    'label' => qa_lang_html('plugin_bash/nav_sub_stag'),
                    'selected' => strpos($qa_request, 'stag') === 0,
                ),
            );
            $this->content['navigation']['main']['tag']['selected'] = 1;
        }
    }

    /*
     * On search pages inserts subnavigation
     */
    function create_search_pages_subnavigation($qa_request) {
        if ($qa_request == 'search' || $qa_request == 'script_search') {
            $q = @qa_get('q');
            $this->content['navigation']['sub'] = array(
                'search' => array(
                    'url' => qa_path_html('search', array('q' => $q)),
                    'label' => qa_lang_html('plugin_bash/nav_sub_search_question'),
                    'selected' => $qa_request == 'search',
                ),
                'script_search' => array(
                    'url' => qa_path_html('script_search', array('q' => $q)),
                    'label' => qa_lang_html('plugin_bash/nav_sub_search_script'),
                    'selected' => $qa_request == 'script_search',
                ),
            );
        }
    }

}
