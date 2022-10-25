<?php
session_start();
if(isset($_POST['pseudo'])){
	$pseudo=$_POST['pseudo'];
	$_SESSION['pseudo']=$pseudo;
} 

?>
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

  <div class="leftcolumn">
		<?php
	

	$connexion= new mysqli("localhost","root","","saturneweb")
		or die("connexion au serveur impossible");
	$connexion->set_charset("utf8");	
	$requete="select * FROM Evenement ORDER BY DateEv DESC ;";	
	$resultat= $connexion->query($requete);
	
	/* BOUCLE DE PARCOURS DES ENREGISTREMENT À COMPLETER*/
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
	
			
	
	
	$requete="select * FROM Phenomenes ORDER BY DatePh DESC ;";	
	$resultat= $connexion->query($requete);
	
	/* BOUCLE DE PARCOURS DES ENREGISTREMENT À COMPLETER*/
	while($ligne=$resultat->fetch_assoc())
	{
		
		extract($ligne);
		echo"<div class='card'>";
				
		echo"<h2>$LibellePh</h2>";
		echo"<h5>$LieuPh,$DatePh.</h5>";
		echo"<table >";
		echo"<tr>
				<td><img src='$imagePh' style='max-height:300px;max-width:500px'></td>
				<td><p>$ResumePh</p>
				</td>
			</tr>";
		echo "</table></div>";
	}
			
	
	
	
	
	
	$resultat->close();
	$connexion->close();	//On ferme la connexion à MySQL
	?>
    
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>Qui somme nous?</h2>
      <img src="Image/pngegg.png" alt="logo" width="150" height="150">
	  
      <p>Ce site web a été réalisé dans le cadre d'un PPE en équipe.</p>
    </div>
    <div class="card">
      <h3>Post Populaire</h3>
      <div class="fakeimg"><p><a href="Quizz.php" style="color:#CD6415;">incollable sur l'astronomie?</a></p></div>
      <div class="fakeimg"><p><a href="QuizzA.php" style="color:#CD6415;">Quizz sur l'aéronautique</a></p></div>
	  <?php
	

	$connexion= new mysqli("localhost","root","","saturneweb")
		or die("connexion au serveur impossible");
		
	$requete="select * FROM Phenomenes ORDER BY DatePh DESC ;";	
	$resultat= $connexion->query($requete);
	while($ligne=$resultat->fetch_assoc())
	{
		
		extract($ligne);
				
		echo"<h4>$LibellePh</h4>";
		echo"<img src='$imagePh' style='max-height:100px;max-width:100px'>";
	}
	
	
	$resultat->close();
	$connexion->close();	//On ferme la connexion à MySQL
	?>
	  
	  
      <div class="fakeimg"><p></p></div>
    </div>
    <div class="card">
      <h3>Suivez nous sur:</h3>
      <a href="#" class="facebook"><i class="fa fa-facebook" style="font-size:30px;color:#CD6415;"></i></a> 
  <a href="#" class="twitter"><i class="fa fa-twitter"style="font-size:30px;color:#CD6415;"></i></a> 
  <a href="#" class="google"><i class="fa fa-google"style="font-size:30px;color:#CD6415;"></i></a> 
  <a href="#" class="linkedin"><i class="fa fa-linkedin"style="font-size:30px;color:#CD6415;"></i></a>
  <a href="#" class="youtube"><i class="fa fa-youtube"style="font-size:30px;color:#CD6415;"></i></a> 
    </div>
  </div>
</div>


</body>


<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>


