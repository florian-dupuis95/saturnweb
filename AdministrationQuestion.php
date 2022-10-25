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
<form action='Check.php' method='post'>
<table>
<tr>
			<td align="right">Catégorie :<br></td>
			<td align="right"> Astro<br></td>
			<td><input type="checkbox"  name="type" value="quizzastro"></td>
			<td align="right"> Aéro<br></td>
			<td><input type="checkbox" name="type" value=" quizzaero"></td>
			
		</tr>
</tr>

				<td align="right"> Question : </td>
				<td><input type="text" name="question" size="20" maxlength="255"></td>
				<td align="right"> Bonne réponse: </td>
				<td><input type="text" name="reponse" size="20" maxlength="255"></td>
				<td align="right"> Mauvaise Réponse:</td> 
				<td><input type="text" name="non1" size="20" maxlength="255"></td>
				<td><td align="right"> Mauvaise réponse: </td>
				<td><input type="text" name="non2" size="20" maxlength="255"></td>
				<td>
	<input type='submit' value='Enregistrer'>
	</td>

	</tr>
	
	</table>
</form>
</div>
</div>



</body>





<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>