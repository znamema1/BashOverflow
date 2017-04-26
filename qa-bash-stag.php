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
        $parts = explode('/', $request);
        $tag = $parts[1];
        if(!isset($tag)){
            qa_redirect('stags');
        }
        
        
        $qa_content = qa_content_prepare();
        $qa_content['title'] = qa_html('Tags: ...');

        $qa_content['s_list'] = array(
            "1" => array(
                'score' => 93,
                'score_label' => qa_lang_html_sub_split('main/x_votes', '')['suffix'],
                'exec_count' => 93,
                'exec_label' => qa_lang_html('plugin_bash/detail_script_exec_label'),
                'title' => 'Formátováč',
                'url' => '../script/1',
                'tags' => array('test', 'pokus', 'more'),
                'what' => 'created',
                'when' => '2 minutes ago',
                'who' => 'by martin',
            ),
            "2" => array(
                'score' => 13,
                'score_label' => qa_lang_html_sub_split('main/x_votes', '')['suffix'],
                'exec_count' => 1000,
                'exec_label' => qa_lang_html('plugin_bash/detail_script_exec_label'),
                'title' => 'Formátováč číslo 2, fakt supr čupr',
                'url' => '../script/2',
                'tags' => array('test', 'pokus', 'more', 'jou!'),
                'what' => 'created',
                'when' => '1 minutes ago',
                'who' => 'by martin',
            )
        );

        $qa_content['page_links']['label'] = qa_lang_html('main/page_label');
        $qa_content['page_links']['items'] = array(
            '1' => array(
                'label' => 1,
                'url' => './1',
                'type' => 'this',
                'ellipsis' => false,
            ),
            '2' => array('type' => 'ellipsis', 'ellipsis' => false),
            '3' => array(
                'label' => 3,
                'url' => './3',
                'type' => 'link',
                'ellipsis' => false,
            ),
            '4' => array(
                'label' => 4,
                'url' => './4',
                'ellipsis' => false,
                'type' => 'link',
            ),
            '5' => array('type' => 'ellipsis', 'ellipsis' => false),
            '6' => array(
                'label' => 6,
                'url' => './6',
                'ellipsis' => false,
                'type' => 'link',
            ),
        );

        return $qa_content;
    }

}
