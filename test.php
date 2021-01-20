<?php
include_once "api/base.php";

$Ad=new DB("admin");
$user=$Ad->all()[0];
print_r($user['email']);
print_r($user['pw']);
print_r($_SESSION);
// echo ($_POST['email']== && $_POST['pw']==$user['pw'])?1:0;
echo $user;

?>
<script>
  console.log($_SESSION);
</script>