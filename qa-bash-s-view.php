<?php

function generate_s_view_content($script, $voting = false) {
    $s_view['what'] = qa_html('created');
    $s_view['when'] = qa_html('2 minutes ago');
    $s_view['who'] = qa_html('by ' . $script['author']);
    $s_view['score'] = qa_html($script['score']);
    $s_view['score_label'] = qa_lang_html_sub_split('main/x_votes', '')['suffix'];
    $s_view['exec_count'] = $script['exec_count'];
    $s_view['desc'] = qa_html($script['desc'],true);
    $s_view['tags'] = $script['tags'];
    $s_view['version_label'] = qa_lang_html('plugin_bash/detail_script_version_label');
    $s_view['exec_label'] = qa_lang_html('plugin_bash/detail_script_exec_label');
    $s_view['versions'] = $script['versions'];
    $s_view['selected_version'] = $script['selected_version'];

    if ($voting) {
        $s_view['vote_up'] = qa_lang_html('main/vote_up_popup');
        $s_view['vote_down'] = qa_lang_html('main/vote_down_popup');
    }
    return $s_view;
}
