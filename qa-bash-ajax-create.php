<?php

class qa_bash_ajax_create_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'ajax_create_page';
    }

    function process_request($request) {
        $parts = explode('/', $request);
        if (count($parts) < 2) {
            $counter = 0;
        } else {
            $counter = $parts[1];
        }

        $themeclass = qa_load_theme_class(qa_get_site_theme(), null, null, null);
        $themeclass->initialize();

        $themeclass->form_fields($this->generate_array($counter), 1);

        return null;
    }

    function generate_array($counter) {
        require_once 'qa-bash-create.php';
        $createclass = new qa_bash_create_page();
        return array(
            'style' => 'tall',
            'fields' => $createclass->add_repo_field(null, $counter)
        );
    }

}
