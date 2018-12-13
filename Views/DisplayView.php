<?php

$title="Meme Viewer";

include('header.php');

?>

<img src="<?php
                foreach($lastmeme as $value){
                    echo $value['url'];
                }
            ?>" alt="">


<?php

include('footer.php');