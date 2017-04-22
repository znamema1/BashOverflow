<?php

class qa_bash_run_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'run';
    }

    function process_request($request) {
        $parts = explode('/', $request);
        $script = @$parts[1];

        $qa_content = qa_content_prepare();
        $qa_content['title'] = qa_lang_html('plugin_bash/run_script_title') . ' ....jméno skriptu....';

        if (!isset($script)) {
            $qa_content['error'] = qa_lang_html('plugin_bash/run_script_error');
            return $qa_content;
        }





        if (qa_clicked('dorun')) {
            echo 'dorun<br>';
            require_once QA_PLUGIN_DIR . 'bash-overflow/test-debug.php';
            print_array_recursive($_FILES['filein'], '');
            echo "výpis souboru: <br>";
            $fp = fopen($_FILES['filein']['tmp_name'], 'rb'); // toto ukazuje problém s kódováním...
            while (($line = fgets($fp)) !== false) {
                echo "$line<br>";
            }
        }
        $qa_content['s_view']['what'] = 'created';
        $qa_content['s_view']['when'] = '2 minutes ago';
        $qa_content['s_view']['who'] = 'by martin';
        $qa_content['s_view']['score'] = 99;
        $qa_content['s_view']['score_label'] = qa_lang_html_sub_split('main/x_votes', '')['suffix'];
        $qa_content['s_view']['exec_count'] = 234;
        $qa_content['s_view']['desc'] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a scelerisque nisl. Sed gravida ligula odio, et accumsan velit convallis sit amet. Integer sed nulla sed leo bibendum sollicitudin. Nulla eu congue mauris. Suspendisse potenti. Suspendisse vestibulum fermentum libero id vehicula. Integer ullamcorper mi velit, ac pulvinar magna condimentum a. Etiam malesuada magna a enim mollis egestas. Nulla id sem commodo, consectetur ante in, consequat nisi. Nunc nisi ante, tempor a urna non, finibus eleifend metus. Morbi lorem augue, rutrum sit amet varius lacinia, varius vel nisi. Praesent malesuada sapien id odio gravida, sed ultrices nulla dapibus.";
        $qa_content['s_view']['tags'] = array('test', 'pokus', 'more');
        $qa_content['s_view']['version_label'] = qa_lang_html('plugin_bash/detail_script_version_label');
        $qa_content['s_view']['exec_label'] = qa_lang_html('plugin_bash/detail_script_exec_label');
        $qa_content['s_view']['vote_up'] = qa_lang_html('main/vote_up_popup');
        $qa_content['s_view']['vote_down'] = qa_lang_html('main/vote_down_popup');
        $qa_content['s_view']['versions'] = array('1.0', '2.0', '3.0', '4.0');

        $qa_content['form'] = array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '" enctype="multipart/form-data"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'textarea',
                    'rows' => 10,
                    'tags' => 'NAME="datain" ID="datain"',
                    'label' => qa_lang_html('plugin_bash/run_script_label_datain'),
                    'value' => 'Vzorová data se rovnou vloží jako vstup...',
                ),
                array(
                    'type' => 'static',
                    'label' => '<span>' . qa_lang_html('plugin_bash/run_script_label_filein') . ': ' . '</span><input name="filein" type="file">',
                ),
            ),
            'buttons' => array(
                array(
                    'tags' => 'NAME="dorun"',
                    'label' => qa_lang_html('plugin_bash/run_script_run_button'),
                ),
            ),
        );

        $qa_content['form2'] = array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'textarea',
                    'rows' => 10,
                    'tags' => 'NAME="dataout" ID="dataout"',
                    'label' => qa_lang_html('plugin_bash/run_script_label_dataout'),
                    'value' => 'toto se objeví až po spuštění skriptu',
                ),
                array(
                    'type' => 'static',
                    'label' => qa_lang_html('plugin_bash/run_script_vote'),
                ),
            ),
        );
        return $qa_content;
    }

}
