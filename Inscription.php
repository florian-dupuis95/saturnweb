<?php include("pseudo.php"); ?>	
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8" />
 <title>Saturne-Web</title>
 <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,300&display=swap" rel="stylesheet">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="icon" href="image/pngegg.png" />
<link rel="stylesheet" href="Saturne-Web.css" />
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>



<body>
<?php include("Entete.php"); ?>	


<div class="row">
<div class="card">
    
<!--php inscription-->
<form action='Bienvenue.php' method='post'>
<b><h1 align="center"><img src="Image/pngegg.png" width="50" height="50" alt="logo" class="logo">Inscription<img src="Image/pngegg.png" width="50" height="50" alt="logo" class="logo"></h1></b><br>



	<table align="center">
		<tr>
			<td align="right"> Pseudo : </td>
			<td><input type="text" name="Pseudo" size="20" maxlength="255"></td>
			<td align="right"> MotDePasse : </td>
			<td><input type="password" name="MotDePasse" size="20" maxlength="255"></td>

		</tr>
		<tr>
			<td align="right"> Nom  : </td>
			<td><input type="text" name="Nom" size="20" maxlength="255"></td>
			<td align="right"> Prenom : </td>
			<td><input type="text" name="Prénom" size="40" maxlength="255"></td>
			<td align="right"> Adresse mail : </td>
			<td><input type="text" name="mail1" size="40" maxlength="255">@<input type="text" name="mail2" size="40" maxlength="255"></td>
		</tr>
		<tr>
			<td align="right">  Adresse : </td>
			<td><input type="text" name="Adresse" size="20" maxlength="255"></td>
			<td align="right">  Ville : </td>
			<td><input type="text" name="Ville" size="20" maxlength="255"></td>
		</tr>
		
		<tr>
		<td align="right"> Date de Naissance<br>
		<align="right"> jour: </td>
		<td><input type="text" name="jour" size="10" maxlength="2"></td>
		<td align="right"> Mois<br></td>
		<td>
		
		<select name="mois" >
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
			<input type="text" name="année" size="10" maxlength="4"></td>
		
		</tr>
		<tr>
			<td align="right"> Genre<br></td>
			<td align="right"> femme<br></td>
			<td><input type="checkbox"  name="genre" value="F"></td>
			<td align="right"> homme<br></td>
			<td><input type="checkbox" name="genre" value="M"></td>
			
		</tr>
		<tr>
			<td align="right"> Abonnement Newsletters<br></td>
			<td align="right"> oui<br></td>
			<td><input type="checkbox"  name="news" value="0"></td>
			<td align="right"> non<br></td>
			<td><input type="checkbox" name="news" value="1"></td>
			
		</tr>
	</table>
		<h3 align="center"> <input type="submit" value="S'incrire"></h3>
</div>
	</br>
	</br>
</br>
</div>
</div>
</div>
</form>


</body>





<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>