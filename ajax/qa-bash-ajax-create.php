<?php

/*
 * Author: Martin Znamenacek
 * Description: Controller for create page ajax calls
 */

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

        //load theme class
        $themeclass = qa_load_theme_class(qa_get_site_theme(), null, null, null);
        $themeclass->initialize();


        //print html representation of form
        $themeclass->form_fields($this->generate_array($counter), 1);

        return null;
    }

    /*
     * Generates form configuration
     */
    function generate_array($counter) {
        require_once __DIR__ . '/../pages/qa-bash-create.php';
        $createclass = new qa_bash_create_page();
        return array(
            'style' => 'tall',
            'fields' => $createclass->add_repo_field(null, $counter)
        );
    }

}
