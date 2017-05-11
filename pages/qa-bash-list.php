<?php

class qa_bash_list_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'scripts';
    }

    function process_request($request) {
        require_once __DIR__ . '/../app/qa-bash-base.php';
        $qa_content = qa_content_prepare();

        $start = qa_get_start();
        $sort = @qa_get('sort');
        $pagesize = qa_opt('page_size_qs');
        $userid = qa_get_logged_in_userid();

        switch ($sort) {
            case 'votes': {
                    $selectsort = 'score';
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_vote');
                    $count = get_count_all_scripts();
                    break;
                }
            case 'runs': {
                    $selectsort = 'run_count';
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_run');
                    $count = get_count_all_scripts();
                    break;
                }
            case 'mine': {
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_my');
                    if (!isset($userid)) {
                        $qa_content['error'] = qa_insert_login_links(qa_lang_html('plugin_bash/list_script_error_my'));
                        return $qa_content;
                    }
                    $count = get_count_all_my_scripts($userid);
                    break;
                }
            default: {
                    $qa_content['title'] = qa_lang_html('plugin_bash/list_script_title_recent');
                    $count = get_count_all_scripts();
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
        } else {
            foreach ($qa_content['s_list']['items'] as &$item) {
                $item['state'] = 'item';
                $item['vote_up'] = qa_lang_html('plugin_bash/list_script_no_vote');
                $item['vote_down'] = qa_lang_html('plugin_bash/list_script_no_vote');
            }
        }

        $qa_content['page_links'] = qa_html_page_links($request, $start, $pagesize, $count, qa_opt('pages_prev_next'), isset($sort) ? array('sort' => $sort) : null);

        if (empty($qa_content['page_links'])) {
            $qa_content['suggest_next'] = $this->suggest_html();
        }
        return $qa_content;
    }

    function suggest_html() {
        return strtr(
                qa_lang_html('plugin_bash/stags_suggest'), array(
            '^1' => '<a href="' . qa_path_html('create_script') . '">',
            '^2' => '</a>',
                )
        );
    }

}
