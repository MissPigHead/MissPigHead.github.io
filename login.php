<?php
include "base.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Portal|Log in</title>
    <link href="https://fonts.googleapis.com/css2?family=Lalezar&display=swap&family=Staatliches&display=swap&family=Bebas+Neue&display=swap&family=Courgette&display=swap&family=Kavoon&display=swap&family=Seaweed+Script&display=swap&family=Yesteryear&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Clicker+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Marck+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/custom.css">
    <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
    <script src="./js/typed.js"></script>
    <script src="./js/jquery.easing.min.js"></script>
    <style>
        body {
            background: #fcf8f0;
            color: slategray;
            /* background: #f0fcf8; */
            /* background: #f0fcef; */
            /* background: #fadde1; */
            font-family: "Verdana", "Arial", "Helvetica", "sans-serif";
        }

        .bg-box{
            background: #fafafa;
            border-radius: 5px;
            box-shadow: 0 0 10px 0px #999;
            margin: 10vh auto;
            height: 80vh;
        }
        .deco-box{
            background: rgba(250, 150, 160, 0.4);
            position: absolute;
            top: 0;
            left: 0;
            height: 100vh;
            width: 42vw;
        }
        .form-box{
            /* align-self: center; */
            width: 90%;
            height: 50vh;
            margin: 0 5%;
        }
        .logo-box{ 
            color: #9a9a9a;
            width: 40%;
            z-index: 999;
            margin-top: 3vh;
        }
        .to-home{
            margin-top: 10px;
            font-size: 0.7rem;
            line-height: 1.2rem;
            height: 1.2rem;
            width: 3.2rem;
            text-align: center;
            background: rgba(250, 150, 160, 0.4);
            border-radius: 2px;
            box-shadow: 0 0 3px 0 #999;
        }
        .fg-pw{
            margin-top: 40%;
        }
        a{
            color: #9a9a9a;
        }
        a:hover{
            color: #444;
            text-decoration: none;
            transform: scale(1.1);
        }

        .position-relative input {
            text-indent: 20px;
        }
        i { 
            position: absolute; 
            left: 0.5rem;
            top: calc(50% - 0.5em);
        }
        input[type=submit]{
            color: slategray;
        }
        .KaushanScript{
            font-family: 'Kaushan Script', cursive;
        }
        .ClickerScript{
            font-family: 'Clicker Script', cursive;
        }
        .MarckScript{
            font-family: 'Marck Script', cursive;
        }
        .Ramabhadra{
            font-family: 'Ramabhadra', sans-serif;
        }
        @media(min-width:576px){
            /* .bg-box{ justify-content: end;} */
            .form-box{ width: 50%;}
        }
        @media (min-width: 768px) {
            .fg-pw{ margin-top: 70%;}
            .form-box{ width: 45%; margin:0 7.5%;}
        }
        @media (min-width: 992px) {
            .form-box{ width: 36%; margin:0 12%;}
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row bg-box ">
            <?php if(!isset($_SESSION['admin'])){ ?>
                <div class="d-none d-sm-block deco-box"></div>
                <div class="col-12 d-flex justify-content-end" style="height: 2rem;"><a href="./index.html"><div class="to-home">Home</div></a></div>
                <div class="d-none d-sm-block logo-box">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <img src="./image/00cat-256.png" alt="" class="my-3" style="width: 100px;">
                        <h3 class="ClickerScript font-weight-bolder">Ling's</h3>
                        <h5 class="ClickerScript font-weight-bolder">Admin Portal</h5>
                    </div>
                </div>
                <form action="?" class="form-box">
                    <div class="col-12 text-center Ramabhadra font-weight-bolder h2">Log in</div>
                    <div class="col-12 my-4">
                        <div class="my-2 position-relative">
                            <input class="col-12" type="text" name="id" placeholder="ID">
                            <i class="fa fa-user-circle-o"></i>
                        </div>
                        <div class="my-2 position-relative">
                            <input class="col-12 my-2" type="password" name="pw" placeholder="Password">
                            <i class="fa fa-key"></i>
                        </div>
                        <input class="col-12 text-center my-2" type="submit" value="Login">
                    </div>
                    <a href="#"><div class="col-12 text-center small fg-pw">Forget password?</div></a>
                </form>
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