<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>{{TITLE}}</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body>
<div class="container">
{{HEADER}}
{{NAV}}
    <div>
        <h3>Ваша корзина</h3>
        <table border="1" cellpadding="5" cellspacing="0">
            <tr>
                <!-- <td>№</td> --><td>Наименование</td><td>Количество</td><td>Цена</td><td></td>
            </tr>
            {{CART}}
            <tr>
                <td colspan="5">Итого товаров на сумму: {{SUMM}} $.</td>
            </tr>
        </table><br>
        <form id="order" method="POST" action="/order/">
            <p>Укажите дополнительную информацию для оформления заказа</p>
            <br>Ваше имя<br>
            <input type="text" name="name"><br>
            Телефон<br>
            <input required type="text" name="phone"><br>
            Адрес доставки<br>
            <input type="text" name="adress"><br>
            <input type="submit" name="order" class='add-to-basket' value="Оформить заказ">
        </form>
    </div>
</div>        
{{FOOTER}}  
</body>
</html>