<?php

class qa_bash_list_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'scripts';
    }

    function process_request($request) {
        $qa_content = qa_content_prepare();


        $qa_content['s_list'] = $this->get_s_list_content();
        return $qa_content;
    }

    function get_s_list_content() {
        return "test";
    }

}
