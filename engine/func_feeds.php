<?php

// функция возвращает массив всех отзывов из БД
function getFeedbacks(){
    $sql = "SELECT * FROM feedbacks ORDER BY date DESC";
    return getAssocResult($sql);
}

function setFeedback(){
    $db_link = getConnection();
    $name = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["name"])));
    $email = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["email"])));
    $feed = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["feed"])));
    $sql = "INSERT INTO feedbacks (`name`, `email`, `feed`) VALUES ('{$name}', '{$email}', '{$feed}')";
    executeQuery($sql);
    header("Location: /feedback/");
}

function delFeed($id){
    $id=(int)$id;
    $sql = "DELETE FROM feedbacks WHERE id = {$id}";
    executeQuery($sql);
    header("Location: /feedback/");
}