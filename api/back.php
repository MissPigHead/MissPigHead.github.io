<?php
  include_once "base.php";

  $Cont=new DB("contact");
  $Intro=new DB("introduction");
  $Per=new DB("personal");

  
  $Array['contact']=$Cont->all();
  $Array['intro']=$Intro->all();
  $Array['per']=$Per->all();
  // print_r($Array) ;  
  // echo "<hr>";
  echo json_encode($Array);
  // echo "<hr>";
  // echo json_encode($Array['contact']); 
  // echo "<hr>";
  // echo json_encode($Array['intro']); 
  // echo "<hr>";
  // echo json_encode($Array['per']); 
 
?>