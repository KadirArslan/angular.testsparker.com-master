<?php
/**
 * Created by PhpStorm.
 * User: ns
 * Date: 11/15/2018
 * Time: 16:05
 */

header('access-control-allow-origin: *');
header('content-type: image/png');
echo file_get_contents('../avatars/' . $_GET['file']);