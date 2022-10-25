<?php include("pseudo.php");   ?>	
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8" />
 <title>QuizzASTRO</title>
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
<?php include("Entete.php");?>	

<div class="row">
<div class="card">
<?php
	if($pseudo=="invité"){
		echo"<h2>Veuillez vous connecter</h2>";
	}

			$connexion= new mysqli("localhost","root","","saturneweb")
				or die("connexion au serveur impossible");
					$connexion->set_charset("utf8");
			$requete="select * FROM Adherent where PseudoAdh='$pseudo';";	
			$resultat= $connexion->query($requete);
			while($ligne=$resultat->fetch_assoc())
				{
					
					extract($ligne);
					echo "Pseudo : $PseudoAdh <br><br>";
					echo "Prenom : $PrenomAdh<br><br>";
					echo "Nom : $NomAdh <br><br>";
					echo "Mail : $Mail<br><br>";
					echo "Date de naissance:$DateNaissAdh <br><br>";
					echo "Score quizz aéronautique : $totalscoreaero<br><br>";
					echo "Score quizz astro : $totalscoreastro<br><br>";
					$total=$totalscoreastro+$totalscoreaero;
					echo "Score Total : $total/20<br><br>";
					echo "Les scores peuvent mettre du temps à se mettre à jour :D";
					
					
				}
			//envoie de la requete des quizz astro!!!!
				if((isset($_POST['typeQuizz']))and($_POST['typeQuizz']==2) ) 
				{
					$idQuestion=NULL;
					$réponse=NULL;
					$var=0;
					
					$requete="select * FROM quizzastro;";	
					$resultat= $connexion->query($requete);
					$connexion->set_charset("utf8");
						while($ligne=$resultat->fetch_assoc()){
								extract($ligne);
								$idQuestion=$id;
								
								
								$réponse=$reponse;
								
								if($_POST[$id]==$reponse){
									$var=$var+1;
								}
								
								
								
								
						}	
						echo "<H2>  Score du quizz:  <H2>".$var."/10";
						$requete="UPDATE Adherent
								SET totalscoreastro=$var
								WHERE PseudoAdh='$pseudo';";	
						$resultat= $connexion->query($requete);
						
						
						
				}
			
			//envoie de la requete des quizz aero!!!!
				if((isset($_POST['typeQuizz'])and($_POST['typeQuizz']==3) )) 
				{
						$idQuestion=NULL;
					$réponse=NULL;
					$var=0;
					
					$requete="select * FROM quizzaero;";	
					$resultat= $connexion->query($requete);
					$connexion->set_charset("utf8");
						while($ligne=$resultat->fetch_assoc()){
								extract($ligne);
								$idQuestion=$id;
								
								$réponse=$reponse;
								
								if($_POST[$id]==$reponse){
									$var=$var+1;
								}
								
								
								
								
						}	
						echo "<H2>  Score du quizz:  <H2>".$var."/10";
						$requete="UPDATE Adherent
								SET totalscoreaero=$var
								WHERE PseudoAdh='$pseudo';";	
						$resultat= $connexion->query($requete);						
				}

			
?>
</div>
</div>

</body>
<footer>
<?php include("CitationsPhp.php"); ?>
</footer>
</html>