<?php

require_once QA_INCLUDE_DIR . 'qa-base.php';

function api_execute_script($data) {
    
    $json = json_encode($data); 
    return callAPI("http://localhost:8080/Executor-1.0/runner", $json);
}

function callAPI($url, $data) {
    $curl = curl_init();

    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($curl, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json',
        'Content-Length: ' . strlen($data)
    ));
    curl_setopt($curl, CURLOPT_POST, 1);
    curl_setopt($curl, CURLOPT_HEADER, 0);

    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);

    $result = curl_exec($curl);

    curl_close($curl);
    return $result;
}
