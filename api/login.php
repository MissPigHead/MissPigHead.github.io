<?php
include_once "base.php";

$Ad=new DB("admin");

$user=$Ad->all()[0];
// print_r($user);
// print_r($_POST);

echo ($_POST['email']==$user['email'] && $_POST['pw']==$user['pw'])?1:0;
// echo $user;
?>