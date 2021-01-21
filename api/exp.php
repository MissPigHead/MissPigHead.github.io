<?php
include_once "base.php";

$Exp=new DB("experience");
$exp=$Exp->all();

echo json_encode($exp);
?>