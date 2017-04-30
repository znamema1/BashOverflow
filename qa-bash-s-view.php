<?php

function generate_s_view_content($script, $voting = false) {
    $authorinfo = qa_db_single_select(qa_db_user_account_selectspec($script['author'], true));
    $editorinfo = qa_db_single_select(qa_db_user_account_selectspec($script['editor'], true));

    $s_view['what'] = qa_html('owned');
    $s_view['who'] = qa_html(' by ') . get_user_info($script['author']) . qa_html(' (' . $authorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    $s_view['what_2'] = qa_html('edited');
    $s_view['when_2'] = qa_when_to_html($script['edit_date'], @$options['fulldatedays']);
    $s_view['who_2'] = qa_html('by ') . get_user_info($script['editor']) . qa_html(' (' . $editorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    $s_view['score'] = qa_html($script['score']);
    $s_view['score_label'] = qa_lang_html_sub_split('main/x_votes', '')['suffix'];
    $s_view['exec_count'] = $script['exec_count'];
    $s_view['desc'] = qa_html($script['desc'], true);
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

function get_user_info($userid) {
    $handle = qa_userid_to_handle($userid);
    return qa_get_one_user_html($handle);
}
