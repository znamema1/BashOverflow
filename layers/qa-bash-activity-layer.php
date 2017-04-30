<?php

class qa_html_theme_layer extends qa_html_theme_base {

    function main_part($key, $part) {
        if (strpos(strtr($key, '_', '-'), 'form-activity') === 0) {
            require_once QA_PLUGIN_DIR . '/bash-overflow/app/qa-bash-db.php';
            $handle = qa_request_part(1);
            $userid = qa_handle_to_userid($handle);
            $c_scripts = db_get_count_user_script($userid);
            $e_scripts = db_get_count_user_edited_script($userid);
            $votedonup = db_get_count_user_votedon_up($userid);
            $votedondown = db_get_count_user_votedon_down($userid);
            $votedgotup = db_get_count_user_votedgot_up($userid);
            $votedgotdown = db_get_count_user_votedgot_down($userid);
            $votedon = $votedonup + $votedondown;

            unset($part['fields']['bonus']);
            if (isset($part['buttons'])) {
                unset($part['buttons']['setbonus']);
            }

            $extra_fields = array(
                'created_scripts' => array(
                    'type' => 'static',
                    'label' => qa_lang_html('plugin_bash/profile_created_scripts'),
                    'value' => '<span class="qa-uf-user-c-posts">' . qa_html(number_format($c_scripts)) . '</span>',
                    'id' => 'created_scripts',
                ),
                'edited_scripts' => array(
                    'type' => 'static',
                    'label' => qa_lang_html('plugin_bash/profile_edited_scripts'),
                    'value' => '<span class="qa-uf-user-c-posts">' . qa_html(number_format($e_scripts)) . '</span>',
                    'id' => 'edited_scripts',
                ),
            );

            array_splice($part['fields'], 4, 0, $extra_fields);
            $part['fields']['votedon']['value'] .= ', <span class="qa-uf-user-a-votes">' . qa_html(number_format($votedon))
                    . '</span> ' . qa_lang_html('plugin_bash/profile_scripts_label');

            $this->insert_votes($part['fields']['votegave']['value'], $votedonup, $votedondown);
            $this->insert_votes($part['fields']['votegot']['value'], $votedgotup, $votedgotdown);
        }

        qa_html_theme_base::main_part($key, $part);
    }

    function insert_votes(&$text, $votesup, $votesdown) {
        $pos1 = strpos($text, '>') + 1;
        $pos2 = strpos($text, '</span>');

        $ret = substr($text, 0, $pos1);
        $ret .= (substr($text, $pos1, $pos2 - $pos1) + $votesup);

        $pos1 = strpos($text, '">', $pos2) + 2;
        $ret .= substr($text, $pos2, $pos1 - $pos2);
        $pos2 = strpos($text, '</span>', $pos1);

        $ret .= (substr($text, $pos1, $pos2 - $pos1) + $votesdown);

        $ret .= substr($text, $pos2);
        $text = $ret;
    }

}
