<?php
/**
 * Created by PhpStorm.
 * User: ns
 * Date: 11/15/2018
 * Time: 16:06
 */

header('access-control-allow-origin: *');

if (!isset($_GET['value']))
    die('value parameter is required');

$value = $_GET['value'];
$file = fopen("token.txt", "r") or die("Unable to open file!");
$token = fgets($file);
fclose($file);

if ($token == $value) {
    echo json_encode(['message' => '10.0.2.81']);
} else {
	echo json_encode(['message' => 'Not auth. Please enable "Allow Out of Scope XHRs"']);
}