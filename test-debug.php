<?php

if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
    header('Location: ../../');
    exit;
}

function print_array_recursive($array, $shift=' ') {
    foreach ($array as $key => $value) {
        echo $shift . "KEY: $key <br/>";
        if (is_array($value)) {
            print_array_recursive($value, $shift . '&nbsp&nbsp&nbsp');
        } else {
            echo $shift . "$value <br/>";
        }
    }
}
