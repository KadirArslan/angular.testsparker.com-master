<?php
/**
 * Created by PhpStorm.
 * User: ns
 * Date: 11/15/2018
 * Time: 16:05
 */

header('access-control-allow-origin: *');

$token = md5(time());
$file = fopen("token.txt", "w") or die("Unable to open file!");
fwrite($file, $token);
fclose($file);

echo json_encode(['token' => $token]);