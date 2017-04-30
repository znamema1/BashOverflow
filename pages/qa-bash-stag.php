<?php

class qa_bash_stag_page {

    private $urltoroot;
    private $directory;

    public function load_module($directory, $urltoroot) {
        $this->urltoroot = $urltoroot;
        $this->directory = $directory;
    }

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'stag';
    }

    function process_request($request) {
        require_once __DIR__ . '/../app/qa-bash-base.php';
        $parts = explode('/', $request);
        $tag = $parts[1];
        $start = qa_get_start();
        if (!isset($tag)) {
            qa_redirect('stags');
        }

        $qa_content = qa_content_prepare();
        $qa_content['title'] = qa_lang_html_sub('plugin_bash/stag_title_x', qa_html($tag));

        $pagesize = qa_opt('page_size_tag_qs');
        $scripts = get_scripts_by_stag($tag, $start, $pagesize);

        $qa_content['s_list']['items'] = $scripts;
        if (!count($scripts)) {
            $qa_content['s_list']['title'] = qa_lang_html('plugin_bash/stag_title_no');
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
