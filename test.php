<?php
include_once "api/base.php";

$Ad=new DB("admin");
$user=$Ad->all()[0];
print_r($user['email']);
print_r($user['pw']);
// echo ($_POST['email']== && $_POST['pw']==$user['pw'])?1:0;
echo $user;

?>