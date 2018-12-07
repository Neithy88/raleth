<?php

include('info.php');

$dbh = new PDO('mysql:host='. $host .';dbname='. $dbname, $user, $pass); 


function templateUrl($id_template){
    global $dbh;

    $get_template_url = $dbh->prepare('SELECT url FROM templates WHERE id_template=?;');
    $get_template_url->execute([$id_template]);
    
    return $get_template_url->fetchAll();
}

function addMeme($meme_nom, $meme_url, $id_template){
    global $dbh;
    
    $add_meme = $dbh->prepare('INSERT INTO memes(nom, url, id_template) VALUES (?,?,?);');
    $add_meme->execute([$meme_nom, $meme_url, $id_template]);
}

?>