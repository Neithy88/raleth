<?php
//   Set the Content Type

include('Models/Home.php');

$get_all_templates = getAllTemplates();


if(isset($_FILES['fichier'])) {
    $_dossier = 'img/';
    $temp_chemin = $_FILES['fichier']['tmp_name'];
    $_fichier = basename ($_FILES['fichier']['name']);

    $path_parts = pathinfo($_fichier);
    $ext = $path_parts['extension'];

    if($ext !== "jpg" && $ext !== "gif" && $ext !== "png" && $ext !== "svg"){
        echo "format non valide";
    }
    else{
        if(move_uploaded_file($temp_chemin, $_dossier . $_fichier)) {
            $url = $_dossier . $_fichier;
            $nom_fichier = preg_replace('/\\.[^.\\s]{3,4}$/', '', $_fichier);
            $nom_fichier = ucfirst($nom_fichier);
            $test = 0;
            foreach ($get_all_templates as $value) {
                if ($value['url'] === $url){
                    $test = 1;
                }
            }
            if($test === 0){
                addTemplate($nom_fichier, $url);
                echo 'upload effectué avec succès';
            }
            else{
                echo "un fichier avec un nom similaire existe déjà. ";
            }
        }
        else {
            echo "Echec de l'envoi";
        }
    }
    
    
}

include('Views/HomeView.php');

?>