<?php
date_default_timezone_set("Asia/Taipei");

class DB{
    private $dsn="mysql:host=localhost;dbname=webpage;charset=utf8";
    private $table;
    private $pdo;

    public function __construct($table)
    {
        $this->table=$table;
        $this->pdo=new PDO($this->dsn,"root","");
    }
}

$Sess=new DB("session");
$Per=new DB("personal");
$Img=new DB("img");
$Exp=new DB("experience");
$Int=new DB("introduction");
$Port=new DB("portfolio");
?>