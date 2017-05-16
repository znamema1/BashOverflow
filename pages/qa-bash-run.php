<?php

/*
 * Author: Martin Znamenacek
 * Description: Controller for run page.
 */

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
        require_once __DIR__ . '/../app/qa-bash-base.php';
        require_once __DIR__ . '/../app/qa-bash-s-view.php';

        $parts = explode('/', $request);
        $scriptid = @$parts[1];
        $version = @qa_get('ver');

        if (qa_clicked('version')) { // version change
            qa_redirect($request, array("ver" => qa_post_text('version')));
        }

        $qa_content = qa_content_prepare();
        
        if (!isset($scriptid)) { // no script to run
            $qa_content['error'] = qa_lang_html('main/page_not_found');
            return $qa_content;
        }
        
        $script = get_script($scriptid, $version); // script to run
        

        if (!isset($script)) { // script does not exists
            $qa_content['error'] = qa_lang_html('plugin_bash/run_script_error');
            return $qa_content;
        }
        
        $this->inicialize_js($qa_content, $scriptid, $script['selected_version']);

        $qa_content['title'] = '<a href="../script/' . $scriptid . '">' . qa_html($script['name']) . '</a>'; // link to script detail

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
                    'label' => '<span>' . qa_lang_html('plugin_bash/run_script_label_filein') . ': ' . '</span><input name="filein" id="filein" type="file" accept="text/plain">',
                ),
            ),
            'buttons' => array(
                array(
                    'tags' => 'type="button" NAME="dorun" onclick="handleInput(this);"',
                    'label' => qa_lang_html('plugin_bash/run_script_run_button'),
                ),
            ),
        );
        return $qa_content;
    }

    /*
     * Inicializes JS code and variables
     */
    function inicialize_js(&$qa_content, $scriptid, $selected_version) {
        $qa_content['script_src'][] = $this->urltoroot . '/JS/qa-bash-run.js';
        $qa_content['script_src'][] = $this->urltoroot . '/JS/qa-bash-vote.js';
        $qa_content['script_var']['max_file_size'] = 10 * 1024 * 1024;
        $qa_content['script_var']['file_type'] = 'text/plain';
        $qa_content['script_var']['err_nodata'] = qa_lang_html('plugin_bash/run_script_error_nodata');
        $qa_content['script_var']['err_send'] = qa_lang_html('plugin_bash/run_script_error_send');
        $qa_content['script_var']['err_run'] = qa_lang_html('plugin_bash/run_script_error_run');
        $qa_content['script_var']['err_send'] = qa_lang_html('plugin_bash/run_script_error_send');
        $qa_content['script_var']['err_file_type_title'] = qa_lang_html('plugin_bash/run_script_error_type_title');
        $qa_content['script_var']['err_file_type_msg'] = strtr(qa_lang_html('plugin_bash/run_script_error_type_msg'), array('^1' => 'text/plain'));
        $qa_content['script_var']['err_file_size_title'] = qa_lang_html('plugin_bash/run_script_error_size_title');
        $qa_content['script_var']['err_file_size_msg'] = qa_lang_html('plugin_bash/run_script_error_size_msg');
        
        $qa_content['script_var']['script_id'] = $scriptid;
        $qa_content['script_var']['version_id'] = $selected_version;
    }

}
