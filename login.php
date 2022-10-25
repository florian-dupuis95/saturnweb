<?php
$connexion= new mysqli("localhost","root","","saturneweb")
		or die("connexion au serveur impossible");
$connexion->set_charset("utf8");
$NomUtilisateur=$_POST['Pseudo'];
$MotDePasse=$_POST['MotDePasse'];

$Requete1="Select PseudoAdh From adherent
			Where PseudoAdh='$NomUtilisateur';";
$Resultat1=$connexion->query($Requete1)
			or die("impossible d'executer la requête");

if($Resultat1->num_rows >= 1)
{ 
	$Requete2="Select PseudoAdh From adherent 
			Where PseudoAdh='$NomUtilisateur' and motDePasse='$MotDePasse' and  Admin=1;";
	$Resultat2=$connexion->query($Requete2)
			or die("impossible d'executer la requête");
			
	if($Resultat2->num_rows == 1)
	{
		 header("Location:Administration.php"); //redirection vers ChoixType.php
	}
	else
	{
		header("Location:login_form1.php"); //redirection vers login_form1.htm
	}
}
else{
	header("Location:login_form2.php");		
}

?>		


