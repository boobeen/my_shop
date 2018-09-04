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
	<div class="content-product">
		<div class="brief">
			<h2>Описание товара</h2>
			<p>{{S_DESC}}</p>
		</div>
		<div class="spec">
			<h2>Характеристики товара</h2>
			<a href="/img/big/{{IMG_NAME}}" target="_blank"> <img src="/img/small/{{S_IMG_NAME}}" alt="{{TITLE}}" title="{{TITLE}}"> </a>
			<ul>
				<li>смартфон, iOS 9</li>
				<li>экран 4.7", разрешение 1334x750</li>
				<li>камера 12 МП, автофокус, F/2.2</li>
				<li>память 32 Гб, без слота для карт памяти</li>
				<li>3G, 4G LTE, LTE-A, Wi-Fi, Bluetooth, NFC, GPS, ГЛОНАСС</li>
				<li>вес 143 г, ШxВxТ 67.10x138.30x7.10 мм</li>
			</ul>
			<div class="price left">
				<b>Цена: {{PRICE}} $</b>
			</div class="price">
		</div>
		<form method="post">
			<button id="buy" type="submit" name="buy"><img src="/img/buy_button.png"></button>
		</form>
		<div class="full">
			<h2>Подробное описание товара</h2>
			{{F_DESC}}
		</div>
	</div>
</div>
{{FOOTER}}
</body>
</html>
