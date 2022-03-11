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

$username = $_GET['username'];
$sql = "SELECT count(activities.user_id) as activityCount, users.username, users.fullname FROM users INNER JOIN activities WHERE users.id=activities.user_id AND users.username='$username'";
$result = $conn->query($sql);
echo json_encode($result->fetch_all(MYSQLI_ASSOC));

$conn->close();