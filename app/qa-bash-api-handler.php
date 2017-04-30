<?php

require_once QA_INCLUDE_DIR . 'qa-base.php';

function check_script($user, $repo, $path, $ref) {
    $response = callAPI("GET", "https://api.github.com/repos/$user/$repo/contents/$path?ref=$ref");
    $decode = json_decode($response, true);
    echo "<p>$response</p>";
    require_once __DIR__ .  '/../app/test-debug.php';
    print_array_recursive($decode);

    return isset($decode['message']);
}

function callAPI($method, $url, $data = false) {
    $curl = curl_init();

    switch ($method) {
        case "POST":
            curl_setopt($curl, CURLOPT_POST, 1);
            if ($data) {
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            }
            break;
        case "PUT":
            curl_setopt($curl, CURLOPT_PUT, 1);
            break;
        default:
            if ($data) {
                $url = sprintf("%s?%s", $url, http_build_query($data));
            }
    }
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

    $result = curl_exec($curl);
    curl_close($curl);
    return $result;
}
