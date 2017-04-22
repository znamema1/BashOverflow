<?php

class qa_bash_detail_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'script';
    }

    function process_request($request) {
        $parts = explode('/', $request);
        $script = @$parts[1];
        $qa_content = qa_content_prepare();

        if (!isset($script)) {
            $qa_content['error'] = qa_lang_html('main/page_not_found');
            return $qa_content;
        }

        $qa_content['title'] = ' ....jméno skriptu....';

        if (qa_clicked('dorun')) {
            qa_redirect('run/1');
        }
        if (qa_clicked('doedit')) {
            qa_redirect('edit_script' . '/1');
        }

        $data = array(
            "1" => array(
                'git' => 'https://www.github.com',
                'file' => './run.sh',
                'comm' => '34TGZSNICKSIUZ',
            ),
            "2" => array(
                'git' => 'https://www.github.com',
                'file' => './run.sh',
                'comm' => '34TGZSNICKSIUZ',
            ),
            "3" => array(
                'git' => 'https://www.github.com',
                'file' => './run.sh',
                'comm' => '34TGZSNICKSIUZ',
            ),
        );
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

        $qa_content['s_view']['versions'] = array('1.0', '2.0', '3.0', '4.0');


        $qa_content['form'] = array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '" enctype="multipart/form-data"',
            'style' => 'wide',
            'title' => 'Scripts',
        );
        $qa_content['form2'] = array(
            'tags' => 'METHOD="POST" ACTION="' . qa_self_html() . '" enctype="multipart/form-data"',
            'style' => 'tall',
            'fields' => array(
                array(
                    'type' => 'textarea',
                    'rows' => 10,
                    'tags' => 'NAME="datain" ID="datain" readonly',
                    'label' => qa_lang_html('plugin_bash/detail_script_example_data'),
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
        $qa_content['form']['fields'] = $this->data_to_fields($data);
        if (true) { // owner
            $qa_content['form2']['buttons'][] = array(
                'tags' => 'NAME="doedit"',
                'label' => qa_lang_html('plugin_bash/detail_script_edit_button'),
                'popup' => qa_lang_html('plugin_bash/detail_script_edit_button'),
            );
            $qa_content['form2']['buttons'][] = array(
                'tags' => 'NAME="dodelete" class="qa-form-light-button qa-form-light-button-delete"',
                'label' => qa_lang_html('plugin_bash/detail_script_delete_button'),
                'popup' => qa_lang_html('plugin_bash/detail_script_delete_button'),
            );
        }
        if (true) {//public/private
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

        return $qa_content;
    }

    function data_to_fields($data) {
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
                    'value' => '<a href ="' . $script['git'] . '">' . $script['git'] . '</a>',
                );
                $ret[] = array(
                    'type' => 'static',
                    'tags' => 'NAME="scriptfile' . $counter . '" ID="scriptfile' . $counter . '"',
                    'label' => qa_lang_html('plugin_bash/create_script_file'),
                    'value' => $script['file'],
                );
                $ret[] = array(
                    'type' => 'static',
                    'tags' => 'NAME="scriptcomm' . $counter . '" ID="scriptcomm' . $counter . '"',
                    'label' => qa_lang_html('plugin_bash/create_script_comm'),
                    'value' => $script['comm'],
                );
                $counter++;
            }
        }
        return $ret;
    }

}
