<?php

/*
 * Author: Martin Znamenacek
 * Description: Layer which extends standard themeclass html generation capabilities.
 */

class qa_html_theme_layer extends qa_html_theme_base {

    public function main_part($key, $part) {
        if (strpos($key, 's_list') === 0) {
            $this->s_list($part);
        } elseif (strpos($key, 's_view') === 0) {
            $this->s_view($part);
        } else {
            qa_html_theme_base::main_part($key, $part);
        }
    }

    /*
      Script info on run and detail page.
     */
    function s_view($s_view) {
        $this->output('<div class="qa-part-q-view">');
        $this->s_stats($s_view, 'qa-q-view');
        $this->s_view_main($s_view);
        $this->q_view_clear($s_view);
        $this->output('</div> <!-- END qa-s-view -->', '');
    }

    /*
      Script stats on all pages.
     */
    function s_stats($s_view, $class) {
        $this->output('<div class="' . $class . '-stats">');
        $this->s_voting($s_view, $class);
        $this->s_exec_count($s_view);
        $this->output('</div>');
    }

    /*
      Script voting feature and count.
     */
    function s_voting($s_view, $class) {
        $this->output('<div class="qa-voting qa-voting-net">');
        $this->s_vote_buttons($s_view);
        $this->s_vote_count($s_view);
        $this->vote_clear();
        $this->output('</div>');
    }

    /*
      Script voting buttons.
     */
    function s_vote_buttons($s_view) {
        $this->output('<div class="qa-vote-buttons qa-vote-buttons-net">');
        switch ($s_view['state']) {
            case 'novote': {
                    $this->output('<input title="' . $s_view['vote_up'] . '" name="vote_up" onclick="handleVote(\'up\');" type="button" value="+" class="qa-vote-first-button qa-vote-up-button"> ');
                    $this->output('<input title="' . $s_view['vote_down'] . '" name="vote_down" onclick="handleVote(\'down\');" type="button" value="–" class="qa-vote-second-button qa-vote-down-button"> ');
                    break;
                }
            case 'up': {
                    $this->output('<input title="' . $s_view['vote_up'] . '" name="vote_up" onclick="handleVote(\'up\');" type="button" value="+" class="qa-vote-one-button qa-voted-up-button"> ');
                    break;
                }
            case 'down': {
                    $this->output('<input title="' . $s_view['vote_down'] . '" name="vote_down" onclick="handleVote(\'down\');" type="button" value="–" class="qa-vote-one-button qa-voted-down-button"> ');
                    break;
                }
            case 'nouser':
            case 'owner':
            case 'item';
            default: {
                    $this->output('<input title="' . $s_view['vote_up'] . '" name="vote_up" type="button" value="+" class="qa-vote-first-button qa-vote-up-disabled"> ');
                    $this->output('<input title="' . $s_view['vote_down'] . '" name="vote_down" type="button" value="–" class="qa-vote-second-button qa-vote-down-disabled"> ');
                    break;
                }
        }
        $this->output('</div>');
    }

    /*
      Script score.
     */
    function s_vote_count($s_view) {
        if ($s_view['score'] > 0) {
            $plus = '+';
        }

        $this->output('<div class="qa-vote-count qa-vote-count-net">');
        $this->output('<span class="qa-netvote-count">');
        $this->output('<span class="qa-netvote-count-data">', @$plus . number_format($s_view['score']), '</span>');
        $this->output('<span class="qa-netvote-count-pad">' . $s_view['score_label'] . '</span>');
        $this->output('</span>');
        $this->output('</div>');
    }

    /*
      Script execution count.
     */
    function s_exec_count($s_view) {
        $this->output('<span class="qa-view-count">');
        $this->output('<span class="qa-view-count-data">' . number_format($s_view['exec_count']) . '</span><span class="qa-view-count-pad">' . $s_view['exec_label'] . '</span>');
        $this->output('</span>');
    }

