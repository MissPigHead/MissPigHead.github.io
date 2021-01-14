<?php
header("Content-type:application/json");
// 註冊賬號驗證

$username = $_POST["id"];//獲取表單POST過來的使用者名稱
$password = $_POST["w"];//獲取表單POST過來的密碼

//表單過濾

$user = trim($username);//過濾空格
$psw = trim($password);//過濾空格

//開始判斷

if($user == "" && $psw == ""){
    // echo "[{"result":"賬號和密碼都沒填呢！"}]";
}else if ($user == "") {
    // echo "[{"result":"賬號還沒填呢"}]";
}else if ($psw == "") {
    // echo "[{"result":"密碼還沒填呢"}]";
}else{

    // 資料庫連線
    $con = mysql_connect("localhost","root","0");
    mysql_select_db("test", $con);
    mysql_query("SET NAMES UTF8");


    //校驗MD5密碼
    $md5psw = MD5($psw);

    //查詢資料庫賬號密碼是否一致
    $exist = mysql_query("SELECT * FROM userlist WHERE username = `$user` AND password = `$md5psw`");
    $exist_result = mysql_num_rows($exist);
    if($exist_result){
        // echo "[{"result":"登陸成功"}]";
    }else{
        // echo "[{"result":"fail"}]";
    }
}
?>