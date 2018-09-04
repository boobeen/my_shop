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
		<div class="feedbacks">
		{{FEEDS}}
		</div>
		<div class="send_me">
			<h3>Оставьте здесь свой отзыв</h3>		
			<form method="post">
				<p><input type="text" name="name" placeholder="Ваше имя"></p>
				<p><input type="text" name="email" placeholder="Ваш e-mail (для ответа, на странице виден не будет)"></p>
				<p><textarea name="feed" cols="50" rows="16" placeholder="Введите текст сообщения"></textarea></p>
				<p><input type="submit" value="Отправить"></p>
			</form>
		</div>
	</div>
</div>				
{{FOOTER}}	
</body>
</html>