<?php

/*
    Так называемый роутер, навигатор, главное место в движке,
    где определяется какая страница вызвана и выполняются
    необходимые действия для нее, а именно
    присваиваются, получаются, вычисляются значения
    для подстановки в шаблон, формируется переменная vars
    На входе имя запрашиваемой страницы
*/

function prepareVariables($page_name){
    $vars = [];    
    // в зависимости от того, какую страницу вызываем
    // такой блок кода для нее и выполняем
    switch($page_name){

        case "index":
            // если вызвана главная страница, то получим 10 последних добавленных в базу товаров и 10 хитов просмотров
            $vars["new_prods"] = getNewProds();
            $vars["hits"] = getHits();
            $vars["title"] = "Главная";          
            break;    

        case "catalog":
            // если вызван общий каталог, то получим все имеющиеся товары из БД
            // если вызвана страница бренда, то получим выборку из каталога по бренду
            $brand = "catalog";
            if(isset($_GET['brand']))
                $brand = (string)htmlspecialchars(strip_tags($_GET['brand']));
            $vars["all_brands"] = getAllBrandsName();            
            $vars["goods"] = getGoods($brand);            
            $vars["title"] = "Каталог товаров";
            if(empty($vars["goods"]))
                header("Location: /error/?err=3");
                // $vars["goods"] = "<h3>Товаров марки " . strtoupper($brand) . " пока нет.</h3>";
            break;

        case "good_page":
            // если вызвана страница товара, то получим данные о товаре
            $vars = getGoodContent($_GET['id']);
            $vars["title"] = $vars["name"];
            // если нажата кнопка "купить", то добавляем товар в корзину
            if(isset($_POST["buy"]))
                addToCart($_GET['id']);
            break; 

        case "cart":
            // если вызвана страница корзины, то получим данные о товарах в корзине
            $vars["cart"] = getCart();
            $vars["summ"] = getSumm();
            $vars["title"] = "Корзина";
            break;

        case "empty_cart":
            // если вызвана страница пустой корзины, то получим только {{TITLE}}
            $vars["title"] = "Корзина";
            break;

        case "delitem":
            // если нажата ссылка удалить товар, то удаляем запись из базы          
            if(isset($_GET["id"]))
                delItem($_GET["id"]);
            break;

        case "order":
            // если вызвана страница оформления заказа, то оформляем заказ и выводим сообщение
            if(isset($_GET["num"])){
                $vars["title"] = "Заказ";
                $vars["num_order"] = $_GET["num"];
            } else 
                createOrder();
            break;

        case "feedback":
            // если вызвана страница отзывов, то получим отзывы из базы          
            if(isset($_POST["name"]))
                if(($_POST["name"] != "") && ($_POST["feed"] != ""))
                setFeedback();
            $vars["feeds"] = getFeedbacks();
            $vars["title"] = "Отзывы";
            ($_SESSION["is_admin"]) ? $vars["delfeed"] = "<a href='/delfeed/?id={{ID}}'>Удалить</a>" : $vars['delfeed'] = " ";

            break; 

        case "delfeed":
            // если нажата ссылка удалить отзыв, то удаляем запись из базы
            if(isset($_GET["id"]))
                delFeed($_GET["id"]);
            break;

        case "payment":
            $vars["title"] = "Оплата";
            break;

        case "delivery":
            $vars["title"] = "Доставка";
            break;

        case "contacts":
            $vars["title"] = "Контакты";
            break;

        case "auth":
            $vars["title"] = "Вход";
            break;

        case "login":
            // если нажата кнопка входа, проверяем, есть ли такой 
            // пользователь с таким паролем в базе, и авторизуем
            auth();
            break;

        case "register":
            // если нажата кнопка создать пользователя
            regUser();
            break;

        case "logout":
            // если нажата кнопка выхода    
            session_destroy();
            header("Location: /");
            break;

        case "error":
            // если возникла ошибка, выводим на экран
            if(isset($_GET["err"]))
                $vars["err_message"] = getErrorMessage($_GET["err"]);
            else
                $vars["err_message"] = "Что-то пошло не так";
            break;

    }

    // добавляем общие переменные для всех страниц
    $vars["header"] = file_get_contents("../templates/header.tpl");
    $vars["nav"] = file_get_contents("../templates/nav.tpl");
    $vars["footer"] = file_get_contents("../templates/footer.tpl");
    $vars["nav_in"] = getAllBrandsName(); // все бренды в выпадающем меню
    $vars["cart_count"] = cartCount(); // количество товаров в корзине
    $vars["in_out"] = inOutSwitch(); // если пользователь авторизован, меняем кнопку входа в меню

    // возвращаем готовый массив значений vars для шаблона
    return $vars;
}