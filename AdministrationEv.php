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
		  <h1>Ajouter un événements ?</h1>
			  
		<form action='Check.php' method='post'>
		<table cellpadding='5' border='0'>

			<tr>
				<td align="right"> Titre de l'événement </td>
				<td><input type="text" name="TitreEvenement" size="20" maxlength="255"></td>
				<td align="right"> Lieu de l'événement: </td>
				<td><input type="text" name="LieuEvenement" size="20" maxlength="255"></td>
				
			</tr>
			<tr>
				<td align="right"> Date prévue </td>
		
		<td><align="right"> jour: 
		<input type="text" name="jourEvenement" size="10" maxlength="2"></td>
		<td align="right"> Mois<br></td>
		<td>
		
		<select name="moisEvenement" >
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
			<input type="text" name="annéeEvenements" size="10" maxlength="4"></td>
		
		</tr>
		<tr>
				<td align="right"> Description de l'événements: </td>
				<td><textarea id="msg" name="ResEvenement" size="10000" maxlength="1000000">...</textarea></td>
				<td><align="right"> HEURE: 
		<input type="text" name="heureEvenement" size="10" maxlength="2">:<input type="text" name="minuteEvenements" size="10" maxlength="2"></td>
		

		</tr>
		</tr>
				<td align="right"> URL de l'Image </td>
				<td><input type="text" name="ImageEvenement" size="20" maxlength="255"></td>
				<td align="right"> Tarif adulte: 
				<input type="text" name="Adulte" size="20" maxlength="255"></td>
				<td align="right"> Tarif ado: 
				<input type="text" name="ado" size="20" maxlength="255"></td>
				<td align="right"> Tarif enfant: 
				<input type="text" name="Enf" size="20" maxlength="255"></td>
				<td align="right"> Accès fauteil roulant: 
				<input type="text" name="h" size="20" maxlength="255"></td>

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