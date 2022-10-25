<?php include("pseudo.php"); ?>	
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8" />
 <title>Phénomènes Astronomiques</title>
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
		$connexion->set_charset("utf8");
	$requete="select * FROM Lien ;";	
	$resultat= $connexion->query($requete);
	
	/* BOUCLE DE PARCOURS DES ENREGISTREMENT À COMPLETER*/
	while($ligne=$resultat->fetch_assoc())
	{
		
		extract($ligne);
		echo"<div class='card'>";
				
		echo"<h2><a href='$LienLi' style='color:white'>$LibelleLi</a></h2>";
		
		echo"<table >";
		echo"<tr>
				<td><img src='$imageLi' style='max-height:300px;max-width:500px'></td>
				<td><p>$ResumeLi</p>
				</td>
			</tr>";
		echo "</table></div>";
	}
			
	
	
	$resultat->close();
	$connexion->close();	//On ferme la connexion à MySQL
	?>
	

	

</div>
<!--le pop de connexion--><!--le pop de connexion-->
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="image/pngegg.png" width="300" height="300" alt="logo" class="logo">
    </div>

    <div class="container">
      <label for="uname"><b>Pseudo</b></label>
      <input type="texte" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Se Connecter</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Se souvenir de moi
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
    
	  <a href="Inscription.php"><button type="button" >S'incrire</button></a>
	  <a href="ConnexionAdmin.php"><button type="button" >Administration</button></a>
	  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div>



</body>


<footer>
<?php include("CitationsPhp.php"); ?>
		

</footer>


</html>



