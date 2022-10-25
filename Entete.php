
<div class="header">
<table>
<tr>
	<td><a href="index.php"><img src="Image/pngegg.png" alt="logo" width="150" height="150"></a></td>
		<td><h1>Saturne-Web</h1>
			<p>"Pour les fans du ciel"</p>
		</td>
		
	</tr>
</table>
</div>

<div class="navbar">
  <a href="index.php"><i class="fa fa-fw fa-home"></i>Accueil</a>
  <div class="subnav">
    <button class="subnavbtn"><i class='fas fa-hashtag'></i>Evénements <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="PhénomènesAstronomiques.php">Phénomènes Astronomiques</a>
      <a href="Evénements.php">Evénements</a>
	  <a href="Lien.php">Lien à visiter</a>
    </div>
  </div> 
  <div class="subnav">
    <button class="subnavbtn"><i class='fas fa-meteor'></i>Astronomie <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="Constellations.php">Constellations</a>
      <a href="CielProfond.php">Ciel Profond</a>
      <a href="Etoiles.php">Etoiles</a>
      <a href="Satellites.php">Satellites</a>
	  <a href="Systèmesolaire.php">Système solaire</a>
	  <a href="Chonologie.php">Chonologie</a>
	  <a href="Quizz.php">Quizz</a>
    </div>
  </div> 
  <div class="subnav">
    <button class="subnavbtn"><i class='fas fa-space-shuttle'></i>Aérospatiale <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="Aéronautiques.html">Aéronautiques</a>
      <a href="Historique.php">Historique</a>
      <a href="InnovationsA.html">Innovations</a>
      <a href="Navettes.html">Navettes/fusées</a>
	  <a href="SatellitesA.php">Satellites</a>
	  <a href="Robots.php">Robots de recherches</a>
	  <a href="QuizzA.php">Quizz</a>
    </div>
  </div>
  <a href="ConnexionPop.php"><i class='fa fa-fw fa-user'></i>Se Connecter</a>
  <?php 
  if(isset($pseudo)){
	  
  
	echo"<a href='profil.php'><i class='fa fa-fw fa-user'></i>bonjour $pseudo </a>";
  }
  ?>	
  
  
  
 </button>
  <a href="#"style="float:right"><i class="fa fa-fw fa-search"></i> <input type="text" name="search" placeholder="Recherche..."></a>
</div>