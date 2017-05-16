<?php

/*
 * Author: Martin Znamenacek
 * Description: Secures communication with Script Execution Service.
 */

require_once QA_INCLUDE_DIR . 'qa-base.php';

/*
 * Sends run script request to the Script Execution Service.
 * Retruns result of execution.
 */
function api_execute_script($data) {
    $url = qa_opt('bashoverflow_server_url');
    $json = json_encode($data);

    return callAPI($url, $json);
}


/*
 * Creates curl POST call.
 */
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
