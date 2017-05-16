<?php

/*
 * Author: Martin Znamenacek
 * Description: Debug feature.
 */

/*
 * Recursive function whitch prints php array.
 */
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
