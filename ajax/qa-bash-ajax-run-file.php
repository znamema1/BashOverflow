<?php

class qa_bash_ajax_run_page_file {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'ajax_run_page_file';
    }

    function process_request($request) {
        $scriptid = qa_post_text('scriptid');
        $content = qa_post_text('content');
        $name = qa_post_text('fileName');

        echo '<form method="POST">
                            <table class="qa-form-tall-table">
                                    <tbody><tr>
                                            <td class="qa-form-tall-label">
                                                    Processed data
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-data">
                                                    <textarea name="dataout" id="dataout" rows="10" cols="40" class="qa-form-tall-text" readonly>Script ID: ' . $scriptid . '
File name: ' . $name . '
Content: ' . $content . '</textarea>
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="qa-form-tall-data">
                                                    <a id="outputdl" href="data:text/plain;charset=utf-8,'.$content.'" type="text/plain" download="output.txt">Download output</a>
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
