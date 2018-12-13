<?php

$title="Meme Generator";

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

<form action="<?=$base_url.'Display'?>" method="POST" id="generer">
    <div class="generator">
        <div class="generatorinner">
            <div onmousemove="curseurh(event)" id="plandetravail" class="flexdiv">
                <img id="meme_genere" src="<?php foreach ($mytemp as $value) {
                    echo $base_url.$value['url'];
                }?>" alt="meme">
                <p id="textehaut"></p>
                <p onmousemove="curseurb(event)" id="textebas"></p>
            </div>
            <div class="outils flexdiv">
                <input id="input_txt_haut" type="text" placeholder="Entrez le texte du haut ici" name="txthaut">
                <input id="input_txt_bas" type="text" placeholder="Entrez le texte du bas ici" name="txtbas">
                <select name="color" id="color">
                    <option value="">Couleur du texte</option>
                    <option value="Black">Black</option>
                    <option value="White">White</option>
                </select>
                <select name="fsz" id="fsz">
                    <option value="">Taille du texte</option>
                    <?php
                        for ($i=8; $i <= 50 ; $i++) {
                            ?>
                    <option value="<?=$i?>"><?=$i?></option>
                    <?php
                        }
                    ?>
                </select>
            </div>
            <input type="hidden" name="id_template" id="template_value" value="<?php foreach ($mytemp as $value) {
            echo $value['id_template'];
            }
            ?>">
        <input type="submit" value="Générer">
        </div>
    </div>
</form>

<?php
include('footer.php');
?>