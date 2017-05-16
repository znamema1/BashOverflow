<?php

/*
 * Author: Martin Znamenacek
 * Description: Layer which handles aplication contex for script search prioritization over standard search.
 */

class qa_html_theme_layer extends qa_html_theme_base {

    function doctype() {
        global $qa_request;
        $parts = explode('/', $qa_request);

        $script_pages = array( //pages for script search prioritization
            'create_script',
            'edit_script',
            'script',
            'scripts',
            'run',
            'script_search',
            'stag',
            'stags',
        );
        
        if (in_array($parts[0], $script_pages)) {
            $this->content['search']['form_tags'] = 'method="get" action=" ' . qa_path('script_search') . '"';
            $this->content['search']['field_tags'] .= 'placeholder="' . qa_lang_html('plugin_bash/nav_sub_search_script') . '"';
        } else {
            $this->content['search']['field_tags'] .= 'placeholder="' . qa_lang_html('plugin_bash/nav_sub_search_question') . '"';
        }

        qa_html_theme_base::doctype();
    }

}
