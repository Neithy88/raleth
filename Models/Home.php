<?php

include('info.php');

$dbh = new PDO('mysql:host='. $host .';dbname='. $dbname, $user, $pass); 


function getAllTemplates(){
        global $dbh;
    
        $get_templates = $dbh->prepare('SELECT * FROM templates');
        $get_templates->execute();
        return $get_templates->fetchAll();
}

function addTemplate($nom, $url){
    global $dbh;
    
    $add_template = $dbh->prepare('INSERT INTO templates(nom, url) VALUES (?,?);');
    $add_template->execute([$nom, $url]);
}

function getLastMeme(){
    global $dbh;

    $last_meme = $dbh->query('SELECT MAX(id_meme) AS maxid, url FROM memes;');
    $last_meme = $last_meme->fetchAll();
    var_dump($last_meme);
    
    
}
getLastMeme();
?>