<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>{{TITLE}}</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
<div class="container">
{{HEADER}}
{{NAV}}
    <div class="auth">    
        <div class="login-page">
            <div class="form">
                <form class="register-form" action="/register/" method="POST">
                    <input type="text" name="login" placeholder="username" required/>
                    <input type="password" name="pass" placeholder="password" required/>
                    <input type="text" name="email" placeholder="email address" required/>
                    <button>Создать</button>
                    <p class="message">Уже зарегистрированы? <a href="#">Войдите</a></p>
                </form>
                <form class="login-form" action="/login/" method="POST">
                    <input type="text" name="login" placeholder="username" required/>
                    <input type="password" name="pass" placeholder="password" required/>
                    <button>Войти</button>
                    <p class="message">Не зарегистрированы? <a href="#">Создайте аккаунт</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
{{FOOTER}}
<script type="text/javascript">
    $('.message a').click(function(){
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
    });
</script>
</body>
</html>