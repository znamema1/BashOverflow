<?php

class qa_bash_ajax_run_page_text {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'ajax_run_page_text';
    }

    function process_request($request) {
        $qa_post_text = qa_post_text('scriptid');
        $qa_post_text0 = qa_post_text('datain');
        
        echo '<div class="qa-part-form2">
                    <form method="POST" action="../run/16">
                            <table class="qa-form-tall-table">
                                    <tbody><tr>
                                            <td class="qa-form-tall-label">
                                                    Processed data
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-data">
                                                    <textarea name="dataout" id="dataout" rows="10" cols="40" class="qa-form-tall-text">'.$qa_post_text0.'</textarea>
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-label">
                                                    Don\'t forget to vote this script! '.$qa_post_text.'
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-data">
                                                    <span class="qa-form-tall-static"></span>
                                            </td>
                                    </tr>
                            </tbody></table>
                    </form>
            </div>';
        return null;
    }

}
