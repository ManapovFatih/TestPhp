<?php
    $count=filter_var(trim($_GET['count']), FILTER_SANITIZE_STRING);
    $name=filter_var(trim($_GET['name']), FILTER_SANITIZE_STRING);
    $mysql = new mysqli('localhost', 'root', '', 'register-bd'); 
    $sql = ("SELECT `val` FROM `valute` WHERE `name` = '$name'");
    $result = $mysql->query($sql);
    $res = mysqli_fetch_all($result);
    $RUB = $count * $res[0][0];
    echo $count, " ", $name, " == ", $RUB, " рублей";
    exit();  
    header('Location: /TestPhp/index.php');
?>