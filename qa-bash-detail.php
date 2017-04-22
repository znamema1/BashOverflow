<?php

class qa_bash_detail_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'script';
    }

    function process_request($request) {
        $qa_content = qa_content_prepare();
        $qa_content['title'] = ' ....jméno skriptu....';

        if (qa_clicked('dorun')) {
            qa_redirect('run/1');
        }
        if (qa_clicked('doedit')) {
            qa_redirect('edit_script' . '/1');
        }
        $qa_content['s_view']['score'] = 99;
        $qa_content['s_view']['desc'] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a scelerisque nisl. Sed gravida ligula odio, et accumsan velit convallis sit amet. Integer sed nulla sed leo bibendum sollicitudin. Nulla eu congue mauris. Suspendisse potenti. Suspendisse vestibulum fermentum libero id vehicula. Integer ullamcorper mi velit, ac pulvinar magna condimentum a. Etiam malesuada magna a enim mollis egestas. Nulla id sem commodo, consectetur ante in, consequat nisi. Nunc nisi ante, tempor a urna non, finibus eleifend metus. Morbi lorem augue, rutrum sit amet varius lacinia, varius vel nisi. Praesent malesuada sapien id odio gravida, sed ultrices nulla dapibus.";
        $qa_content['s_view']['tags'] = array('test', 'pokus', 'more');


        $qa_content['form'] = array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '" enctype="multipart/form-data"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'textarea',
                    'rows' => 10,
                    'tags' => 'NAME="exampledata" ID="exampledata" readonly',
                    'label' => qa_lang_html('plugin_bash/detail_script_example_data'),
                ),
            ),
            'buttons' => array(
                array(
                    'tags' => 'NAME="dorun" ',
                    'label' => qa_lang_html('plugin_bash/detail_script_run_button'),
                ), array(
                    'tags' => 'NAME="doedit"',
                    'label' => qa_lang_html('plugin_bash/detail_script_edit_button'),
                ),
            ),
        );
        return $qa_content;
    }

}
