<?php

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

    function s_view($s_view) {
        $this->output('<div class="qa-part-q-view">');
        $this->s_stats($s_view, 'qa-q-view');
        $this->s_view_main($s_view);
        $this->q_view_clear($s_view);
        $this->output('</div> <!-- END qa-s-view -->', '');
    }

    function s_stats($s_view, $class) {
        $this->output('<div class="' . $class . '-stats">');
        $this->s_voting($s_view);
        $this->s_exec_count($s_view);
        $this->output('</div>');
    }

    function s_voting($s_view) {
        $this->output('<div class="qa-voting qa-voting-net">');
        $this->s_vote_buttons($s_view);
        $this->s_vote_count($s_view);
        $this->vote_clear();
        $this->output('</div>');
    }

    function s_vote_buttons($s_view) {
        if (isset($s_view['vote_up']) && isset($s_view['vote_down'])) {
            $this->output('<div class="qa-vote-buttons qa-vote-buttons-net">');
            $this->output('<input title="' . $s_view['vote_up'] . '" name="vote_up" onclick="return qa_vote_click(this);" type="submit" value="+" class="qa-vote-first-button qa-vote-up-button"> ');
            $this->output('<input title="' . $s_view['vote_down'] . '" name="vote_down" onclick="return qa_vote_click(this);" type="submit" value="–" class="qa-vote-second-button qa-vote-down-button"> ');
            $this->output('</div>');
        }
    }

    function s_vote_count($s_view) {
        $this->output('<div class="qa-vote-count qa-vote-count-net">');
        $this->output('<span class="qa-netvote-count">');
        $this->output('<span class="qa-netvote-count-data">', $s_view['score'], '</span>');
        $this->output('<span class="qa-netvote-count-pad">' . $s_view['score_label'] . '</span>');
        $this->output('</span>');
        $this->output('</div>');
    }

    function s_exec_count($s_view) {
        $this->output('<span class="qa-view-count">');
        $this->output('<span class="qa-view-count-data">' . $s_view['exec_count'] . '</span><span class="qa-view-count-pad">' . $s_view['exec_label'] . '</span>');
        $this->output('</span>');
    }

    function s_view_main($s_view) {
        $this->output('<div class="qa-q-view-main">');
        $this->s_meta($s_view, 'qa-q-view');
        $this->s_view_content($s_view);
        $this->s_post_tags($s_view, 'qa-q-view');
        $this->output('</div>');
    }

    function s_meta($s_view, $class) {
        $this->output('<span class="' . $class . '-avatar-meta">');
        $this->output('<span class="' . $class . '-meta">');
        $this->s_meta_content($s_view, $class);
        $this->s_meta_version($s_view);
        $this->output('</span>');
        $this->output('</span>');
    }

    function s_meta_content($s_view, $class) {
        $this->output('<span class="' . $class . '-what">' . $s_view['what'] . '</span>');
        $this->output('<span class="' . $class . '-when">' . $s_view['when'] . '</span>');
        $this->output('<span class="' . $class . '-who">' . $s_view['who'] . '</span>');
        if (!empty($s_view['what_2'])) {
            $this->output('<br/>');
            $this->output('<span class="' . $class . '-what">' . $s_view['what_2'] . '</span>');
            $this->output('<span class="' . $class . '-when">' . $s_view['when_2'] . '</span>');
            $this->output('<span class="' . $class . '-who">' . $s_view['who_2'] . '</span>');
        }
    }

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

    function s_view_content($s_view) {
        $this->output('<div class="qa-q-view-content">');
        $this->output('<div class="entry-content">');
        $this->output($s_view['desc']);
        $this->output('</div>');
        $this->output('</div>');
    }

    function s_post_tags($s_view, $class) {
        if (!empty($s_view['tags'])) {
            $post['q_tags'] = array();
            foreach ($s_view['tags'] as $tag) {
                $post['q_tags'][] = $this->generate_stag_html($tag);
            }
            $this->post_tags($post, $class);
        }
    }

    function s_list($s_list) {
        $this->output('<div class="qa-q-list qa-q-list-vote-disabled">');
        $this->s_list_items($s_list);
        $this->output('</div> <!-- END qa-q-list -->', '');
    }

    function s_list_items($s_list) {
        foreach ($s_list as $s_item) {
            $this->s_list_item($s_item);
        }
    }

    function s_list_item($s_item) {
        $this->output('<div class="qa-q-list-item">');

        $this->s_stats($s_item, 'qa-q-item');
        $this->s_item_main($s_item);
        $this->q_item_clear();

        $this->output('</div> <!-- END qa-q-list-item -->', '');
    }

    function s_item_main($s_item) {
        $this->output('<div class="qa-q-item-main">');
        $this->q_item_title($s_item);
        $this->s_meta($s_item, 'qa-q-item');
        $this->s_post_tags($s_item, 'qa-q-item');
        $this->output('</div>');
    }

    function generate_stag_html($tag) {
        return '<a href="../stag/' . $tag . '"'
                . ' class="qa-tag-link">'
                . $tag
                . '</a>';
    }

}
