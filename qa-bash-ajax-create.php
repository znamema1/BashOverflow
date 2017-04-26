<?php

class qa_bash_ajax_create_page {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'ajax_create_page';
    }

    function process_request($request) {
        $parts = explode('/', $request);
        $counter = $parts[1];

        echo '<tr style="display: none"><td class="qa-form-tall-label">'.qa_lang_html('plugin_bash/create_script_git').'</td></tr>' .
        '<tr style="display: none"><td class="qa-form-tall-data"><input name="scriptgit' . $counter . '" id="scriptgit' . $counter . '" type="text" value="" class="qa-form-tall-text"></td></tr>' .
        '<tr style="display: none"><td class="qa-form-tall-label">'.qa_lang_html('plugin_bash/create_script_file').'</td></tr>' .
        '<tr style="display: none"><td class="qa-form-tall-data"><input name="scriptfile' . $counter . '" id="scriptfile' . $counter . '" type="text" value="" class="qa-form-tall-text"></td></tr>' .
        '<tr style="display: none"><td class="qa-form-tall-label">'.qa_lang_html('plugin_bash/create_script_comm').'</td></tr>' .
        '<tr style="display: none"><td class="qa-form-tall-data"><input name="scriptcomm' . $counter . '" id="scriptcomm' . $counter . '" type="text" value="" class="qa-form-tall-text"></td></tr>' .
        '<tr style="display: none"><td colspan="1" class="qa-form-tall-spacer">&nbsp;</td></tr>';

        return null;
    }

}
