<?php

// функция возвращает список брендов из БД
function getAllBrandsName(){
    $sql = "SELECT * FROM `brand` ORDER BY `brand_name` ASC";
    return getAssocResult($sql);
}

// функция возвращает товары из БД
function getGoods($case){
    if($case == "catalog")
        $sql = "SELECT `id`, `name`, `s_img_name`, `price` FROM `goods` ORDER BY views DESC";
    else
        $sql = "SELECT `goods`.`id`, `brand_id`, `name`, `s_img_name`, `price` FROM `goods`, `brand` WHERE `brand_id` = `brand`.`id` AND `brand_name` = '{$case}' ORDER BY views DESC";
    return getAssocResult($sql);
}

// функция возвращает список 10 новинок из БД
function getNewProds(){
    $sql = "SELECT `id`, `name`, `s_img_name`, `price` FROM `goods` ORDER BY date DESC LIMIT 12";
    return getAssocResult($sql);
}

// функция возвращает список 10 хитов из БД
function getHits(){
    $sql = "SELECT `id`, `name`, `s_img_name`, `price` FROM `goods` ORDER BY views DESC LIMIT 12";
    return getAssocResult($sql);
}

// функция возвращает информацию о товаре из БД по id
function getGoodContent($id){
    $id = (int)$id;
    $sql = "SELECT * FROM goods WHERE id = {$id}";
    $good = getAssocResult($sql);
    // в случае если товара нет, вернем пустое значение    
    (isset($good[0])) ? $result = $good[0] : $result = [];
    return $result;
}

// добавление товара в корзину
function addToCart($id){
    $id = (int)$id;
    $session_id = session_id();
    // проверяем, есть ли уже такой товар в корзине
    $sql = "SELECT `count` FROM `cart` WHERE `session_id` = '{$session_id}' AND `id_good` = '{$id}'";
    $res = getAssocResult($sql);
    $count = $res[0]["count"];
    if(is_null($count))
        $sql = "INSERT INTO `cart` (`session_id`, `id_good`, `count`) VALUES ('{$session_id}', '{$id}', 1)";
    else
        $sql = "UPDATE `cart` SET `count` = `count`+1 WHERE `session_id` = '{$session_id}' AND `id_good` = '{$id}'";
    executeQuery($sql);
    header("Location: /catalog/");
}

// получение корзины товаров из базы
function getCart(){
    $session_id = session_id();
    $sql = "SELECT name, price, id_good, count, `cart`.`id` FROM goods, cart WHERE session_id = '{$session_id}' AND id_good = `goods`.`id`";
    $cart = getAssocResult($sql);
    if(!isset($cart[0]))
        header("Location: /empty_cart/");
    return $cart;
}

// получение общей суммы товаров в корзине
function getSumm(){
    $session_id = session_id();
    $sql = "SELECT SUM(`price`*`count`) as `summ` FROM `cart`, `goods` WHERE `goods`.`id` = `id_good` AND `session_id` = '{$session_id}'";
    $summ = getAssocResult($sql);
    return $summ[0]["summ"];
}

// удаление товаров из корзины
function delItem($id){
    $id=(int)$id;
    $sql = "DELETE FROM cart WHERE id = {$id}";
    executeQuery($sql);
    header("Location: /cart/");
}

// создание заказа из корзины
function createOrder(){
    $session_id = session_id();
    $db_link = getConnection();
    $name = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['name'])));
    $phone = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["phone"])));
    $adress = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST["adress"])));
    $sql = "INSERT INTO orders (`login`, `session_id`, `name`, `phone`, `adress`) VALUES ('{$_SESSION["login"]}', '{$session_id}', '{$name}', '{$phone}', '{$adress}')";
    executeQuery($sql);

    // получение номера заказа из базы
    $sql = "SELECT `id` FROM `orders` WHERE `session_id` = '{$session_id}'";
    $num_order = getAssocResult($sql);
    $num_order = $num_order[0]["id"];

    // обновляем ID сессии для очистки корзины и возможности создания новой          
    session_regenerate_id();
    header("Location: /order/?num={$num_order}");
}

// количество товаров в корзине
function cartCount(){
    $session_id = session_id();
    $sql = "SELECT SUM(count) as sum_goods FROM cart
            WHERE session_id = '{$session_id}'";
    $res = getAssocResult($sql);
    $res = $res[0]["sum_goods"];
    ($res !== null) ? $res = " ({$res})" : $res = " ";
    return $res;    
}

// получение сообщения об ошибке
function getErrorMessage($id){
    $id = (int)$id;
    $sql = "SELECT error FROM errors WHERE id = {$id}";
    $err = getAssocResult($sql);
    $err = $err[0]["error"];
    return $err;
}