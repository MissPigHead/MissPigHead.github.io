<?php
include "base.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administration</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Lalezar&display=swap&family=Staatliches&display=swap&family=Bebas+Neue&display=swap&family=Courgette&display=swap&family=Kavoon&display=swap&family=Seaweed+Script&display=swap&family=Yesteryear&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/custom.css">
    <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
    <script src="./js/typed.js"></script>
    <script src="./js/jquery.easing.min.js"></script>
    <style>
        body {
            background: #fadde1;
            font-family: "Verdana", "Arial", "Helvetica", "sans-serif";
        }

        .input-row {
            margin: 10px auto;
        }
    </style>
</head>

<body>
    <div class="container py-5">
        <div class="row justify-content-center">
            <?php if(isset($_SESSION['admin'])){ ?>
                <div class="col-sm-8 col-lg-5 row my-3 justify-content-center h2">
                    Administration
                </div>
                <div class="w-100"></div>
                <div class="col-sm-8 col-lg-5 row my-1">
                    <div class="col-4">ID</div>
                    <input class="col-8" type="text" name="" id="">
                </div>
                <div class="w-100"></div>
                <div class="col-sm-8 col-lg-5 row my-1">
                    <div class="col-4">Password</div>
                    <input class="col-8" type="password" name="" id="">
                </div>
                <div class="col-sm-8 col-lg-5 row my-1 justify-content-center">
                    <input class="col-4 m-1" type="submit" value="Submit">
                    <input class="col-4 m-1" type="reset" value="Reset">
                </div>
            <?php }else{ ?>
                <div class="col-md-10">
                    <ul class="nav nav-tabs">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Resume</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="login.php?do=per">Personal Information</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="login.php?do=cont">Contact Information</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="login.php?do=edu">Education</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="login.php?do=exp">Experience</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="login.php?do=intro">Introduction</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.php?do=obj">Object</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Skill</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.php?do=port">Portfolio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.php?do=album">Album</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-10">
                    <?php
                    if(!empty($_GET['do'])){
                        include "{$_GET['do']}.php";
                    }
                    ?>
                </div>
            <?php } ?>
        </div>
    </div>
</body>

</html>