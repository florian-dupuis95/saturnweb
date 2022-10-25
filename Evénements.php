<?php include("pseudo.php"); ?>	
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8" />
 <title>Evénements</title>
 <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,300&display=swap" rel="stylesheet">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="icon" href="image/pngegg.png" />
<link rel="stylesheet" href="Saturne-Web.css" />
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>


</style>


<body>


<?php include("Entete.php"); ?>	

<div class="row">

	

<?php
	

	$connexion= new mysqli("localhost","root","","saturneweb")
		or die("connexion au serveur impossible");
		
	$requete="select * FROM Evenement ORDER BY DateEv DESC ;";	
	$connexion->set_charset("utf8");
	$resultat= $connexion->query($requete);
	
	/* BOUCLE DE PARCOURS DES ENREGISTREMENT À COMPLETER*/
	while($ligne=$resultat->fetch_assoc())
		{
		
			extract($ligne);
			echo"<div class='card'>";
					
			echo"<h2>$LibelleEv</h2>";
			echo"<h5>$LieuEv,$DateEv,$HeureEv.</h5>";
			echo"<table >";
			echo"	<tr>
					<td><img src='$imageEv' style='max-height:300px;max-width:500px'></td>
					<td><p>$ResumeEv</p>
					<p>$TarifEef</p>
					<p>$TarifAdo</p>
					<p>$TarifAdult</p>
					<p>$accessibleH</p>
					</td>
				</tr>";
			echo "</table></div>";
		}
	
			
	
	
	$resultat->close();
	$connexion->close();	//On ferme la connexion à MySQL
?>
	

	

</div>

	
	

</body>


<footer>
<?php include("CitationsPhp.php"); ?>
		

</footer>


</html>

