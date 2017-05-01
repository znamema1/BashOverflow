<?php

class qa_bash_ajax_vote {

    function match_request($request) {
        $parts = explode('/', $request);
        return $parts[0] == 'ajax_script_vote';
    }

    function process_request($request) {
        require_once __DIR__.'/../app/qa-bash-base.php';
        $scriptid = qa_get('scriptid');
        $vote = qa_get('vote');
        $userid = qa_get_logged_in_userid();

        if (!isset($userid)) {
            return null;
        }

        $score = vote_script($userid, $scriptid, $vote);
        $this->get_response($score, $scriptid);
        return null;
    }

    function get_response($score, $scriptid) {
        require_once __DIR__.'/../app/qa-bash-s-view.php';

        set_vote_buttons($s_view, $scriptid, null);
        $s_view['score_label'] = qa_lang_html_sub_split('main/x_votes', '')['suffix'];
        $s_view['score'] = $score;

        $themeclass = qa_load_theme_class(qa_get_site_theme(), 'voting', null, null);
        $themeclass->initialize();

        $themeclass->s_vote_buttons($s_view);
        $themeclass->s_vote_count($s_view);
        $themeclass->vote_clear();
    }

}
