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

// function getLastMeme(){
//     global $dbh;

//     $last_meme = $dbh->query('SELECT MAX(id_meme) AS oui FROM memes;');
//     while ($oui=$last_meme->fetch()){
//         $oui = $oui['oui'];
//     }

//     $jean = $dbh->query('SELECT url FROM memes WHERE id_meme = '.$oui.';');
//     $jean->fetch();
//     var_dump($jean);
// }
// getLastMeme();
?>