<?php include("pseudo.php"); ?>	
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8" />
 <title>Administration</title>
 <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,300&display=swap" rel="stylesheet">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="icon" href="image/pngegg.png" />
<link rel="stylesheet" href="/saturne-web/Saturne-Web.css" />
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>

</style>

<body>
<?php include("Entete.php"); ?>	

  


<div class="row">
  <div class="card">

  <br>
  <br>
  <br>
  <h1>Ajouter une citation ?</h1>

<form action='Check.php' method='post'>
<table cellpadding='5' border='0'>

	<tr>
		<td align="right"> Nom de l'auteur : </td>
		<td><input type="text" name="NomAuteur" size="20" maxlength="255"></td>
		<td align="right"> Prénom Auteur : </td>
		<td><input type="text" name="PrenomAuteur" size="20" maxlength="255"></td>
	</tr>
	<tr>
		<td align="right"> La date de la citation: </td>
		<td><input type="text" name="dateCitation" size="20" maxlength="255"></td>
		<td align="right"> La citation : </td>
		<td><textarea id="msg" name="laCitation" size="10000" maxlength="1000000">...</textarea></td>

	</tr>
</table>
<p><input type='submit' value='Enregistrer'>
</form>
"Mettez de \ devant les apostrophes."
    </div>
	</div>


	
</body>





<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>