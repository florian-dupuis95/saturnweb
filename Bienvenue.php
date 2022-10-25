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
<div class="header">



<?php include("Entete.php"); ?>	

<div class="row">
  <div class="card">
  
    
<!--php inscription-->
<form action='Bienvenue.php' method='post'>
<b><h1 align="center"><img src="Image/pngegg.png" width="50" height="50" alt="logo" class="logo">Felicitation<img src="Image/pngegg.png" width="50" height="50" alt="logo" class="logo"></h1></b><br>

<?php
$connexion= new mysqli("localhost","root","","saturneweb")
	or die("connexion impossible");
$connexion->set_charset("utf8");
$Pseudo=$_POST['Pseudo'];
$MotDePasse=$_POST['MotDePasse'];
$Nom=$_POST['Nom'];
$Prénom=$_POST['Prénom'];
$mail1=$_POST['mail1'];
$mail2=$_POST['mail2'];
$Genre=$_POST['genre'];
$news=$_POST['news'];
$Adresse=$_POST['Adresse'];
$Ville=$_POST['Ville'];
$jour=$_POST['jour'];
$mois=$_POST['mois'];
$année=$_POST['année'];
$mail=$mail1."@".$mail2;

$requete="INSERT INTO Adherent VALUES (NULL,'$MotDePasse','$Nom','$Prénom','$Genre','$mail','$année-$mois-$jour','$Pseudo','$Ville','$Adresse',0,0,NULL,$news,'0');";	
$resultat= $connexion->query($requete);	

echo "<h2 align='center'>Bienvenue $Prénom $Nom sur Saturne-Web, tu es maintenant un adhérent</h2>";
?>
</form>
	
</br>
</div>
</div>





		
</body>


<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>


