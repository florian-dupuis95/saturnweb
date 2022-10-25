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


<?php
$connexion= new mysqli("localhost","root","","saturneweb")
	or die("connexion impossible");
$connexion->set_charset("utf8");

//envoie de la requete des citations!!!!
if(isset($_POST['dateCitation'])) //On vérifie que $laCitation n'est pas 
{
	$dateCitation=$_POST['dateCitation'];
	$laCitation=$_POST['laCitation'];
	$NomAuteur=$_POST['NomAuteur'];
	$PrenomAuteur=$_POST['PrenomAuteur'];
    $requete="INSERT INTO citation VALUES (NULL,'$NomAuteur','$PrenomAuteur','$laCitation','$dateCitation');";	
	$resultat= $connexion->query($requete);	
	
	
	
}


//envoie de la requete des phenomènes!!!!
if(isset($_POST['TitrePhénomènes'])) 
{
	$titrePhenomenes=$_POST['TitrePhénomènes'];
	$lieuPhenomenes=$_POST['LieuPhénomènes'];
	$jourPhenomenes=$_POST['jourPhénomènes'];
	$moisPhenomenes=$_POST['moisPhénomènes'];
	$annéePhenomenes=$_POST['annéePhénomènes'];
	$descriptionPhenomenes=$_POST['ResPhénomènes'];
	$urlImagePhenomenes=$_POST['ImagePhénomènes'];
    $requete="INSERT INTO Phenomenes VALUES (NULL,'$annéePhenomenes-$moisPhenomenes-$jourPhenomenes','$lieuPhenomenes','$titrePhenomenes','$descriptionPhenomenes','$urlImagePhenomenes');";	
	$resultat= $connexion->query($requete);
		
}

//envoie de la requete des événements!!!!
if(isset($_POST['TitreEvenement'])) 
{
	$TitreEvenement=$_POST['TitreEvenement'];
	$LieuEvenement=$_POST['LieuEvenement'];
	$jourEvenement=$_POST['jourEvenement'];
	$moisEvenement=$_POST['moisEvenement'];
	$annéeEvenements=$_POST['annéeEvenements'];
	$heureEvenement=$_POST['heureEvenement'];
	$minuteEvenements=$_POST['minuteEvenements'];
	$ResEvenement=$_POST['ResEvenement'];
	$ImageEvenement=$_POST['ImageEvenement'];
	$Adulte='';
	$Enf='';
	$ado='';
	$h='';
	
	if(isset($_POST['Adulte'])){$Adulte=$_POST['Adulte'];}
	if(isset($_POST['Enf'])){$Enf=$_POST['Enf'];}
	if(isset($_POST['ado'])){$ado=$_POST['ado'];}
	if(isset($_POST['h'])){$h=$_POST['h'];}
    $requete="INSERT INTO evenement VALUES (NULL,'$annéeEvenements-$moisEvenement-$jourEvenement','$LieuEvenement','$heureEvenement:$minuteEvenements','$TitreEvenement','$ResEvenement','Tarif Enfant : $Enf','Tarif Ado :$ado','Tarif Adulte $Adulte','Accès PMR : $h','$ImageEvenement');";	
	$resultat= $connexion->query($requete);	
	$resultat->close();
}

//envoie de la requete des liens!!!!
if(isset($_POST['TitreLien'])) 
{
	$TitreLien=$_POST['TitreLien'];
	$DescripLien=$_POST['DescripLien'];
	$ImageLien=$_POST['ImageLien'];
	$LienLi=$_POST['LienLi'];
    $requete="INSERT INTO lien VALUES (NULL,'$TitreLien','$DescripLien','$ImageLien','$LienLi');";	
	$resultat= $connexion->query($requete);	
	

}
//envoie de la requete des questions!!!!
if(isset($_POST['question'])) 
{
	$type=$_POST['type'];
	$question=$_POST['question'];
	$reponse=$_POST['reponse'];
	$non1=$_POST['non1'];
	$non2=$_POST['non2'];
    $requete="INSERT INTO $type VALUES (NULL,'$question','$reponse','$non1','$non2');";	
	$resultat= $connexion->query($requete);	
	
}

echo "<h3><button  display='block' style='width:auto;'><a href='Administration.php'>retour à l'administration</a></button></td></h3>";


	$connexion->close();	//On ferme la connexion à MySQL
	?>
</div>
</div>

</div>

</body>





<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>