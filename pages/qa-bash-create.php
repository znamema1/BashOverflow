<?php

class qa_bash_create_page {

    private $urltoroot;
    private $directory;
    private $EDIT_MODE = 'edit_script';

    public function load_module($directory, $urltoroot) {
        $this->urltoroot = $urltoroot;
        $this->directory = $directory;
    }

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'create_script' || $parts[0] == 'edit_script';
    }

    function process_request($request) {
        require_once __DIR__ . '/../app/qa-bash-base.php';
        $parts = explode('/', $request);
        $mode = $parts[0];
        $userid = qa_get_logged_in_userid();
        $max_script_count = qa_opt('bashoverflow_max_linked_scripts');

        $qa_content = qa_content_prepare();
        if (!isset($userid)) {
            if ($mode === $this->EDIT_MODE) {
                $qa_content['error'] = qa_insert_login_links(qa_lang_html('plugin_bash/edit_script_userid_error'));
            } else {
                $qa_content['error'] = qa_insert_login_links(qa_lang_html('plugin_bash/create_script_userid_error'));
            }
            return $qa_content;
        }


        $qa_content['script_src'][] = $this->urltoroot . '/JS/qa-bash-create.js';
        $qa_content['css_src'][] = $this->urltoroot . '/CSS/qa-bash-create.css';
        $qa_content['script_var']['max_script_count'] = $max_script_count;

        if ($mode === $this->EDIT_MODE) {
            $qa_content['title'] = qa_lang_html('plugin_bash/edit_script_title');
            $scriptid = $parts[1];

            if (!isset($scriptid)) {
                qa_redirect('create_script');
            }

            $script = get_script($scriptid);

            if (!isset($script)) {
                $qa_content['error'] = qa_lang_html('plugin_bash/edit_script_error');
                return $qa_content;
            }

            if (!$script['is_public'] && $userid != $script['author']) {
                $qa_content['error'] = qa_lang_html('plugin_bash/edit_script_error_acc');
                return $qa_content;
            }

            if (!empty($script['tags'])) {
                $script['tags'] = implode(' ', $script['tags']);
            }
            unset($script['comm_msg']);
        } else {
            $qa_content['title'] = qa_lang_html('plugin_bash/create_script_title');
        }

        if (qa_clicked('dosave')) {
            $script = $this->load_script($max_script_count);

            $validation_ok = validate_script($script, $mode === $this->EDIT_MODE);

            if ($validation_ok) {
                if ($mode === $this->EDIT_MODE) {
                    update_script($scriptid, $script);
                } else {
                    $scriptid = create_script($script);
                }

                qa_redirect('script/' . $scriptid);
            } else {
                $qa_content['error'] = qa_lang_html('plugin_bash/create_script_error');
                $script['tags'] = implode(' ', $script['tags']);
            }
        } else if ($mode !== $this->EDIT_MODE) {
            $script['repos'] = array(
                array(
                    'git' => '',
                    'file' => '',
                    'comm' => '',
                ),
            );
        }

        $qa_content['form'] = $this->init_form($script);
        $qa_content['form']['fields'] = array_merge($qa_content['form']['fields'], $this->add_repo_fields($script['repos']));
        $qa_content['form']['fields'] = array_merge($qa_content['form']['fields'], $this->add_after_repo_fields($script, $mode));
        $qa_content['form']['fields'][] = $qa_content['focusid'] = 'scriptname';

        return $qa_content;
    }

    function generate_form($script) {
        $form = $this->init_form($script);
        $form['fields'] = array_merge($qa_content['form']['fields'], $this->add_repo_fields($script['repos']));
        $form['fields'] = array_merge($qa_content['form']['fields'], $this->add_after_repo_fields($script, $mode));
        $form['fields'][] = $qa_content['focusid'] = 'scriptname';
        return $form;
    }

    function init_form($script) {
        return array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'text',
                    'rows' => 1,
                    'tags' => 'NAME="scriptname" ID="scriptname"',
                    'label' => qa_lang_html('plugin_bash/create_script_name'),
                    'value' => qa_html(@$script['name']),
                    'error' => qa_html(@$script['name_error']),
                ),
                array(
                    'type' => 'textarea',
                    'rows' => 6,
                    'tags' => 'NAME="scriptdesc" ID="scriptdesc"',
                    'label' => qa_lang_html('plugin_bash/create_script_desc'),
                    'value' => qa_html(@$script['desc']),
                    'error' => qa_html(@$script['desc_error']),
                ),
                array(
                    'type' => 'text',
                    'rows' => 1,
                    'tags' => 'NAME="scripttags" ID="scripttags"',
                    'label' => qa_lang_html('plugin_bash/create_script_tags'),
                    'value' => qa_html(@$script['tags']),
                    'error' => qa_html(@$script['tags_error']),
                ),
                array(
                    'type' => 'blank',
                    'rows' => 1,
                ),
            ),
            'buttons' => array(
                array(
                    'tags' => 'NAME="dosave" class="qa-form-tall-button-ask qa-form-tall-button"',
                    'label' => qa_lang_html('plugin_bash/create_script_save_button'),
                ),
            ),
        );
    }

    function add_after_repo_fields($script, $mode) {
        $fields [] = array(
            'type' => 'custom',
            'html' => $this->get_handle_buttons(),
        );
        $fields [] = array(
            'type' => 'blank',
            'rows' => 1,
        );
        $fields [] = array(
            'type' => 'textarea',
            'rows' => 6,
            'tags' => 'NAME="scriptexample" ID="scriptexample"',
            'label' => qa_lang_html('plugin_bash/create_script_example'),
            'value' => qa_html(@$script['example_data']),
            'error' => qa_html(@$script['example_data_error']),
        );

        if ($mode === $this->EDIT_MODE) {
            $fields [] = array(
                'type' => 'blank',
                'rows' => 1,
            );
            $fields [] = array(
                'type' => 'TEXT',
                'rows' => 1,
                'tags' => 'NAME="comm_msg" ID="comm_msg"',
                'label' => qa_lang_html('plugin_bash/edit_script_message'),
                'value' => qa_html(@$script['comm_msg']),
                'error' => qa_html(@$script['comm_msg_error']),
            );
        }
        return $fields;
    }

    function load_script($max_script_count) {
        $script['name'] = qa_post_text('scriptname');
        $script['desc'] = qa_post_text('scriptdesc');
        $script['tags'] = $this->load_tags();
        $script['example_data'] = qa_post_text('scriptexample');
        $script['comm_msg'] = qa_post_text('comm_msg');
        $repos = array();
        $counter = qa_post_text('counter');
        for ($i = 1; $i < $counter && $i <= $max_script_count; $i++) {
            $repos[] = array(
                'git' => qa_post_text('scriptgit' . $i),
                'file' => qa_post_text('scriptfile' . $i),
                'comm' => qa_post_text('scriptcomm' . $i),
                'order' => $i,
            );
        }
        $script['repos'] = $repos;
        $script['comm_msg'] = qa_post_text('comm_msg');
        return $script;
    }

    function load_tags() {
        require_once QA_INCLUDE_DIR . 'util/string.php';
        $text = qa_remove_utf8mb4(qa_post_text('scripttags'));
        return array_unique(qa_string_to_words($text, true, false, false, false));
    }

    function add_repo_fields($scripts) {
        $fields = array();
        $counter = 1;
        foreach ($scripts as $script) {
            $fields = array_merge($fields, $this->add_repo_field($script, $counter));
            $counter++;
        }
        $fields [] = array(
            'type' => 'hidden',
            'rows' => 1,
            'tags' => 'NAME="counter" ID="counter" hidden',
            'value' => $counter,
        );

        return $fields;
    }

    function add_repo_field($script, $counter) {
        $fields = array(
            array(
                'type' => 'static',
                'style' => 'tall',
                'value' => '<strong>Script ' . $counter . '</strong>'
            ),
            array(
                'type' => 'text',
                'rows' => 1,
                'tags' => 'NAME="scriptgit' . $counter . '" ID="scriptgit' . $counter . '"',
                'label' => qa_lang_html('plugin_bash/create_script_git'),
                'value' => qa_html(@$script['git']),
                'error' => qa_html(@$script['git_error']),
            ),
            array(
                'type' => 'text',
                'rows' => 1,
                'tags' => 'NAME="scriptfile' . $counter . '" ID="scriptfile' . $counter . '"',
                'label' => qa_lang_html('plugin_bash/create_script_file'),
                'value' => qa_html(@$script['file']),
                'error' => qa_html(@$script['file_error']),
            ),
            array(
                'type' => 'text',
                'rows' => 1,
                'tags' => 'NAME="scriptcomm' . $counter . '" ID="scriptcomm' . $counter . '"',
                'label' => qa_lang_html('plugin_bash/create_script_comm'),
                'value' => qa_html(@$script['comm']),
                'error' => qa_html(@$script['comm_error']),
            ),
            array(
                'type' => 'blank',
                'rows' => 1,
            )
        );
        return $fields;
    }

    function get_handle_buttons() {
        return '<button type="button" id="btn-add" onclick="addScript();" class="qa-form-tall-button">'
                . qa_lang_html('plugin_bash/create_script_add_script') . '</button>'
                . '<button type="button" id="btn-remove" onclick="removeScript();" class="qa-form-tall-button">'
                . qa_lang_html('plugin_bash/create_script_remove_script') . '</button>';
    }

}
