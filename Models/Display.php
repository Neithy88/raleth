<?php

include('info.php');

$dbh = new PDO('mysql:host='. $host .';dbname='. $dbname, $user, $pass); 

function getLastMeme(){
    global $dbh;

    $last_id = $dbh->query('SELECT MAX(id_meme) as mymax FROM memes;');
    $last = $last_id->fetchAll();
    foreach($last as $value){
        $max = $value['mymax'];
    }

    $last = $dbh->prepare("SELECT url FROM memes WHERE id_meme = ?");
    $last->execute([$max]);
    
    $lasturl = $last->fetchAll();
    return $lasturl;
}

function getOneMeme($id_meme){
    
}