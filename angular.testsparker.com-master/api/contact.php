<?php
/**
 * Created by PhpStorm.
 * User: ns
 * Date: 11/15/2018
 * Time: 16:05
 */

header('access-control-allow-origin: *');
header('Content-Type: application/json');

if (!isset($_GET['email']))
    die('email parameter is required');

if (!isset($_GET['range']))
    die('range parameter is required');

$email = $_GET['email'];
$range = $_GET['range'];
$response = ['messages' => []];
$response['result'] = 'success';

if (filter_var($email, FILTER_VALIDATE_EMAIL))
    $response['messages'][] = 'Your message successfully sent to 10.0.0.21';

if (strlen($range) >= 5 && strlen($range) <= 8)
    $response['messages'][] = 'Your message successfully sent to 10.0.0.22';

if (count($response['messages']) == 0){
    $response['messages'][] = 'Please send valid form';
	$response['result'] = 'error';
}

echo json_encode($response);