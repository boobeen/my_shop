<?php

//Константы ошибок
define('ERROR_NOT_FOUND', 1);
define('ERROR_TEMPLATE_EMPTY', 2);

/*
  Обрабатывает указанный шаблон, подставляя нужные переменные
  Если во входных параметрах массив не указан, назначим
  пустой массив variables
*/
function renderPage($page_name, $variables = [])
{
    //дополним до полного имени файл шаблона из имени страницы page_name
    $file = TPL_DIR . "/" . $page_name . ".tpl";

    //Если шаблон отсутствует выведем ошибку
    if (!is_file($file)) {
        echo 'Template file "' . $file . '" not found';
        exit(ERROR_NOT_FOUND);
    }

    //Если шаблон есть но пустой тоже выведем ошибку
    if (filesize($file) === 0) {
        echo 'Template file "' . $file . '" is empty';
        exit(ERROR_TEMPLATE_EMPTY);
    }

    // если переменных для подстановки не указано, просто
    // возвращаем шаблон как есть
    if (empty($variables)) {
        $templateContent = file_get_contents($file);
    } else {
        $templateContent = file_get_contents($file);

        // заполняем значениями если variables не пустая и нужно делать замену
        $templateContent = pasteValues($variables, $page_name, $templateContent);
    }
    //возвращаем текст шаблона
    return $templateContent;
}
/*
  Функция замены значений в шаблоне по массиву замен variables
  Если массив variables двумерный то замена происходит по дополнительному шаблону
  Например variables:
  [
    "newsfeed"=>[
            "news1"=>"Текст новости 1",
            "news1"=>"Текст новости 1",
            "news1"=>"Текст новости 1"    
          ]
  ]
  тогда поле {{newsfeed}} будет заменено не просто текстом, а по шаблону из файла
  news_newsfeed_item.tpl имя которого система постоит сама
*/
function pasteValues($variables, $page_name, $templateContent){
    //перебираем массив замен
    foreach ($variables as $key => $value) {
        //Если массив двумерный, т.е. не одно значение для подстановки
        //то выполним подстановку через дополнительный шаблон
        if ($value != null) {
            // собираем ключи
            $p_key = '{{' . strtoupper($key) . '}}';

            if(is_array($value)){
                // замена массивом
                $result = "";
                foreach ($value as $value_key => $item){
                    //сформируем имя дополнительного шаблона
                    $itemTemplateContent = file_get_contents(TPL_DIR . "/" . $key . "_item.tpl");

                    //выполним замену по дополнительному шаблону
                    foreach($item as $item_key => $item_value){
                        $i_key = '{{' . strtoupper($item_key) . '}}';
                        $itemTemplateContent = str_replace($i_key, $item_value, $itemTemplateContent);
                    }
                    //формируем общую строку с шаблоном уже с подставленными значениями
                    $result .= $itemTemplateContent;
                }
            } else
                //если подставляется просто значение, его и вернем
                $result = $value;
            //произведем основную замену элементов в шаблоне
            $templateContent = str_replace($p_key, $result, $templateContent);
        }
    }
    //вернем строку с готовым шаблоном со вставленными элементами
    return $templateContent;
}