<?php

$connexion= new mysqli("localhost","root","","saturneweb")
		or die("connexion au serveur impossible");

$requete="SELECT COUNT(IdCita ) FROM citation;";	
$resultat= $connexion->query($requete);
$connexion->set_charset("utf8");
$row = $resultat->fetch_array(MYSQLI_NUM);
$min=1;
$max=$row[0];

$rand=rand ( $min , $max );

$resultat->close();
$requete="select * FROM citation Where IdCita=$rand ;";	
$resultat= $connexion->query($requete);	
$connexion->set_charset("utf8");
echo"<table cellpadding='1' border='0'>";

/* BOUCLE DE PARCOURS DES ENREGISTREMENT À COMPLETER*/
while($ligne=$resultat->fetch_assoc())
{
	extract($ligne);





		
	echo"<h4><strong> \"$laCitation\" de  $PrenomAuteur $NomAuteur($dateCitation)</strong></h4>";

		
}
echo "</table>";


$resultat->close();
$connexion->close();	//On ferme la connexion à MySQL

//echo'<h5><a href="contact.html"style="color:white;">A propos de nous</a></h5>';
?>