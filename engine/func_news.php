<?php

//функция возвращает массив всех новостей
function getNews(){
    $sql = "SELECT id_news, news_title, news_preview FROM news";
    $news = getAssocResult($sql);
    print_r($news);
    return $news;
}
//функция удаления новости по ее номеру
function delNews($idx){
    $sql = "DELETE FROM `news` WHERE `news`.`id_news` = {$idx}";
    executeQuery($sql);

}
//функция вовзращает текст полной новости по ее номеру
function getNewsContent($id_news){
    $id_news = (int)$id_news;

    $sql = "SELECT * FROM news WHERE id_news = ".$id_news;
    $news = getAssocResult($sql);

    //В случае если новости нет, вернем пустое значение
    $result = [];
    if(isset($news[0]))
        $result = $news[0];

    return $result;
}