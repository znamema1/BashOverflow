<?php

class qa_bash_stags_page {

    private $urltoroot;
    private $directory;

    public function load_module($directory, $urltoroot) {
        $this->urltoroot = $urltoroot;
        $this->directory = $directory;
    }

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'stags';
    }

    function process_request($request) {
        require_once __DIR__ . '/../app/qa-bash-base.php';
        $start = qa_get_start();
        $pagesize = qa_opt('page_size_tags');
        $tagcount = db_get_stag_count();
        $populartags = get_popular_stags($start, $pagesize);

        $tagcount = db_get_stag_count();

        $qa_content = qa_content_prepare();
        $qa_content['title'] = qa_lang_html('plugin_bash/stags_title');

        $qa_content['ranking'] = array(
            'items' => array(),
            'rows' => ceil($pagesize / qa_opt('columns_tags')),
            'type' => 'tags'
        );

        if (count($populartags)) {
            $output = 0;
            foreach ($populartags as $word => $count) {
                $qa_content['ranking']['items'][] = array(
                    'label' => $this->stag_html($word),
                    'count' => number_format($count),
                );

                if (( ++$output) >= $pagesize)
                    break;
            }
        } else
            $qa_content['title'] = qa_lang_html('plugin_bash/stags_title_no');


        $qa_content['page_links'] = qa_html_page_links(qa_request(), $start, $pagesize, $tagcount, qa_opt('pages_prev_next'));

        if (empty($qa_content['page_links'])) {
            $qa_content['suggest_next'] = $this->suggest_html();
        }


        return $qa_content;
    }

    function stag_html($tag) {
        return '<a href="' . qa_path_html('stag/' . $tag) . '" class="qa-tag-link ">' . qa_html($tag) . '</a>';
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
