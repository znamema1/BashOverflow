<?php

class qa_bash_run_page {

    private $urltoroot;
    private $directory;
    private $afterrun = false;

    public function load_module($directory, $urltoroot) {
        $this->urltoroot = $urltoroot;
        $this->directory = $directory;
    }

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'run';
    }

    function process_request($request) {
        require_once $this->directory . 'qa-bash-base.php';
        require_once $this->directory . 'qa-bash-s-view.php';

        $parts = explode('/', $request);
        $scriptid = @$parts[1];
        $version = @qa_get('ver');

        if (qa_clicked('version')) {
            qa_redirect($request, array("ver" => qa_post_text('version')));
        }

        $qa_content = qa_content_prepare();
        $qa_content['script_src'][] = $this->urltoroot . 'qa-bash-script-run.js';
        $qa_content['script_src'][] = $this->urltoroot . 'qa-bash-vote.js';

        if (!isset($scriptid)) {
            $qa_content['error'] = qa_lang_html('main/page_not_found');
            return $qa_content;
        }

        $script = get_script($scriptid, $version);

        if (!isset($script)) {
            $qa_content['error'] = qa_lang_html('plugin_bash/run_script_error');
            return $qa_content;
        }

        $qa_content['title'] = qa_html($script['name']);

        if (qa_clicked('dorun')) {
            $this->afterrun = true;
//            echo 'dorun<br>';
//            require_once QA_PLUGIN_DIR . 'bash-overflow/test-debug.php';
//            print_array_recursive($_FILES['filein'], '');
//            echo "výpis souboru: <br>";
//            $fp = fopen($_FILES['filein']['tmp_name'], 'rb'); // toto ukazuje problém s kódováním...
//            while (($line = fgets($fp)) !== false) {
//                echo "$line<br>";
//            }
        }
        $qa_content['s_view'] = generate_s_view_content($script);

        $qa_content['form'] = array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '" enctype="multipart/form-data"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'textarea',
                    'rows' => 10,
                    'tags' => 'NAME="datain" ID="datain"',
                    'label' => qa_lang_html('plugin_bash/run_script_label_datain'),
                    'value' => qa_html(@$script['example_data']),
                ),
                array(
                    'type' => 'static',
                    'label' => '<span>' . qa_lang_html('plugin_bash/run_script_label_filein') . ': ' . '</span><input name="filein" id="filein" type="file">',
                ),
            ),
            'buttons' => array(
                array(
                    'tags' => 'type="button" NAME="dorun" onclick="handleInput(this);"',
                    'label' => qa_lang_html('plugin_bash/run_script_run_button'),
                ),
            ),
        );
        if ($this->afterrun) {
            $qa_content['form2'] = array(
                'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '"',
                'style' => 'tall',
                'fields' => array(
                    array(
                        'type' => 'textarea',
                        'rows' => 10,
                        'tags' => 'NAME="dataout" ID="dataout"',
                        'label' => qa_lang_html('plugin_bash/run_script_label_dataout'),
                        'value' => qa_html('toto se objeví až po spuštění skriptu'),
                    ),
                    array(
                        'type' => 'static',
                        'label' => qa_lang_html('plugin_bash/run_script_vote'),
                    ),
                ),
            );
        }
        return $qa_content;
    }

}
