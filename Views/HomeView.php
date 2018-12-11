<?php

$title="Meme Viewer";

include('header.php');

?>

<div class="templatelist">

    <form method="POST" action="" enctype="multipart/form-data">
        
        <input type="file" name="fichier">
        <input type="hidden" name="MAX_FILE_SIZE" value="10000000">
        <input id="boutonupload" type="submit" name="envoyer" value="Mettre en ligne">
        <span><?=$upload_status?></span>
    </form>

    <?php

    ?>
        <ul class="templates"><?php
                foreach ($get_all_templates as $value) {?>
                    <li class="mini-templates" name="id_template">
                        <a class="temp_anchors" id="<?=$value['id_template']?>" href="<?=$base_url . 'Home/' . $value['id_template']?>">
                            <img src="<?=$base_url.$value['url']?>" alt="<?=$value['nom']?>">
                        </a>
                    </li>
                <?php
                }
            ?>
        </ul>
</div>

<div class="generator">

    <div class="generatorinner">
        <div id="plandetravail" class="flexdiv">
            <img id="meme_genere" src="<?php foreach ($mytemp as $value) {
                echo $base_url.$value['url'];
            }?>" alt="meme">
            <div class="textehaut">
                <p id="textehaut"></p>
            </div>
            <div class="textebas">
                <p id="textebas"></p>
            </div>
        </div>
        <div class="outils flexdiv">
            <form action="" method="GET">
                <input id="input_txt_haut" type="text" placeholder="Entrez le texte du haut ici">
                <input id="input_txt_bas" type="text" placeholder="Entrez le texte du bas ici">
            </form>
        </div>
    </div>

    <form action="" method="POST" id="generer">
            <input type="text" name="id_template" id="template_value">
            <input type="submit" value="Générer">
    </form>

</div>

<?php
include('footer.php');
?>