<?php
session_start();
$pseudo='invité';
if(isset($_SESSION['pseudo'])){
	// On démarre la session AVANT d'écrire du code HTML
	$pseudo=$_SESSION['pseudo'];
	// On s'amuse à créer quelques variables de session dans $_SESSION

	
}

?>	