<?php

class qa_bash_create_page {

    private $urltoroot;

    public function load_module($directory, $urltoroot) {
        $this->urltoroot = $urltoroot;
    }

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'create_script' || $parts[0] == 'edit_script';
    }

    function process_request($request) {
        $parts = explode('/', $request);
        $edit = $parts[0] === 'edit_script';
        $script;
        if ($edit) {
            $script = $parts[1];
            if (!isset($script)) {
                qa_redirect('create_script');
            }
        }
        $qa_content = qa_content_prepare();
        $qa_content['script_src'][] = $this->urltoroot . 'qa-bash-scripts.js';
        $qa_content['css_src'][] = $this->urltoroot . 'qa-bash-scripts.css';


        if ($edit) {
            $qa_content['title'] = qa_lang_html('plugin_bash/edit_script_title') . ' ' . $script;
        } else {
            $qa_content['title'] = qa_lang_html('plugin_bash/create_script_title');
        }
        if (qa_clicked('dosave')) {
            $scripts = array();
            $counter = qa_post_text('counter') - 1;
            for ($i = 1; $i <= $counter; $i++) {
                $scripts[] = array(
                    'git' => qa_post_text('scriptgit' . $i),
                    'file' => qa_post_text('scriptfile' . $i),
                    'comm' => qa_post_text('scriptcomm' . $i),
                );
            }
        } else {
            $scripts = array(
                array(
                    'git' => '',
                    'file' => '',
                    'comm' => '',
                ),
            );
        }
        $qa_content['form'] = array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'text',
                    'rows' => 1,
                    'tags' => 'NAME="scriptname" ID="scriptname"',
                    'label' => qa_lang_html('plugin_bash/create_script_name'),
                ),
                array(
                    'type' => 'textarea',
                    'rows' => 6,
                    'tags' => 'NAME="scriptdesc" ID="scriptdesc"',
                    'label' => qa_lang_html('plugin_bash/create_script_desc'),
                ),
                array(
                    'type' => 'text',
                    'rows' => 1,
                    'tags' => 'NAME="scripttags" ID="scripttags"',
                    'label' => qa_lang_html('plugin_bash/create_script_tags'),
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
        $qa_content['form']['fields'] = array_merge($qa_content['form']['fields'], $this->add_script_fields($scripts));
        $qa_content['form']['fields'][] = array(
            'type' => 'custom',
            'html' => $this->get_buttons(),
        );
        $qa_content['form']['fields'][] = array(
            'type' => 'blank',
            'rows' => 1,
        );
        $qa_content['form']['fields'][] = array(
            'type' => 'textarea',
            'rows' => 6,
            'tags' => 'NAME="scriptdesc" ID="scriptdesc"',
            'label' => qa_lang_html('plugin_bash/create_script_example'),
        );



        if ($edit) {
            $qa_content['form']['fields'][] = array(
                'type' => 'blank',
                'rows' => 1,
            );
            $qa_content['form']['fields'][] = array(
                'type' => 'TEXT',
                'rows' => 1,
                'tags' => 'NAME="message" ID="message"',
                'label' => qa_lang_html('plugin_bash/edit_script_message'),
            );
        }

        $qa_content['focusid'] = 'scriptname';

        return $qa_content;
    }

    function validate_scripts($scripts) {
        foreach ($scripts as $script) {
            
        }
    }

    function add_script_fields($scripts) {
        $fields = array();
        $counter = 1;
        foreach ($scripts as $script) {
            $fields = array_merge($fields, $this->add_script_field($script, $counter));
            $counter++;
            $fields [] = array(
                'type' => 'blank',
                'rows' => 1,
            );
        }
        $fields [] = array(
            'type' => 'hidden',
            'rows' => 1,
            'tags' => 'NAME="counter" ID="counter" hidden',
            'value' => $counter,
        );

        return $fields;
    }

    function add_script_field($script, $counter) {
        $fields = array(
            array(
                'type' => 'text',
                'rows' => 1,
                'tags' => 'NAME="scriptgit' . $counter . '" ID="scriptgit' . $counter . '"',
                'label' => qa_lang_html('plugin_bash/create_script_git'),
                'value' => $script['git'],
                'error' => @$script['git_err'],
            ),
            array(
                'type' => 'text',
                'rows' => 1,
                'tags' => 'NAME="scriptfile' . $counter . '" ID="scriptfile' . $counter . '"',
                'label' => qa_lang_html('plugin_bash/create_script_file'),
                'value' => $script['file'],
                'error' => @$script['file_err'],
            ),
            array(
                'type' => 'text',
                'rows' => 1,
                'tags' => 'NAME="scriptcomm' . $counter . '" ID="scriptcomm' . $counter . '"',
                'label' => qa_lang_html('plugin_bash/create_script_comm'),
                'value' => $script['comm'],
                'error' => @$script['comm_err'],
            ),
        );
        return $fields;
    }

    function get_buttons() {
        //return '<input name="dosave" value="Save script" title="" type="submit" class="qa-form-tall-button qa-form-tall-button-0"><input name="dosave" value="Save script" title="" type="submit" class="qa-form-tall-button qa-form-tall-button-0">';

        return '<button type="button" id="btn-add" onclick="addScript();" class="qa-form-tall-button">'
                . qa_lang_html('plugin_bash/create_script_add_script') . '</button>'
                . '<button type="button" id="btn-remove" onclick="removeScript();" class="qa-form-tall-button">'
                . qa_lang_html('plugin_bash/create_script_remove_script') . '</button>';
    }

//    public function init_queries($table_list) {
//        $tablename = qa_db_add_table_prefix('script');
//
//        if (!in_array($tablename, $table_list)) {
//            require_once QA_INCLUDE_DIR . 'app/users.php';
//            require_once QA_INCLUDE_DIR . 'db/maxima.php';
//
//            return 'CREATE TABLE ^eventlog (' .
//                    'datetime DATETIME NOT NULL,' .
//                    'ipaddress VARCHAR (15) CHARACTER SET ascii,' .
//                    'userid ' . qa_get_mysql_user_column_type() . ',' .
//                    'handle VARCHAR(' . QA_DB_MAX_HANDLE_LENGTH . '),' .
//                    'cookieid BIGINT UNSIGNED,' .
//                    'event VARCHAR (20) CHARACTER SET ascii NOT NULL,' .
//                    'params VARCHAR (800) NOT NULL,' .
//                    'KEY datetime (datetime),' .
//                    'KEY ipaddress (ipaddress),' .
//                    'KEY userid (userid),' .
//                    'KEY event (event)' .
//                    ') ENGINE=MyISAM DEFAULT CHARSET=utf8';
//        }
//    }
}
