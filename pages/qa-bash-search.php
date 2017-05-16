<?php

/*
 * Author: Martin Znamenacek
 * Description: Controller for search page.
 */

class qa_bash_search_page {

    private $urltoroot;
    private $directory;

    public function load_module($directory, $urltoroot) {
        $this->urltoroot = $urltoroot;
        $this->directory = $directory;
    }

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'script_search';
    }

    function process_request($request) {
        require_once __DIR__ . '/../app/qa-bash-base.php';
        $qa_content = qa_content_prepare();
        $start = qa_get_start();
        $q = @qa_get('q');

        if (!strlen($q)) {
            $qa_content['error'] = qa_lang_html('main/search_explanation');
            return $qa_content;
        }
        $qa_content['title'] = qa_lang_html_sub('plugin_bash/search_title_x', $q);
        $qa_content['search']['value'] = @qa_get('q');
        
        $pagesize = qa_opt('page_size_tag_qs');
        $scripts = search_scripts($q, $start, $pagesize);

        $qa_content['s_list']['items'] = $scripts;
        if (!count($scripts)) {
            $qa_content['title'] = qa_lang_html_sub('plugin_bash/search_title_no_x', $q);
        } else {
            foreach ($qa_content['s_list']['items'] as &$item) {
                $item['state'] = 'item';
                $item['vote_up'] = qa_lang_html('plugin_bash/list_script_no_vote');
                $item['vote_down'] = qa_lang_html('plugin_bash/list_script_no_vote');
            }
        }
        $qa_content['page_links'] = qa_html_page_links(qa_request(), $start, $pagesize, count($scripts), qa_opt('pages_prev_next'));

        if (empty($qa_content['page_links'])) {
            $qa_content['suggest_next'] = $this->suggest_html();
        }
        return $qa_content;
    }

    function suggest_html() {
        return strtr(
                qa_lang_html('plugin_bash/stag_suggest'), array(
            '^1' => '<a href="' . qa_path_html('scripts') . '">',
            '^2' => '</a>',
            '^3' => '<a href="' . qa_path_html('stags') . '">',
            '^4' => '</a>',
        ));
    }

}
