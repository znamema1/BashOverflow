<?php

class qa_bash_ajax_run_page_text {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'ajax_run_page_text';
    }

    function process_request($request) {
        $script_id = qa_post_text('scriptid');
        $data_in = qa_post_text('datain');
        
        echo '<form method="POST">
                            <table class="qa-form-tall-table">
                                    <tbody><tr>
                                            <td class="qa-form-tall-label">
                                                    Processed data
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-data">
                                                    <textarea name="dataout" id="dataout" rows="10" cols="40" class="qa-form-tall-text" readonly>Script ID: '.$script_id.'
Data in: '.$data_in.'</textarea>
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-label">
                                                    Don\'t forget to vote this script!
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-data">
                                                    <span class="qa-form-tall-static"></span>
                                            </td>
                                    </tr>
                            </tbody></table>
                    </form>';
        return null;
    }

}
