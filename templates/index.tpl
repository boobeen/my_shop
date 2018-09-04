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
	<div class="content">
		<div class="l-block">
			<p style="color: red; font: 600 24px/32px serif;">Внимание!!! Учебный проект. Цены недействительны.<br><br></p><p>Добро пожаловать в лучший магазин лучших телефонов.</p><p>Выбирайте, покупайте, пользуйтесь и радуйтесь.</p><p>А потом приходите к нам снова ;-)</p>
			<p>PS: Это моя первая работа, прошу строго не судить</p><br>
			<p>TODO:<br>1. Сохранение и отображение прошлых заказов для авторизованных пользователей.<br>2. Админка.</p>
			<p style="font: 600 24px/32px serif;"><br><br>Блок для размещения превьюшек статей из области мобильной цифровой техники, обзоров, тестов, сравнений.<br>А еще здесь будут новости ;-Р</p>
		</div>
		<div class="r-block">
			<h3>Новинки</h3>
			{{NEW_PRODS}}
			<h3>Хиты продаж</h3>
			{{HITS}}
		</div>
	</div>
</div>				
{{FOOTER}}	
</body>
</html>