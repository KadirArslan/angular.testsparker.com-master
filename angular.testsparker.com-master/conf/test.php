<?php

echo realpath('21313/../../xxx\\..\\..\\1231321');

if(isset($_GET["file"])){
$handle =fopen(realpath($_GET["file"]), "r");

echo fread($handle,filesize($_GET["file"]));

fclose($handle);
}
?>

asdada