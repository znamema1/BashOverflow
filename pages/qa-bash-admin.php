<?php

/*
 * Author: Martin Znamenacek
 * Description: Controller for plugin administration.
 */


class qa_bash_admin_page {

    function match_request($request) {
        return false; //page is not allowed to be requested
    }

    function process_request($request) {
        return null;
    }

    public function init_queries($table_list) {
        require_once __DIR__ . '/../app/qa-bash-db.php';
        return init_db_tables($table_list);
    }

    /*
     * Default options for BashOverflow.
     */
    function option_default($option) {
        switch ($option) {
            case 'bashoverflow_server_url': return '127.0.0.1';
            case 'bashoverflow_create_points': return 10;
            case 'bashoverflow_edit_points': return 5;
            case 'bashoverflow_max_linked_scripts': return 5;
            case 'bashoverflow_script_name_min_len': return 5;
            case 'bashoverflow_script_name_max_len': return 40;
            case 'bashoverflow_script_desc_min_len': return 0;
            case 'bashoverflow_script_desc_max_len': return 400;
            case 'bashoverflow_script_tag_min_count': return 0;
            case 'bashoverflow_script_tag_max_count': return 5;
            case 'bashoverflow_script_tag_min_len': return 2;
            case 'bashoverflow_script_tag_max_len': return 15;
            case 'bashoverflow_script_example_min_len': return 0;
            case 'bashoverflow_script_example_max_len': return 300;
            case 'bashoverflow_script_comm_msg_min_len': return 5;
            case 'bashoverflow_script_comm_msg_max_len': return 150;
            case 'bashoverflow_script_git_template': return 'https://github.com/user/repo.git';
            case 'bashoverflow_script_git_regex': return '/^https:\/\/github\.com\/\S{1,39}\/\S{1,100}\.git/';
            case 'bashoverflow_script_file_min_len': return 1;
            case 'bashoverflow_script_file_max_len': return 150;
            case 'bashoverflow_script_comm_min_len': return 6;
            case 'bashoverflow_script_comm_max_len': return 40;
            default: return null;
        }
    }

    /*
     * Generates plugin administration form. Is also a controller for administration form.
     */
    function admin_form(&$qa_content) {
        require_once QA_INCLUDE_DIR . 'qa-app-options.php';

        $saved = false;

        if (qa_clicked('plugin_bash_overflow_save_button')) {
            $this->save_option('bashoverflow_server_url', false);
            $this->save_option('bashoverflow_create_points');
            $this->save_option('bashoverflow_edit_points');
            $this->save_option('bashoverflow_max_linked_scripts');
            $this->save_option('bashoverflow_script_name_min_len');
            $this->save_option('bashoverflow_script_name_max_len');
            $this->save_option('bashoverflow_script_desc_min_len');
            $this->save_option('bashoverflow_script_desc_max_len');
            $this->save_option('bashoverflow_script_tag_min_count');
            $this->save_option('bashoverflow_script_tag_max_count');
            $this->save_option('bashoverflow_script_tag_min_len');
            $this->save_option('bashoverflow_script_tag_max_len');
            $this->save_option('bashoverflow_script_example_min_len');
            $this->save_option('bashoverflow_script_example_max_len');
            $this->save_option('bashoverflow_script_comm_msg_min_len');
            $this->save_option('bashoverflow_script_comm_msg_max_len');
            $this->save_option('bashoverflow_script_git_template', false);
            $this->save_option('bashoverflow_script_git_regex', false);
            $this->save_option('bashoverflow_script_file_min_len');
            $this->save_option('bashoverflow_script_file_max_len');
            $this->save_option('bashoverflow_script_comm_min_len');
            $this->save_option('bashoverflow_script_comm_max_len');
            $saved = true;
        }

        return array(
            'ok' => $saved ? qa_lang_html('plugin_bash/admin_form_ok') : null,
            'style' => 'wide',
            'fields' => array(
                $this->generate_field('bashoverflow_server_url', false, 'text'),
                $this->generate_field('bashoverflow_create_points', false),
                $this->generate_field('bashoverflow_edit_points', false),
                $this->generate_field('bashoverflow_max_linked_scripts', false),
                $this->generate_field('bashoverflow_script_name_min_len'),
                $this->generate_field('bashoverflow_script_name_max_len'),
                $this->generate_field('bashoverflow_script_desc_min_len'),
                $this->generate_field('bashoverflow_script_desc_max_len'),
                $this->generate_field('bashoverflow_script_tag_min_count', false),
                $this->generate_field('bashoverflow_script_tag_max_count', false),
                $this->generate_field('bashoverflow_script_tag_min_len'),
                $this->generate_field('bashoverflow_script_tag_max_len'),
                $this->generate_field('bashoverflow_script_example_min_len'),
                $this->generate_field('bashoverflow_script_example_max_len'),
                $this->generate_field('bashoverflow_script_comm_msg_min_len'),
                $this->generate_field('bashoverflow_script_comm_msg_max_len'),
                $this->generate_field('bashoverflow_script_git_template', false, 'text'),
                $this->generate_field('bashoverflow_script_git_regex', false, 'text'),
                $this->generate_field('bashoverflow_script_file_min_len'),
                $this->generate_field('bashoverflow_script_file_max_len'),
                $this->generate_field('bashoverflow_script_comm_min_len'),
                $this->generate_field('bashoverflow_script_comm_max_len'),
            ),
            'buttons' => array(
                array(
                    'label' => 'Save Changes',
                    'tags' => 'NAME="plugin_bash_overflow_save_button"',
                ),
            ),
        );
    }

    /*
     * Generates form field configuration.
     */
    function generate_field($label, $suffix = true, $type = 'number') {
        return array(
            'label' => qa_lang_html('plugin_bash/' . $label),
            'type' => $type,
            'value' => qa_opt($label),
            'suffix' => $suffix ? qa_lang_html('admin/characters') : null,
            'tags' => 'NAME="' . $label . '"',
        );
    }

    /*
     * Saves option into db.
     */
    function save_option($option, $number = true) {
        if ($number) {
            qa_opt($option, (int) qa_post_text($option));
        } else {
            qa_opt($option, qa_post_text($option));
        }
    }

}
