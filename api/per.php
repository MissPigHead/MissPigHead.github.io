<?php
include_once "base.php";

// $Cont=new DB("contact");
$Intro=new DB("introduction");
$Per=new DB("personal");

// $cont=$Cont->all();
$intro=$Intro->all();
$per=$Per->all();

// print_r($cont);
var_dump($intro);
echo "<hr>";
var_dump($per);
// https://www.footmark.info/programming-language/php/php-json/

echo "<hr>";

$Array['Apple']['System'] = "iOS";
$Array['Apple']['Device'] = "iPhone";
$Array['Google']['System'] = "Android";
$Array['Google']['Device'] = "Pixel";
echo json_encode($Array); 
//Ans: {"Apple":{"System":"iOS","Device":"iPhone"},"Google":{"System":"Android","Device":"Pixel"}}
echo "<hr>";
$Json = '{"Apple":{"System":"iOS","Device":"iPhone"},"Google":{"System":"Android","Device":"Pixel"}}';
print_r(json_decode($Json, True));
// Ans:
// Array
// (
//    [Apple] => Array
//        (
//            [System] => iOS
//            [Device] => iPhone
//        )
//    [Google] => Array
//        (
//            [System] => Android
//            [Device] => Pixel
//        )
//)


?>