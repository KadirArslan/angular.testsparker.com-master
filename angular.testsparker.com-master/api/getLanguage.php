<?php
/**
 * Created by PhpStorm.
 * User: ns
 * Date: 11/15/2018
 * Time: 16:05
 */

header('access-control-allow-origin: *');
header('content-type: application/json');

if (!isset($_GET['value']))
    die('value parameter is required');

$file = file_get_contents('languages.json');
$array = json_decode($file, true);
$items = array_column($array['itemListElement'], 'item');
$item_key = array_search($_GET['value'], array_column($items, 'name'));

$search = ['search' => $_GET['value']];
if($item_key !== false){
	$return = array_merge($array['itemListElement'][$item_key], $search);
} else {
	$return = array_merge(['message' => 'language not found'], $search);
}
echo json_encode($return);