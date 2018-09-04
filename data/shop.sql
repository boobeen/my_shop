-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Сен 04 2018 г., 19:15
-- Версия сервера: 5.7.20
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `brand_name`) VALUES
(1, 'apple'),
(2, 'samsung'),
(3, 'htc');

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `session_id` text NOT NULL,
  `id_good` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `adding_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `errors`
--

CREATE TABLE `errors` (
  `id` int(11) NOT NULL,
  `error` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `errors`
--

INSERT INTO `errors` (`id`, `error`) VALUES
(1, 'Данный Login уже занят'),
(2, 'Неверный Login или Password'),
(3, 'Выберите бренд из меню каталога');

-- --------------------------------------------------------

--
-- Структура таблицы `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `feed` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `s_desc` text NOT NULL,
  `f_desc` mediumtext NOT NULL,
  `s_img_name` text NOT NULL,
  `img_name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `brand_id`, `name`, `price`, `views`, `s_desc`, `f_desc`, `s_img_name`, `img_name`, `date`) VALUES
(1, 1, 'iPhone 6S', 1500, 1, 'iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S iPhone 6S ', 'iPhone 6s — смартфон корпорации Apple, работающий на iOS 9, представленные 9 сентября 2015 года. Смартфон представляет собой девятое поколение iPhone. Из-за многократной утечки информации, еще до официальной презентации был известен внешний вид iPhone 6s, технические характеристики, а также дата начала продаж. 27 августа 2015 года Apple разослала приглашения на предстоящую презентацию новых продуктов, в которой было сказано только: «Siri, дай мне подсказку», на что виртуальный помощник называл дату проведения мероприятия.  iPhone 6s отличается от своих предшественников более мощной аппаратной составляющей, а также экраном 3D Touch, чувствительным к силе нажатия. Размер оперативной памяти был увеличен до 2 Гб. В кнопку «Домой» установлен улучшенный сканер отпечатка пальца Touch ID 2.0, позволяющий практически мгновенно производить авторизацию на устройстве. Основная камера имеет разрешение 12 Мп с возможностью съёмки 4К видео с частотой 30 кадров/сек. Фронтальная камера имеет разрешение 5 Мп. Внешних отличий почти нет, кроме буквы «S» под надписью «iPhone» на задней части устройства. iPhone 6s, в отличие от предшественников, выпускается в четырёх цветах. К стандартным цветам (космическо-серый, серебристый и золотистый) в линейку был добавлен новый — «розовое золото». iPhone 6s основан на процессоре Apple A9 c сопроцессором M9, отвечающим за геопозицию и гироскоп. Объем оперативной памяти составляет 2 ГБ.  В отличие от своего предшественника, смартфоны получили экран с поддержкой технологии распознавания силы нажатия 3D Touch. Для более естественной тактильной отдачи используется Taptic Engine, позволяющий имитировать вибрацию разной частоты: от отдельных сильных толчков до высокочастотной вибрации. Объём аккумулятора составляет 1715 мАч. Для более высокой стойкости к царапинам, а также изгибу смартфона, при изготовлении корпуса используется сплав алюминия 7000 серии. iPhone 6s поступил в продажу 25 сентября в США, Канаде, Великобритании, Японии, Франции, Германии, Китае, Сингапуре, Новой Зеландии. Предзаказ в этих странах уже начался с 12 сентября. В России (а так же в 39 странах мира) старт продаж состоялся 9 октября 2015 года.  Смартфон доступен в четырёх цветах: серый космос, серебристый, золото, розовое золото. Объём памяти составляет 16, 32, 64 и 128 ГБ.', 'iphone_6s.png', 'iphone_6s.jpg', '2018-08-16 08:13:42'),
(2, 3, 'HTC U11', 1150, 5, 'Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC Это крутой телефон HTC', 'HTC U11 был представлен в качестве флагманского аппарата компании. Он обладает технологией Edge Sense, которая делает боковые грани сенсорными, чувствительными к давлению. Технические характеристики смартфона соответствуют его достаточно высокой цене. Гаджет построен на 8-ядерном решении Snapdragon 835, номинальная тактовая частота которого равна 2.45 ГГц. Здесь используется видеоускоритель Adreno 540, 4 либо 6 ГБ оперативной и 64 либо 128 ГБ постоянной памяти.  К недостаткам относится комбинированный слот, который заставляет выбирать между двумя SIM-картами и картой памяти microSD. Поддержка расширяемой встроенной памяти рассчитана 2 ТБ. Так или иначе, встроенный модуль LTE 4G обладает пропускной способностью в 1 Гбит/с (Cat.16). Кстати, лоток под сим-карты и microSD находится на верхней грани, кнопки регулировки громкости и питание находятся справа, USB Type-C и динамик громкой связи расположились снизу. Физическая кнопка \"Домой\" оказался на привычном для нее месте, под экраном.  Камера, которая находится сзади, оснащена 12-мегапиксельным сенсором (4272 x 2848 пикселей) и защищена сапфировым стеклом. В HTC U11 производитель использует технологию Ultrapixel третьего поколения. Сзади также присутствует LED-вспышка. Объектив выпирает, но совсем немного и выглядит эстетически. Фронталка получила 16-мегапиксельный сенсор, апертуру f/2.0 и возможность записи FHD-видео. Вспышка есть, но только экранная.  Телефон оказался очень удачным. По отзывам владельцев, аккумулятор на 3000 мАч выдерживает целый день активного использования, а заряжается менее чем за полтора часа. Благо компания HTC использует очень экономичную версию операционной системы с хорошо оптимизированным интерфейсом HTC Sense UI 9.', 'htc_u11.png', 'htc_u11.jpg', '2018-08-16 06:11:21'),
(3, 2, 'Samsung Galaxy S8', 1250, 9, 'Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung Это крутой телефон Samsung', 'Samsung Galaxy S8 – флагман 2017 года с изогнутым экраном Infinity Display диагональю 5.8-дюймов и разрешением 2960x1440 пикселей. Вся фронтальная панель защищена стеклом Gorilla Glass последнего поколения, а соотношение экрана к корпусу достигает 86.3%. Сверху над дисплеем разместилось небывалое ранее количество сенсоров, включая датчик света, приближения, сканер радужной оболочки глаза и камера с автофокусом.  Внизу под экраном нет ничего: механическая кнопка \"Домой\" превратилась в виртуальную, а сенсор отпечатков перекочевал на тыльную сторону корпуса и разместился рядом с объективом основной камеры. Согласно официальным характеристикам, Galaxy S8 получил новый 8-ядерный процессор Exynos 8895, который работает в тандеме с графикой Mali G71 MP20, а также 2 ГБ оперативной памяти и 64 ГБ постоянной типа UFS 2.1. Как и в Galaxy S7, здесь присутствует слот для карты памяти объемом до 256 ГБ.  Корпус по-прежнему водонепроницаемый и пылезащищенный. По словам руководителей Samsung, S8 сертифицирован по стандарту IP68, который подразумевает погружение под воду на глубину 1.5 метра на протяжении 30 минут. Производитель не отказался от 3.5 мм аудиоразъема, и даже комплектует свой смартфон наушниками от AKG, которые можно приобрести отдельно за 100 долларов.  Вы можете выбирать между черным, синим, золотым, серым и серебристым цветами.', 'samsung_galaxy_s8.png', 'samsung_galaxy_s8.jpg', '2018-08-16 07:29:12'),
(4, 1, 'iPhone 7', 1700, 3, 'iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 iPhone 7 ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'iphone_7.png', 'iphone_7.jpg', '2018-08-16 17:35:15'),
(5, 3, 'HTC Desire 10pro', 1475, 0, 'HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10proHTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10proHTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro HTC Desire 10pro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'htc_desire_10pro.png', 'htc_desire_10pro.jpg', '2018-08-17 07:12:00'),
(6, 2, 'Samsung Galaxy Note8', 1900, 0, 'Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8 Samsung Galaxy Note8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'samsung_galaxy_note8.png', 'samsung_galaxy_note8.jpg', '2018-08-17 09:01:36'),
(7, 1, 'iPhone SE', 1300, 5, 'iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE iPhone SE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'iphone_se.png', 'iphone_se.jpg', '2018-08-17 09:04:48'),
(8, 3, 'HTC One X9', 1570, 0, 'HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 HTC One X9 ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'htc_one_x9.png', 'htc_one_x9.jpg', '2018-08-17 11:08:44'),
(9, 2, 'Samsung Galaxy S9', 1920, 0, 'Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 Samsung Galaxy S9 ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Samsung_Galaxy_S9.png', 'Samsung_Galaxy_S9.jpg', '2018-08-17 11:19:38'),
(10, 1, 'iPhone 7+', 2000, 0, 'iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ iPhone 7+ ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'iphone_7_plus.png', 'iphone_7_plus.jpg', '2018-08-17 11:12:37'),
(11, 2, 'Samsung Galaxy S7', 1880, 0, 'Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 Samsung Galaxy S7 ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'samsung_galaxy_s7.png', 'samsung_galaxy_s7.jpg', '2018-08-17 11:14:49'),
(12, 3, 'HTC U12+', 2130, 0, 'HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ HTC U12+ ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'htc_u12_plus.png', 'htc_u12_plus.jpg', '2018-08-17 11:17:32'),
(13, 1, 'iPhone 8', 2220, 0, 'iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 iPhone 8 ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'iphone_8.png', 'iphone_8.jpg', '2018-08-17 11:22:23'),
(14, 1, 'iPhone X', 2300, 0, 'iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X iPhone X ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'iphone_x.png', 'iphone_x.jpg', '2018-08-17 11:23:33');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `session_id` text NOT NULL,
  `status` set('new','in_work','sent','done') NOT NULL DEFAULT 'new',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`(32));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `errors`
--
ALTER TABLE `errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
