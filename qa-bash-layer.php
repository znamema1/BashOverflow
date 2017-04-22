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
        $this->s_view_stats($s_view);
        $this->s_view_main($s_view);
        $this->q_view_clear($s_view);
        $this->output('</div> <!-- END qa-s-view -->', '');
    }

    function s_view_stats($s_view) {
        $this->output('<div class="qa-q-view-stats">');
        $this->s_voting($s_view);
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
        // priprava na vote
    }

    function s_vote_count($s_view) {
        $this->output('<div class="qa-vote-count qa-vote-count-net">');
        $this->output('<span class="qa-netvote-count">');
        $this->output('<span class="qa-netvote-count-data">', @$s_view['score'], '</span>');
        $this->output('<span class="qa-netvote-count-pad"> votes</span>');
        $this->output('</span>');
        $this->output('</div>');
    }

    function s_view_main($s_view) {
        $this->output('<div class="qa-q-view-main">');
        $this->s_view_meta($s_view);
        $this->s_view_content($s_view);
        $this->s_post_tags($s_view, 'qa-q-view');
        $this->output('</div>');
    }

    function s_view_meta($s_view) {
        $this->output('<span class="qa-q-view-avatar-meta">');
        $this->output('<span class="qa-q-view-meta">');
        $this->s_view_meta_content($s_view, 'qa-q-view');
        $this->s_view_meta_version($s_view);
        $this->output('</span>');
        $this->output('</span>');
    }

    function s_view_meta_content($s_view, $class) {
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

    function s_view_meta_version($s_view) {
        if (isset($s_view['versions'])) {
            $this->output('<span>');
            $this->output('<select>');
            foreach ($s_view['versions'] as $version) {
                $this->output('<option value = ' . $version . '>' . $s_view['version_label'] . ' ' . $version . '</option>');
            }

            $this->output('</select>');
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

    function s_list($part) {
        $this->output($part);
    }

    function generate_stag_html($tag) {
        return '<a href="./stag/' . $tag . '"'
                . ' class="qa-tag-link">'
                . $tag
                . '</a>';
    }

}
