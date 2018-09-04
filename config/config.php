<?php
define('SITE_ROOT', "../");
define('WWW_ROOT', SITE_ROOT . '/public/');

/* DB config */
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'shop');

define('DATA_DIR', SITE_ROOT . 'data');
define('LIB_DIR', SITE_ROOT . 'engine');
define('TPL_DIR', SITE_ROOT . 'templates');

define('SITE_TITLE', 'МАГАЗИН');
define('BIG_IMG_DIR', '/img/big/');
define('SMALL_IMG_DIR', '/img/small/');

//подгружаем основные функции
require_once(LIB_DIR . '/core.php');
require_once(LIB_DIR . '/router.php');
require_once(LIB_DIR . '/func_main.php');
require_once(LIB_DIR . '/func_news.php');
require_once(LIB_DIR . '/func_feeds.php');
require_once(LIB_DIR . '/func_auth.php');
require_once(LIB_DIR . '/db.php');
require_once(LIB_DIR . '/log.php');