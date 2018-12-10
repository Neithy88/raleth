<?php

$title="Meme Viewer";

include('header.php');

?>

<form method="POST" action="index.php" enctype="multipart/form-data">
    
    <input type="file" name="fichier">
    <input type="hidden" name="MAX_FILE_SIZE" value="1000000">
    <input type="submit" name="envoyer" value="Envoyer le fichier">

</form>

<?php

?>
    <ul class="templates"><?php
            foreach ($get_all_templates as $value) {?>
                <li class="mini-templates" name="id_template">
                    <a href="OneMeme/<?=$value['id_template']?>">
                        <img src="<?=$value['url']?>" alt="<?=$value['nom']?>">
                    </a>
                </li>
            <?php
            }
        ?>
    </ul>
<img src="OneMeme/6" alt="rgd">
<?php
include('footer.php');
?>