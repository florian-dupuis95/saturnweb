
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

<!--le pop de connexion--><!--le pop de connexion-->

  
  <form class="modal-content animate" action="login1.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="image/pngegg.png" width="300" height="300" alt="logo" class="logo">
    </div>

    <div class="container">
      <label for="uname"><b>Pseudo</b></label>
      <input type="texte" placeholder="Enter Username" name="pseudo" required>

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
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>	
</body>


<footer>
<?php include("CitationsPhp.php"); ?>
</footer>


</html>