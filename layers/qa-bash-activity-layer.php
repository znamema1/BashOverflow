<?php

/*
 * Author: Martin Znamenacek
 * Description: Layer which overides standard user profile pages.
 */

class qa_html_theme_layer extends qa_html_theme_base {

    function main_part($key, $part) {
        if (strpos(strtr($key, '_', '-'), 'form-activity') === 0) { // only on activity form on profile page
            require_once QA_PLUGIN_DIR . '/bash-overflow/app/qa-bash-db.php';

            $handle = qa_request_part(1); //username
            $userid = qa_handle_to_userid($handle);
            $c_scripts = db_get_count_user_script($userid); //created scripts
            $e_scripts = db_get_count_user_edited_script($userid); //edited scripts
            $votedonup = db_get_count_user_votedon_up($userid); //upvoted on
            $votedondown = db_get_count_user_votedon_down($userid); //downvoted on
            $votedgotup = db_get_count_user_votedgot_up($userid); //got upvoted
            $votedgotdown = db_get_count_user_votedgot_down($userid); //got downvoted
            $votedon = $votedonup + $votedondown;

            // remove admin options for bonus points
            unset($part['fields']['bonus']);
            unset($part['buttons']);

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
            
            // insert counts of created and edited scripts
            array_splice($part['fields'], 4, 0, $extra_fields);
            
            // insert votedon data
            $part['fields']['votedon']['value'] .= ', <span class="qa-uf-user-a-votes">' .
                    qa_html(number_format($votedon))
                    . '</span> ' . qa_lang_html('plugin_bash/profile_scripts_label');

            // into present data about votedgave and votedgot add script data
            $this->insert_votes($part['fields']['votegave']['value'], $votedonup, $votedondown);
            $this->insert_votes($part['fields']['votegot']['value'], $votedgotup, $votedgotdown);
        }

        qa_html_theme_base::main_part($key, $part);
    }

    /*
     * Inserts votesup and votesdown into the recieved text.
     * Votesup and votesdown are added to values inside text.
     */
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
