<?php

$title="Meme Generator";

include('header.php');

?>
<div class="templatelist">

    <form method="POST" action="" enctype="multipart/form-data">
        
        <input class="boutonchoose" type="file" name="fichier">
        <input type="hidden" name="MAX_FILE_SIZE" value="10000000">
        <input id="boutonupload" type="submit" name="envoyer" value="Mettre en ligne">
        <span class="textnone"><?=$upload_status?></span>
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
    <input type="submit" value="Générer" class="boutton">
        <div class="generatorinner">
            <div onmousemove="curseurh(event)" id="plandetravail" class="flexdiv">
                <img id="meme_genere" src="<?php foreach ($mytemp as $value) {
                    echo $base_url.$value['url'];
                }?>" alt="meme">
                <p id="textehaut"></p>
                <p onmousemove="curseurb(event)" id="textebas"></p>
            </div>
            <div class="outils flexdiv">
            <div> 
                   <input id="input_txt_haut" type="text" placeholder="Entrez le texte du haut ici" name="txthaut">
            </div>
                <div>
                <input id="input_txt_bas" type="text" placeholder="Entrez le texte du bas ici" name="txtbas">
                     </div>
                     <div>
                <select name="color" id="color">
                    <option value="">Couleur du texte</option>
                    <option value="Black">Noir</option>
                    <option value="White">Blanc</option>
                </select>
            </div>
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
        
        </div>
    </div>
</form>

<?php
include('footer.php');
?>