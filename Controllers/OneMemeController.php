<?php
//   Set the Content Type

include('Models/OneMeme.php');

$get_url_template = templateUrl($_GET['id_template']);
foreach ($get_url_template as $value){
    $url_template = $value['url'];
    $ext = pathinfo($url_template)['extension'];
}

switch ($ext) {
    case 'png':
        header('Content-type: image/png');
        $batou = imagecreatefrompng($url_template);
    break;

    case 'jpg':
        header('Content-type: image/jpg');
        $batou = imagecreatefromjpeg($url_template);
    break;

    case 'gif':
        header('Content-type: image/gif');
        $batou = imagecreatefromgif($url_template);
    break;
}

    // Allocate A Color For The Text
    $black = imagecolorallocate($batou, 0, 0, 0);

    // Set Path to Font File
    $font_path = '/var/www/html/raleth/impact.ttf';

    // Set Text to Be Printed On Image
    $texthaut = "This is a batou!";
    $textbas = "mais en fait non";

    // Print Text On Image
    imagettftext($batou, 30, 0, 0, 200, $black, $font_path, $texthaut);
    imagettftext($batou, 30, 0, 0, 300, $black, $font_path, $textbas);
    // $_GET['nom_meme']
    $meme = addMeme("non", $_GET['id_template']);

    // Send Image to Browser
    imagejpeg($batou, $meme);
    imagejpeg($batou);
    // Clear Memory
    imagedestroy($batou);

include('Views/OneMemeView.php');
