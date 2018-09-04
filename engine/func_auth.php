<?php

// авторизация пользователя
function auth(){
    $db_link = getConnection();
    $login = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["login"])));
    $pass = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["pass"])));
    $sql = "SELECT `login`, `pass` FROM `users` WHERE `login` = '{$login}' AND `pass` = '{$pass}'";
    $login = getAssocResult($sql);
    $login = $login[0]["login"];
    if ($login !== null){
        $_SESSION["login"] = $login;
        if ($login == "superAdmin")
            $_SESSION["is_admin"] = true;
        header("Location: /");
    } else
        header("Location: /error/?err=2");
}

// регистрация нового пользователя
function regUser(){
    $db_link = getConnection();
    $login = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["login"])));
    $pass = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["pass"])));
    $email = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["email"])));
    $sql = "INSERT INTO `users` (`login`, `pass`, `email`) VALUES ('{$login}', '{$pass}', '{$email}')";
    $login = executeQuery($sql);
    ($login) ? $_SESSION["login"] = $login : header("Location: /error/?err=1");
}

// замена кнопки входа на выход в меню
function inOutSwitch(){
    (!isset($_SESSION["login"])) ? $res = file_get_contents("../templates/nav_link_login.tpl") : $res = file_get_contents("../templates/nav_link_logout.tpl");
    return $res;
}