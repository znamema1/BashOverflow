<?php

/*
 * Author: Martin Znamenacek
 * Description: Controller for detail page.
 */

class qa_bash_detail_page {

    private $urltoroot;
    private $directory;

    public function load_module($directory, $urltoroot) {
        $this->urltoroot = $urltoroot;
        $this->directory = $directory;
    }

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'script';
    }

    function process_request($request) {
        require_once __DIR__ . '/../app/qa-bash-base.php';
        require_once __DIR__ . '/../app/qa-bash-s-view.php';

        $parts = explode('/', $request);
        $scriptid = @$parts[1];
        $version = @qa_get('ver');
        $userid = qa_get_logged_in_userid();

        $qa_content = qa_content_prepare();


        if (!isset($scriptid)) { // no script to view
            $qa_content['error'] = qa_lang_html('main/page_not_found');
            return $qa_content;
        }
        // JS init
        $qa_content['script_src'][] = $this->urltoroot . 'JS/qa-bash-vote.js';
        $qa_content['css_src'][] = $this->urltoroot . '/CSS/qa-bash-create.css';

        if (qa_clicked('version')) { // version change
            qa_redirect($request, array("ver" => qa_post_text('version')));
        }
        if (qa_clicked('doprivate')) { // make this script private
            lock_script($scriptid, $userid);
        }
        if (qa_clicked('dopublic')) { // make this script public
            unlock_script($scriptid, $userid);
        }
        if (qa_clicked('dorun')) { // go to run page
            qa_redirect('run/' . $scriptid, (isset($version) ? array("ver" => $version) : null));
        }
        if (qa_clicked('doedit')) { // go to edit page
            qa_redirect('edit_script/' . $scriptid);
        }

        $script = get_script($scriptid, $version);

        if (!isset($script)) { // script does not exists
            $qa_content['error'] = qa_lang_html('plugin_bash/detail_script_no_script_error');;
            return $qa_content;
        }

        $qa_content['title'] = qa_html($script['name']);
        $qa_content['s_view'] = generate_s_view_content($script);

        $qa_content['form'] = array( // scripts form
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '" enctype="multipart/form-data"',
            'style' => 'wide',
            'title' => qa_lang_html('plugin_bash/nav_scripts'),
        );
        
        
        $qa_content['form2'] = array( 
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '" enctype="multipart/form-data"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'textarea',
                    'rows' => 10,
                    'tags' => 'NAME="dataexample" ID="dataexample" readonly',
                    'label' => qa_lang_html('plugin_bash/detail_script_example_data'),
                    'value' => qa_html($script['example_data']),
                ),
            ),
            'buttons' => array(
                array(
                    'tags' => 'NAME="dorun" ',
                    'label' => qa_lang_html('plugin_bash/detail_script_run_button'),
                    'popup' => qa_lang_html('plugin_bash/detail_script_run_button'),
                ),
            ),
        );
        $qa_content['form']['fields'] = $this->repos_to_fields($script['repos']);

        if (isset($userid)) { // is user logged in
            $qa_content['form2']['buttons'][] = array(
                'tags' => 'NAME="doedit"',
                'label' => qa_lang_html('plugin_bash/detail_script_edit_button'),
                'popup' => qa_lang_html('plugin_bash/detail_script_edit_button'),
            );
            if (!$script['is_public'] && $userid != $script['author']) {
                $index = count($qa_content['form2']['buttons']);
                $qa_content['form2']['buttons'][$index - 1]['tags'] = 'NAME="doedit2" type="button" class="qa-form-tall-button qa-form-tall-button-1 qa-btn-disabled"';
                $qa_content['form2']['buttons'][$index - 1]['popup'] = qa_lang_html('plugin_bash/detail_script_disabled_edit_button');
            }
        }

        if ($userid == $script['author']) { // is user author of the script
            if ($script['is_public']) {
                $qa_content['form2']['buttons'][] = array(
                    'tags' => 'NAME="doprivate" class= "qa-form-light-button qa-form-light-button-close"',
                    'label' => qa_lang_html('plugin_bash/detail_script_private_button'),
                    'popup' => qa_lang_html('plugin_bash/detail_script_private_button'),
                );
            } else {
                $qa_content['form2']['buttons'][] = array(
                    'tags' => 'NAME="dopublic" class= "qa-form-light-button qa-form-light-button-reopen"',
                    'label' => qa_lang_html('plugin_bash/detail_script_public_button'),
                    'popup' => qa_lang_html('plugin_bash/detail_script_public_button'),
                );
            }
        }
        return $qa_content;
    }

    /*
     * Generates fields configuration from scripts data
     */
    function repos_to_fields($data) {
        $ret = array();
        $counter = 1;
        if (isset($data)) {
            foreach ($data as $script) {
                $ret[] = array(
                    'type' => 'custom',
                    'label' => '<strong>' . qa_lang_html_sub('plugin_bash/detail_script_script_label_for_x', qa_html($counter)) . '</strong>',
                );
                $ret[] = array(
                    'type' => 'static',
                    'tags' => 'NAME="scriptgit' . $counter . '" ID="scriptgit' . $counter . '"',
                    'label' => qa_lang_html('plugin_bash/create_script_git'),
                    'value' => '<a href ="' . qa_html($script['git']) . '">' . qa_html($script['git']) . '</a>',
                );
                $ret[] = array(
                    'type' => 'static',
                    'tags' => 'NAME="scriptfile' . $counter . '" ID="scriptfile' . $counter . '"',
                    'label' => qa_lang_html('plugin_bash/create_script_file'),
                    'value' => qa_html($script['file']),
                );
                $ret[] = array(
                    'type' => 'static',
                    'tags' => 'NAME="scriptcomm' . $counter . '" ID="scriptcomm' . $counter . '"',
                    'label' => qa_lang_html('plugin_bash/create_script_comm'),
                    'value' => qa_html($script['comm']),
                );
                $counter++;
            }
        }
        return $ret;
    }

}
