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
		  <h1>Ajouter un phénomènes astronomiques ?</h1>
		
		<form action='Check.php' method='post'>
		<table cellpadding='5' border='0'>

			<tr>
				<td align="right"> Titre du phénomènes </td>
				<td><input type="text" name="TitrePhénomènes" size="20" maxlength="255"></td>
				<td align="right"> Lieu du phénomènes: </td>
				<td><input type="text" name="LieuPhénomènes" size="20" maxlength="255"></td>
				
			</tr>
			<tr>
				<td align="right"> Date prévue </td>
		
		<td><align="right"> jour: 
		<input type="text" name="jourPhénomènes" size="10" maxlength="2"></td>
		<td align="right"> Mois<br></td>
		<td>
		
		<select name="moisPhénomènes" >
		<option value="01">01</option>
		<option value="02">02</option>
		<option value="03">03</option>
		<option value="04">04</option>
		<option value="05">05</option>
		<option value="06">06</option>
		<option value="07">07</option>
		<option value="08">08</option>
		<option value="09">09</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
	  </select>
		</td>
		<td align="right"> Année: 
			<input type="text" name="annéePhénomènes" size="10" maxlength="4"></td>
		
		</tr>
				<td align="right"> Description de l'événements: </td>
				<td><textarea id="msg" name="ResPhénomènes" size="10000" maxlength="1000000">...</textarea></td>

			</tr>
		</tr>
				<td align="right"> URL de l'Image </td>
				<td><input type="text" name="ImagePhénomènes" size="20" maxlength="255"></td>

			</tr>
		</table>
		<p><input type='submit' value='Enregistrer'>
		</form>
		"Mettez de \ devant les apostrophes."
</div>
</div>

</div>

</body>





<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>