    /*
      Script main part for script description, metainformations and stags.
     */
    function s_view_main($s_view) {
        $this->output('<div class="qa-q-view-main">');
        $this->s_meta($s_view, 'qa-q-view');
        $this->s_view_content($s_view);
        $this->s_post_tags($s_view, 'qa-q-view');
        $this->output('</div>');
    }

    /*
      Script metainformations - owner, editor and versions.
     */
    function s_meta($s_view, $class) {
        $this->output('<span class="' . $class . '-avatar-meta">');
        $this->output('<span class="' . $class . '-meta">');
        $this->s_meta_content($s_view, $class);
        $this->s_meta_version($s_view);
        $this->output('</span>');
        $this->output('</span>');
    }

    /*
      Script metainformations - owner, editor.
     */
    function s_meta_content($s_view, $class) {
        $this->output('<span class="' . $class . '-what">' . $s_view['what'] . '</span>');
        $this->output('<span class="' . $class . '-who">' . $s_view['who'] . '</span>');
        if (!empty($s_view['what_2'])) {
            $this->output(', ');
            $this->output('<span class="' . $class . '-what">' . $s_view['what_2'] . '</span>');
            $this->output_split(@$s_view['when_2'], $class . '-when');
            $this->output('<span class="' . $class . '-who">' . $s_view['who_2'] . '</span>');
        }
    }

    /*
      Script metainformations - versions.
     */
    function s_meta_version($s_view) {
        if (isset($s_view['versions'])) {
            $this->output('<span style="float: right">');
            $this->output('<form action="' . qa_self_html() . '" method="POST">');

            $this->output('<select NAME="version" ID="version" style="font-size: small;" onchange="this.form.submit();">');

            foreach ($s_view['versions'] as $version) {
                $this->output('<option '
                        . ($version == $s_view['selected_version'] ? 'selected="selected" ' : '')
                        . 'value = ' . $version . '>'
                        . $s_view['version_label'] . ' ' . $version
                        . '</option>');
            }
            $this->output('</select>');
            $this->output('</form>');
            $this->output('</span>');
        }
    }

    /*
      Script description.
     */
    function s_view_content($s_view) {
        $this->output('<div class="qa-q-view-content">');
        $this->output('<div class="entry-content">');
        $this->output($s_view['desc']);
        $this->output('</div>');
        $this->output('</div>');
    }

    /*
      Script stags.
     */
    function s_post_tags($s_view, $class) {
        if (!empty($s_view['tags'])) {
            $post['q_tags'] = array();
            foreach ($s_view['tags'] as $tag) {
                $post['q_tags'][] = $this->generate_stag_html($tag);
            }
            $this->post_tags($post, $class);
        }
    }

    /*
      List of scripts.
     */
    function s_list($s_list) {
        if (isset($s_list['title'])) {
            $this->part_title($s_list);
        }

        $this->output('<div class="qa-q-list qa-q-list-vote-disabled">');
        $this->s_list_items($s_list);
        $this->output('</div> <!-- END qa-q-list -->', '');
    }

    /*
      Items in list of scripts.
     */
    function s_list_items($s_list) {
        if (!empty($s_list['items'])) {
            foreach ($s_list['items'] as $s_item) {
                $this->s_list_item($s_item);
            }
        }
    }

    /*
      One item in list of scripts.
     */
    function s_list_item($s_item) {
        $this->output('<div class="qa-q-list-item">');

        $this->s_stats($s_item, 'qa-q-item');
        $this->s_item_main($s_item);
        $this->q_item_clear();

        $this->output('</div> <!-- END qa-q-list-item -->', '');
    }

    /*
      Script item main part for script name, metainformations and stags.
     */
    function s_item_main($s_item) {
        $this->output('<div class="qa-q-item-main">');
        $this->q_item_title($s_item);
        $this->s_meta($s_item, 'qa-q-item');
        $this->s_post_tags($s_item, 'qa-q-item');
        $this->output('</div>');
    }

    /*
     * Generates html representaions of stag.
     */
    function generate_stag_html($tag) {
        return '<a href="' . qa_path_html('stag/' . qa_html($tag)) . '"'
                . ' class="qa-tag-link">'
                . qa_html($tag)
                . '</a>';
    }

}
