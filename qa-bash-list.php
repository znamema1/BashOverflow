<?php

class qa_bash_list_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'scripts';
    }

    function process_request($request) {
        require_once 'qa-bash-base.php';
        $qa_content = qa_content_prepare();

        $start = qa_get_start();
        $sort = @qa_get('sort');
        $pagesize = qa_opt('page_size_qs');

        switch ($sort) {
            case 'votes': {
                    $selectsort = 'score';
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_vote');
                    break;
                }
            case 'runs': {
                    $selectsort = 'run_count';
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_run');
                    break;
                }
            case 'mine': {
                    $selectsort = null;
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_my');
                    break;
                }
            default: {
                    $selectsort = null;
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_recent');
                    break;
                }
        }
        if (isset($selectsort)) {
            $scripts = get_scripts_by_sort($selectsort, $start, $pagesize);
        } else {
            $scripts = get_scripts_by_date($sort == 'mine', $start, $pagesize);
        }

        $qa_content['s_list']['items'] = $scripts;
        if (!count($scripts)) {
            $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_no');
        }
        $qa_content['page_links'] = qa_html_page_links(qa_request(), $start, $pagesize, count($scripts), qa_opt('pages_prev_next'));

        if (empty($qa_content['page_links'])) {
            $qa_content['suggest_next'] = $this->suggest_html();
        }
        return $qa_content;
    }

    function suggest_html() {
        return strtr(
                qa_lang_html('plugin_bash/stags_suggest'), array(
            '^1' => '<a href="' . qa_path_html('scripts') . '">',
            '^2' => '</a>',
            '^3' => '<a href="' . qa_path_html('stags') . '">',
            '^4' => '</a>',
        ));
    }

}
