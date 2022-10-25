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

<b><h1 align="center"><img src="Image/pngegg.png" width="50" height="50" alt="logo" class="logo">Inscription <img src="Image/pngegg.png" width="50" height="50" alt="logo" class="logo"></h1></b><br>



	<table align="center">
		
		<tr>
	<form action="login1.php" method="post">	
		<div class="container">
		<h3>mot de passe incorrect</h3>
      <label for="uname"><b>Pseudo</b></label>
      <input type="texte" placeholder="Entrer le pseudo" name="Pseudo" required>

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Entrer le mot de passe" name="MotDePasse" required>
        
      <button type="submit">Se Connecter</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Se souvenir de moi
      </label>
		</div>
	
		</td>
	</form>
	</table>
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

