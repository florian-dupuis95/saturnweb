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
  <br>
  <br>
  <br>
 
  <?php
$connexion= new mysqli("localhost","root","","saturneweb")
	or die ("connexion impossible");

	$connexion->set_charset("utf8");
echo "<div style ='margin-left: .lin'>
<p><h1> Que voulez vous ajouter ?</h1>";

echo "<table cellpadding='5' border='0'>";
echo "<tr>";
echo "<td><button  display='block' style='width:auto;color:white;'><a href='AdministrationEv.php' style='color:white'>Evenements</a></button></td>\n";
echo "<td><button  display='block' style='width:auto;color:white;'><a href='AdministrationPhénomènes.php' style='color:white'>Phénomènes</a></button></td>\n";
echo "<td><button  display='block' style='width:auto;color:white;'><a href='AdministrationLien.php' style='color:white'>Lien</a></button></td>\n";
echo "<td><button display='block' style='width:auto;color:white;'><a href='AdministrationQuestion.php' style='color:white'>Questions</a></button></td>\n";
echo "<td><button display='block' style='width:auto;color:white;'><a href='AdministrationCitation.php' style='color:white'>une citation </a></button></td>\n";
echo "</tr></table>\n";


?>
   
</div>
</div>

</div>

</body>





<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>


