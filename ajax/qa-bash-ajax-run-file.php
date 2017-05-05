<?php

class qa_bash_ajax_run_page_file {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'ajax_run_page_file';
    }

    function process_request($request) {

        require_once __DIR__ . '/../app/qa-bash-base.php';
        $scriptid = qa_post_text('scriptid');
        $versionid = qa_post_text('versionid');
        $content = qa_post_text('content');
        $name = qa_post_text('fileName');

        $result = run_script($scriptid, $versionid, $content);

        if (!isset($result) || !isset($result['status'])) {
            $response = $this->get_error_response(qa_lang_html('plugin_bash/run_script_internal_error'));
        } elseif ($result['status'] == 'OK') {
            $response = $this->get_response($result['content']);
        } else {
            $response = $this->get_error_response($result['errorMessage']);
        }
        echo $response;
    }

    function get_error_response($err) {
        echo '<div class="qa-error">' . qa_html($err, true) . '</div>';
    }

    function get_response(&$content) {
        $themeclass = qa_load_theme_class(qa_get_site_theme(), null, null, null);
        $themeclass->initialize();

        $themeclass->form($this->generate_array($content), 1);
    }

    function generate_array(&$content) {
        return array(
            'style' => 'tall',
            'fields' => array(
                /*array(
                    'type' => 'textarea',
                    'rows' => 10,
                    'tags' => 'NAME="dataout" ID="dataout"',
                    'label' => qa_lang_html('plugin_bash/run_script_label_dataout'),
                    'value' => @$content,
                ),*/
                array(
                    'type' => 'static',
                    'label' => qa_lang_html('plugin_bash/run_script_vote'),
                ),
                array(
                    'type' => 'custom',
                    'label' => '<a id="outputdl" href="data:text/plain;charset=utf-8,' . @$content . '" type="text/plain" download="output.txt">'.qa_lang_html('plugin_bash/run_script_download_output').'</a>',
                )
            )
        );
    }

}
