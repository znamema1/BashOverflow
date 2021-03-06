<?php

/*
 * Author: Martin Znamenacek
 * Description: Help class for s-view configuration.
 */

/*
 * Generates s-view configuration from script.
 */
function generate_s_view_content($script) {
    $authorinfo = qa_db_single_select(qa_db_user_account_selectspec($script['author'], true));
    $editorinfo = qa_db_single_select(qa_db_user_account_selectspec($script['editor'], true));

    $s_view['what'] = qa_lang_html('plugin_bash/owned');
    $s_view['who'] = qa_lang_html('plugin_bash/by') .' '. get_user_info($script['author']) . qa_html(' (' . $authorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    $s_view['what_2'] = qa_lang_html('plugin_bash/edited');
    $s_view['when_2'] = qa_when_to_html($script['edit_date'], @$options['fulldatedays']);
    $s_view['who_2'] = qa_lang_html('plugin_bash/by') .' '. get_user_info($script['editor']) . qa_html(' (' . $editorinfo['points'] . ' ' . qa_lang_html_sub_split('main/x_points', '')['suffix'] . ')');
    $s_view['score'] = qa_html($script['score']);
    $s_view['score_label'] = qa_lang_html_sub_split('main/x_votes', '')['suffix'];
    $s_view['exec_count'] = $script['exec_count'];
    $s_view['desc'] = qa_html($script['desc'], true);
    $s_view['tags'] = $script['tags'];
    $s_view['version_label'] = qa_lang_html('plugin_bash/detail_script_version_label');
    $s_view['exec_label'] = qa_lang_html('plugin_bash/detail_script_exec_label');
    $s_view['versions'] = $script['versions'];
    $s_view['selected_version'] = $script['selected_version'];

    set_vote_buttons($s_view, $script['scriptid'], $script['author']);

    return $s_view;
}

/*
 * Configurates vote buttons.
 */
function set_vote_buttons(&$s_view, $scriptid, $authorid) {
    $userid = qa_get_logged_in_userid();
    if (!isset($userid)) {
        $s_view['vote_up'] = qa_lang_html('plugin_bash/vote_nouser_error');
        $s_view['vote_down'] = qa_lang_html('plugin_bash/vote_nouser_error');
        $s_view['state'] = 'nouser';
        return;
    }

    if ($userid == $authorid) {
        $s_view['vote_up'] = qa_lang_html('plugin_bash/vote_owner_error');
        $s_view['vote_down'] = qa_lang_html('plugin_bash/vote_owner_error');
        $s_view['state'] = 'owner';
        return;
    }

    require_once __DIR__ . '/qa-bash-base.php';
    $vote = get_user_vote($userid, $scriptid);

    if (!isset($vote)) {
        $s_view['vote_up'] = qa_lang_html('main/vote_up_popup');
        $s_view['vote_down'] = qa_lang_html('main/vote_down_popup');
        $s_view['state'] = 'novote';
        return;
    }
    if ($vote == 'up') {
        $s_view['vote_up'] = qa_lang_html('main/voted_up_popup');
        $s_view['state'] = 'up';
        return;
    } else {
        $s_view['vote_down'] = qa_lang_html('main/voted_down_popup');
        $s_view['state'] = 'down';
        return;
    }
}

/*
 * Returns informations about selected user.
 */
function get_user_info($userid) {
    $handle = qa_userid_to_handle($userid);
    return qa_get_one_user_html($handle);
}
