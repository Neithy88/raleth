
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>FORMULAIRE</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1 >fichiers uploadés</h1>

  <form action="recup_donnees.php" method="post"  enctype="multipart/form-data">

    <p>
      <label for="up" class="label">Nom du fichier après upload</label><br><br>

      <input type="text" name="fileName" placeholder="entrez nouveau nom">
    </p>
    <p>
      <input type="file" name="fichier_upload">
    </p>
    <p>
      <input type="submit" value="enregistrer">
    </p>

  </form>


</body>
</html>







