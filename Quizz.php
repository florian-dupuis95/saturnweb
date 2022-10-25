<?php include("pseudo.php"); ?>	
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
<?php include("Entete.php"); ?>	


<div class="row">
<div class="card">  
  <br>
  <br>
  <br>
    <div class="sommaire">
		<h1>Bienvenue sur le Quizz Astronomie</h1>
		<h3>1 point par questions</h3>
	</div> 
		<br>
		<br>
		<br>
		<FORM name="quiz" method="post" action="profil.php" enctype="multipart/form-data">
		<h2 align='center'style='color:#CD6415;'>0.Aimez-vous l'astronomie</h2>
		<h3 align='center'style='color:#8EB9CB;'>
				<INPUT TYPE=RADIO NAME='typeQuizz' VALUE='2' CHECKED id='Vrai'> oui
				<INPUT TYPE=RADIO NAME='typeQuizz' VALUE='2' >   non </h3>
		<?php
	

				$connexion= new mysqli("localhost","root","","saturneweb")
					or die("connexion au serveur impossible");
					$connexion->set_charset("utf8");
				$requete="select * FROM Quizzastro ;";	
				$resultat= $connexion->query($requete);
				
				/* BOUCLE DE PARCOURS DES ENREGISTREMENT À COMPLETER*/
				while($ligne=$resultat->fetch_assoc())
				{
				$min=1;
				$max=3;
				
				$rand=rand ( $min , $max );
					
					extract($ligne);
					
					echo"<h2 align='center'style='color:#CD6415;'>$id.$question</h2>";
							
					echo"<h3 align='center'style='color:#8EB9CB;'>";
					if($rand==1){
						echo"<INPUT TYPE=RADIO NAME='$id' VALUE=\"$reponse\" > $reponse
							<INPUT TYPE=RADIO NAME='$id' VALUE='0' >   $non1
							<INPUT TYPE=RADIO NAME='$id' VALUE='0'>   $non2";
					} elseif ($rand==2) {
						echo"<INPUT TYPE=RADIO NAME='$id' VALUE='0'>   $non2
						<INPUT TYPE=RADIO NAME='$id' VALUE=\"$reponse\" > $reponse
						<INPUT TYPE=RADIO NAME='$id' VALUE='0' >   $non1";
					} else {
						echo"<INPUT TYPE=RADIO NAME='$id' VALUE='0'>   $non1

						<INPUT TYPE=RADIO NAME='$id' VALUE='0' >   $non2
						<INPUT TYPE=RADIO NAME='$id' VALUE=\"$reponse\" > $reponse";
					}
					
					echo"</h3>";
					
					
					
				}
				echo"<h3 align='center' style='color:#CD6415;' ><input type='submit' value='Obtenir le score'></h3>";
			?>
			</FORM>
  </div>
  </div>


</body>
<footer>
<?php include("CitationsPhp.php"); ?>
</footer>
</html>