<?php
session_start();



?>
<?php
$connexion= new mysqli("localhost","root","","saturneweb")
		or die("connexion au serveur impossible");
$connexion->set_charset("utf8");
$NomUtilisateur=$_POST['pseudo'];
$MotDePasse=$_POST['psw'];

$Requete1="Select PseudoAdh From adherent
			Where PseudoAdh='$NomUtilisateur';";
$Resultat1=$connexion->query($Requete1)
			or die("impossible d'executer la requête");

if($Resultat1->num_rows >= 1)
{ 
	$Requete2="Select PseudoAdh From adherent 
			Where PseudoAdh='$NomUtilisateur' and motDePasse='$MotDePasse'";
	$Resultat2=$connexion->query($Requete2)
			or die("impossible d'executer la requête");
			
	if($Resultat2->num_rows == 1)
	{
		 header("Location:index.php"); //redirection vers index.php
		$_SESSION['pseudo'] = $NomUtilisateur;		

		
			
	}
	else
	{
		header("Location:login_form1_2.php"); //redirection vers login_form1_2.htm
	}
}
else{
	header("Location:login_form2_2.php");		
}

?>		


