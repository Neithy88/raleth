<?php

include('info.php');

$dbh = new PDO('mysql:host='. $host .';dbname='. $dbname, $user, $pass); 


function templateUrl($id_template){
    global $dbh;

    $get_template_url = $dbh->prepare('SELECT url FROM templates WHERE id_template=?;');
    $get_template_url->execute([$id_template]);
    
    return $get_template_url->fetchAll();
}

function addMeme($meme_nom, $id_template){
    global $dbh;
    $meme_id = $dbh->query('SELECT MAX(id_meme) AS id_meme FROM memes;');
    $meme_new_id = $meme_id->fetch()['id_meme']+1;
    $meme_url = "memes/" .  $meme_new_id . ".jpg";
    
    $add_meme = $dbh->prepare('INSERT INTO memes(nom, url, id_template) VALUES (?,?,?);');
    $add_meme->execute([$meme_nom, $meme_url, $id_template]);
    
    return $meme_url;
}

?>