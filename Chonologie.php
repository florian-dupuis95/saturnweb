<?php include("pseudo.php"); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8" />
 <title>Saturne-Web</title>
 <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,300&display=swap" rel="stylesheet">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="icon" href="pngegg.png" />
<link rel="stylesheet" href="Saturne-Web.css" />
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>



<body>
<?php include("Entete.php"); ?>


<div class="row">
<div class="card">

<?php
	$connexion= new mysqli("localhost","root","","saturneweb")
		or die("Connexion au serveur impossible");
$connexion->set_charset("utf8");

//Sélectionner tous les types de pièces présents dans la table Type
	$requete= "SELECT*From chronoastro ORDER BY annee";
//Éxécution de la requête
	$resultat=$connexion->query($requete)
		or die("Execution de la requete impossible");
	

//Affichage du formulaire
	echo"<table>
	<div style='margin-left:.lin'>
	<h1 class='center'>chronologie spatial</hl>";


/* BOUCLE DE PARCOURS DES ENREGISTREMENT*/
	while ($ligne=$resultat->fetch_assoc()){	extract($ligne); 
		echo"<tr>
				<td><h3 style='color: #CD6415'>$annee</h3></td>
				<td><br><h4>$description</h4></td>
				</tr>";
		
	}
		echo "</table>";

?>
</div>
</div>
</div>
</body>
<footer>
<?php include("CitationsPhp.php"); ?>
</footer>
</html>

