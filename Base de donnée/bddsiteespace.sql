drop database if EXISTS saturneweb;
CREATE DATABASE saturneweb;


use saturneweb
ALTER DATABASE saturneweb CHARACTER SET utf8 COLLATE utf8_general_ci;
drop table if EXISTS Adherent; 
create table Adherent(
IDAdh int not null AUTO_INCREMENT,
motDePasse varchar(50),
NomAdh varchar(20),
PrenomAdh varchar(20),
Genre char,
Mail varchar(100),
DateNaissAdh Date,
PseudoAdh varchar(20) UNIQUE,
VilleAdh varchar(20), 
AdresseAdh varchar(30),
totalscoreaero int,
totalscoreastro int,
TotalScore float,
Newsletter BOOLEAN,
Admin BOOLEAN,
PRIMARY KEY (IDAdh)
) engine=innodb;




drop table if EXISTS Phenomenes;
create table Phenomenes(
IdPh int not null AUTO_INCREMENT,
DatePh DATE,
LieuPh varchar(200),
LibellePh varchar(1000),
ResumePh varchar(1000),
imagePh VARCHAR(1000),
PRIMARY KEY (IdPh)
) engine=innodb;

drop table if EXISTS Lien;
create table Lien(
IdLi int not null AUTO_INCREMENT,
LibelleLi varchar(20),
ResumeLi varchar(1000),
imageLi VARCHAR(10000),
LienLi VARCHAR(10000),
PRIMARY KEY (IdLi)
) engine=innodb;

drop table if EXISTS Evenement;
create table Evenement(
IdEv int not null AUTO_INCREMENT,
DateEv DATE,
LieuEv varchar(20),
HeureEv TIME,
LibelleEv varchar(50),
ResumeEv varchar(1000),
TarifEef VARCHAR(50),
TarifAdo VARCHAR(50),
TarifAdult VARCHAR(50),
accessibleH VARCHAR(50),
imageEv VARCHAR(10000),
PRIMARY KEY (IdEv)
) engine=innodb;

drop table if EXISTS Quizzaero;
create table Quizzaero(
id int not null AUTO_INCREMENT,
question varchar(250),
reponse varchar(250),
non1 varchar(250),
non2 varchar(250),
PRIMARY KEY (id)) engine=innodb;

drop table if exists Quizzastro;
create table Quizzastro(
id int not null AUTO_INCREMENT,
question varchar(250),
reponse varchar(250),
non1 varchar(250),
non2 varchar(250),
PRIMARY KEY (id)) engine=innodb;


drop table if EXISTS Citation;
create table Citation(
IdCita int not NULL AUTO_INCREMENT,
NomAuteur varchar(20),
PrenomAuteur varchar(20),
laCitation varchar(200),
dateCitation varchar(20),
PRIMARY KEY (IdCita))engine=innodb;

/*compte administration*/
INSERT INTO Adherent VALUES (NULL,'3737','jay','jay','M','mail1@mail2','2000-01-1','jay37','ville','adresse',0,0,NULL,0,'1');
/*Phénomènes*/
INSERT INTO Phenomenes VALUES (NULL,'2021-07-5','partout','Aphélie','La terre passera au point le plus élogné du soleil.L\'aphélie correspond au point de l\'orbite d\'une planète le plus éloigné du Soleil. Plus largement, au point de l\'orbite héliocentrique d\'un objet céleste où sa distance avec le Soleil est maximale. Et l\'étymologie du terme l\'indique clairement puisqu\'il est formé de deux mots grecs qui veulent dire « loin » et « Soleil ».','https://archipeldessciences.files.wordpress.com/2016/04/terre_lune_soleil.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-01-2','partout','Périhélie','La terre passera au point le plus proche du soleil.Le périhélie correspond au point de l\'orbite d\'une planète le plus proche du Soleil. Plus largement, au point de l\'orbite héliocentrique d\'un objet céleste où sa distance avec le Soleil est minimale. Et son étymologie l\'indique clairement puisqu\'il est formé du préfixe « péri » qui signifie «à l\'entour de » et de « hélie » pour « Soleil ».','https://www.sciencesetavenir.fr/assets/img/2014/07/03/cover-r4x3w1000-5d1b70ef79873-aphelie.png');
INSERT INTO Phenomenes VALUES (NULL,'2021-04-17','Selon la region','Mercure Vénus et Mars seront occultées par la Lune','Les astronomes parlent d\'occultation lorsqu\'un astre est masqué par un autre. En 2021, Mercure, Vénus et Mars seront ainsi occultées plusieurs fois par la Lune. Et notamment, pour la Planète rouge, le 17 avril -- une occultation visible depuis l\'Asie du sud-est -- et Vénus, le 8 novembre -- une occultation visible depuis le nord-ouest de la région Pacifique.

Seule occultation par la Lune visible depuis l\'Europe en cette année 2021, celle de l\'étoile Epsilon Geminorum, dans la constellation des Gémeaux, le 2 septembre. Source image: NASA','https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/f/c/f/fcfcf4c453_50171844_eclipse-totale-lune.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-05-26','l\'océan Pacifique, ente le Japon et l\'Alaska','Une éclipse totale de Lune','Si 2020 a été avare en éclipses de Lune spectaculaires l\'année nous en a offert quatre, mais toutes étaient «par la pénombre» /, 2021 s\'annonce plus généreuse en la matière. Une éclipse totale est en effet attendue le 26 mai prochain. La Lune passera alors entièrement dans l\'ombre de la Terre.','https://www.stelvision.com/astro/wp-content/uploads/2019/07/partiel_eclipse_lune-1024x536.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-06-10','l\'hémisphère nord ','Une éclipse annulaire du Soleil ','Le 10 juin 2021, c\'est le nord de l\'hémisphère nord de notre Planète qui se prépare à assister à une éclipse de Soleil annulaire. Un genre d\'éclipse qui se produit lorsque le diamètre apparent de la Lune n\'est pas aussi grand que celui du Soleil. Les plus chanceux observent alors une sorte d\'anneau de feu autour de notre satellite naturel. Cette fois\, la bande de centralité commencera du côté du nord\-est du Canada pour traverser le Groenland par le nord\-ouest\, passer par le pôle Nord et finir sur l\'est de la Russie.','https://cdn.futura-sciences.com/buildsv6/images/largeoriginal/5/f/c/5fcbb5321d_50164974_clipse-solaire-2020-doordarshan-national.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-01-1','partout sur terre','Les Perséides','Chaque mois d`\'août, la Terre traverse le nuage de débris laissés par la comète Swift-Tuttle. De quoi nous offrir une belle pluie d’étoiles filantes. En 2021\, le maximum des Perséides est attendu autour du 12 et du 13 août avec jusqu\'à 60 étoiles filantes à observer par heure. Un beau spectacle en perspective d\'autant que la Lune n\'aura alors pas encore atteint son premier quartier.

A noter que :D\'autres pluies d\'étoiles filantes sont annoncées dans l\'année : le 6 mai avec le maximum des Êta aquarides 50 objets par heure \, le 7 juin pour les Ariétides -- 30 objets par heure -- le 10 octobre pour les Taurides -- 10 objets par heure --, le 3 décembre pour les Andromédides -- 20 objets par heure -- et le 14 décembre pour les Géminides -- entre 60 et 75 objets par heure.','https://www.sciencesetavenir.fr/assets/img/2016/08/04/cover-r4x3w1000-5f282a9ee2bad-l-essaim-des-perseides.png');
/*Evenement*/
INSERT INTO evenement VALUES (NULL,NULL,'Sur toute la planète',NULL,'Dans le contexte de la pandémie','Les réunions de personnes etant non recommendées, aucun evenement ne sera présenté ici mais nous vous conseillons grandement de ne pas abandonner votre passion, quoi qu\'il arrive le ciel reste toujours au dessus de nous ','','','','','https://www.valcouesnon.fr/medias/2020/10/covid-19-4960254_640-petite.png');
/*Lien*/
INSERT INTO lien VALUES (NULL,'NASA','La National Aeronautics and Space Administration, plus connue sous son acronyme NASA, est l\'agence gouvernementale responsable de la majeure partie du programme spatial civil des États-Unis. La recherche aéronautique relève également du domaine de la NASA.','https://www.nasa.gov/sites/all/themes/custom/nasatwo/images/nasa-logo.svg','https://www.nasa.gov/');
INSERT INTO lien VALUES (NULL,'Futura sciences','Futura, explorer le monde.
Futura est né en 2001 de la volonté de décrypter les innovations et les actualités d’un point de vue scientifique pour transmettre à tous les clés nécessaires dans un monde en constante mutation.

À l\'heure où la défiance est au sommet et les flux d\'informations de plus en plus complexes, Futura s’engage aujourd’hui, encore plus qu’hier, à décrypter les grandes actualités et innovations autour de 5 catégories : sciences, technologie, planète, santé, maison.','https://upload.wikimedia.org/wikipedia/commons/0/02/Futura-logo.jpg','https://www.futura-sciences.com/sciences/');
INSERT INTO lien VALUES (NULL,'La Cité des Sciences','La Cité des sciences et de l\'industrie est un établissement français spécialisé dans la diffusion de la culture scientifique et technique. Je vous conseille Le Planétarium. ','https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Cit%C3%A9_des_Sciences_et_de_l%27Industrie_%40_Parc_de_La_Villette_%40_Paris_%2828957995305%29.jpg/1024px-Cit%C3%A9_des_Sciences_et_de_l%27Industrie_%40_Parc_de_La_Villette_%40_Paris_%2828957995305%29.jpg','https://www.cite-sciences.fr/fr/accueil/');
INSERT INTO lien VALUES (NULL,'L\'ASTRONOMIE le magazine','Scientifique reconnu, astronome amateur renommé, éminent contributeur au magazine l\'Astronomie.','https://scontent-cdg2-1.xx.fbcdn.net/v/t1.6435-9/117958972_1043004102801056_6867326614397707700_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=6e5ad9&_nc_ohc=VEwiO6Ja4zsAX8ChXuN&_nc_ht=scontent-cdg2-1.xx&oh=605f6434911e203516b87afb5614758d&oe=6068E4C8','https://lastronomie.fr/');
INSERT INTO lien VALUES (NULL,'Pour La Science','Des articles de fond signés par les meilleurs chercheurs en physique, astronomie, biologie, mathématiques, géosciences, neurosciences...','https://www.pourlascience.fr/images/logo_pls_fr_56px.png','https://www.pourlascience.fr/sd/astronomie/');
INSERT INTO lien VALUES (NULL,'Journal Aviation','Retrouvez toute l\'actualité aéronautique du Journal de l\'Aviation : industrie aéronautique, transport aérien, aviation d\'affaires, maintenance, MRO','https://pbs.twimg.com/profile_images/875387150723948551/IupJLGWl.jpg','https://www.journal-aviation.com/');
INSERT INTO lien VALUES (NULL,'SpaceX','SpaceX, officiellement Space Exploration Technologies Corporation, est une entreprise américaine spécialisée dans le domaine de l\'astronautique et du vol spatial.','https://cdn.1min30.com/wp-content/uploads/2018/04/Embl%C3%A8me-SpaceX.jpg','https://www.spacex.com/');
INSERT INTO lien VALUES (NULL,'Blue Origin','Blue Origin est une société créée en 2000 par le milliardaire Jeff Bezos, fondateur et principal actionnaire d\'Amazon\.com\, dans le but de développer de nouvelles technologies permettant d\'abaisser le coût d\'accès à l\'espace. Le siège se trouve à Kent dans la banlieue de Seattle.','https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Blue_Origin_updated_logo_2015.svg/1200px-Blue_Origin_updated_logo_2015.svg.png','https://www.blueorigin.com/');
INSERT INTO lien VALUES (NULL,'astroshop','Astro-shop.fr est votre partenaire en matière d\'astronomie amateur qui vous propose des avantages incontestables : une très large gamme de produits, un stockage important, des prix avantageux et un service clientèle hors pair. Nous disposons d\'un atelier de fabrication de télescopes et vous accompagnons à tout moment après votre achat ! Laissez nos experts en astronomie et en télescopes vous conseiller gratuitement et sans engagement.','https://nimax-img.de/img12475/astroshop/layout_logo_fr.png','https://www.astroshop.de/fr/');

INSERT INTO Quizzastro VALUES(NULL,'quel est le nom de la galaxie d\'andromede selon le catalogue de Messier?', 'M31','M13','M100');
INSERT INTO Quizzastro VALUES(NULL,"quel est le diamètre de l'hamat d'hercule?","150 année lumière", "1500 année lumière", "500 année lumière");
INSERT INTO Quizzastro VALUES(NULL,"dans quel constelation se situe la nébuleuse de l'oeil de chat?", "la constelation du dragon", "la constelation d'andromede", "la constelation du chien de chasse");
INSERT INTO Quizzastro VALUES(NULL,"selon la mythologie grec orion a été tuer par quel animal?","un scorpion", "un sanglier", "un aigle");
INSERT INTO Quizzastro VALUES(NULL,"selon la mythologie grec casiopé est la mère de qui?","Andromède", "persée", "Gorgophoné");
INSERT INTO Quizzastro VALUES(NULL,"quel étoile du cygne apartien au triangel d'été","Deneb", "Albireo", "Sadr");
INSERT INTO Quizzastro VALUES(NULL,"quel est la distance entre titan et saturne?","1 222 000 kilomètres", " 5 151 kilomètres", "12 742 kilomètres");
INSERT INTO Quizzastro VALUES(NULL,"quel est l'age estimer d'Europe?", "100 millions d\'années", "200 million d'année", "4,503 milliards d'année");
INSERT INTO Quizzastro VALUES(NULL,"en combien de temps Ganymède fait le tour de Jupiter", "sept jours", "85 heures", "2 semaines");
INSERT INTO Quizzastro VALUES(NULL,"en combien de temps le système solaire fait une révolution?", "225 à 250 millions d\'années", "200 à 225 millions d'années", "125 à 150 millions d'années");

/*INSERT INTO evenement VALUES (NULL,'2000-01-1','lieu','00:00','titre','description','Tarif Enfant : tarifE','Tarif Ado :tarifAdo','Tarif Adulte tarifA','Accès PMR : non','url');
INSERT INTO Phenomenes VALUES (NULL,'2000-01-12','lieu','titre','description','url');
INSERT INTO lien VALUES (NULL,'titre','description','url','lien');
INSERT INTO quizzastro VALUES (NULL,'question','bonne réponse','mauvaise rep','mauvaise rep');
INSERT INTO quizzaero VALUES (NULL,'question','bonne réponse','mauvaise rep','mauvaise rep');
INSERT INTO citation VALUES (NULL,'nom','prenom','description','date(est en varchar donc on peut écrire les siècle)');
INSERT INTO Adherent VALUES (NULL,'motdepasse','nom','prenom','M','mail1@mail2','2000-01-1','pseudo','ville','adresse',0,0,NULL,0,'0');*/

drop table if EXISTS chronoastro;
create table chronoastro(
  annee integer NOT NULL,
  description varchar(500),
  PRIMARY KEY  (annee)
) ENGINE=innodb;



INSERT INTO chronoastro VALUES (1609,": Galilée\, qui utilise pour la première fois une lunette, a l'idée de la tourner vers le ciel ; il invente la lunette astronomique. Johannes Kepler crée ses deux premières lois ");
INSERT INTO chronoastro VALUES(1610,"Galilée découvre Io, Europe, Ganymède et Callisto, les quatre plus gros satellites de Jupiter, les anneaux de Saturne, les phases de Vénus. Grâce à ses observations, il confirme la théorie de Copernic. L'héliocentrisme va petit à petit prendre sa place dans la pensée scientifique.");
INSERT INTO chronoastro VALUES(1611,"Premières observations détaillées des taches solaires par Christoph Scheiner, Galilée et David Fabricius.");
INSERT INTO chronoastro VALUES(1612,"Première observation (probable) d'une nova par un astronome européen, Christoph Scheiner. Nicolas-Claude Fabri de Peiresc découvre la nébuleuse d'Orion.");
INSERT INTO chronoastro VALUES(1619,"Johannes Kepler publie sa troisième loi");
INSERT INTO chronoastro VALUES(1636," Francesco Fontana observe Mars et en tire le premier croquis comprenant des différences de couleur. Idem pour Jupiter et ses bandes.");
INSERT INTO chronoastro VALUES(1639,"Première observation du transit de Vénus par Jeremiah Horrocks (le 4 décembre) et réévaluation la distance Terre-Soleil. Francesco Fontana observe pour la première fois les phases de Mercure.");
INSERT INTO chronoastro VALUES(1647,"Johannes Hevelius publie la première carte de la Lune.");
INSERT INTO chronoastro VALUES(1655,"Christian Huygens découvre Titan, le plus gros satellite de Saturne.");
INSERT INTO chronoastro VALUES(1656,"Christian Huygens découvre la nature des anneaux de Saturne.");
INSERT INTO chronoastro VALUES(1666,"Jean-Dominique Cassini découvre les calottes polaires de Mars. Isaac Newton observe le spectre du Soleil.");
INSERT INTO chronoastro VALUES(1668,"Isaac Newton invente le télescope.");
INSERT INTO chronoastro VALUES(1679,"Edmund Halley publie son catalogue de 341 étoiles de l'hémisphère sud.");
INSERT INTO chronoastro VALUES(1682,"Après le passage de la comète qui, depuis, porte son nom, Edmond Halley étudie les orbites particulières de ces corps célestes et comprend que certaines sont périodiques, d'autres non. Il prédit le retour de la comète de Halley pour 1758, c’est-à-dire 76 ans après.");
INSERT INTO chronoastro VALUES(1687,"Isaac Newton énonce la loi universelle de la gravitation.");
INSERT INTO chronoastro VALUES(1729,"Invention de la lunette achromatique par Chester Moore Hall.");
INSERT INTO chronoastro VALUES(1758,"Charles Messier croit observer le retour de la comète de Halley, qu'il confond avec la Nébuleuse du Crabe. Sa méprise l'incite à compiler le premier catalogue d'objets célestes non stellaires, le catalogue Messier.");
INSERT INTO chronoastro VALUES(1761,"Mikhaïl Lomonossov découvre que Vénus possède une atmosphère.");
INSERT INTO chronoastro VALUES(1771,"Charles Messier entame le catalogue qui porte aujourd'hui son nom.");
INSERT INTO chronoastro VALUES(1781,"William Herschel découvre une nouvelle planète, Uranus, dont le nom est proposé par Johann Bode");
INSERT INTO chronoastro VALUES(1833,"Pluie d'étoiles filantes de l'essaim des Léonides.");
INSERT INTO chronoastro VALUES(1842,"Christian Doppler découvre l'effet Doppler.");
INSERT INTO chronoastro VALUES(1860,"Naissance de l'astrophysique avec l'invention de la spectroscopie dont William Huggins est le précurseur.");
INSERT INTO chronoastro VALUES(1868,"Premières observations des protubérances solaires par Jules Janssen et Joseph Norman Lockyer.");
INSERT INTO chronoastro VALUES(1878,"Extension maximale de la grande tache rouge de Jupiter.");
INSERT INTO chronoastro VALUES(1905,"Albert Einstein édicte les lois de la relativité restreinte.");
INSERT INTO chronoastro VALUES(1915,"Albert Einstein découvre la relativité générale. Début de la cosmologie moderne.");
INSERT INTO chronoastro VALUES(1918,"Harlow Shapley prouve que le Soleil n'est pas situé au centre de la Voie lactée, dont le centre est, vu depuis la Terre, dans la constellation du Sagittaire.");
INSERT INTO chronoastro VALUES(1925,"Edwin Hubble découvre des galaxies extérieures à la Voie lactée (NGC 6822 puis M32 et M33). Le Grand Débat est clos.");
INSERT INTO chronoastro VALUES(1929,"Hubble mesure la distance des galaxies, découvre qu'elles s'éloignent de nous et formule la loi de Hubble qui établit la relation entre leur distance et leur vitesse d'éloignement. L'idée du Big Bang prend forme.");
INSERT INTO chronoastro VALUES(1930,"Clyde W. Tombaugh découvre Pluton sur des plaques photographiques.");
INSERT INTO chronoastro VALUES(1931,"Karl Jansky découvre l'émission radio de la Voie lactée. Début de la radioastronomie.");
INSERT INTO chronoastro VALUES(1937,"découverte par Fritz Zwicky des anomalies dans les courbes de rotation des galaxies, preuve indirecte de la présence de matière noire.");
INSERT INTO chronoastro VALUES(1939,"Calcul de l'effondrement d'une étoile en trou noir par Robert Oppenheimer et Snyder.");
INSERT INTO chronoastro VALUES(1995,"Découverte de la première exoplanète par Michel Mayor et Didier Queloz (de l'observatoire de Genève), d'après des observations qu'ils ont réalisées à l'observatoire de Haute-Provence grâce à la méthode des vitesses radiales. L'étoile hôte est 51 Pegasi, dans la constellation de Pégase, à environ 40 années lumière de la Terre.");
INSERT INTO chronoastro VALUES(1996,"Première détection d'une étoile à neutrons isolée qui ne soit pas vue sous la forme d'un pulsar.");
INSERT INTO chronoastro VALUES(2001,"Le noyau de la comète Borrelly est photographié le 25 septembre 2001 à 8 km de distance par la sonde spatiale Deep Space 1.");
INSERT INTO chronoastro VALUES(2012,"(2 mai) Première preuve visuelle de l'existence des trous-noirs. L'équipe de Suvi Gezari de l'université Johns Hopkins, utilisant le télescope hawaien Pan-STARRS 1, publie les images d'un trou noir supermassif à 2,7 millions d'années lumière en train d'aspirer une géante rouge");
INSERT INTO chronoastro VALUES(2019,"première phtoto d’un trou noir.");

INSERT INTO Quizzaero VALUES(NULL,'1490, Qui à Imaginé "La Vis aérienne" qui est le précurseur de l\'hélicoptère?', 'léonard de vinci','albert heinstein','isaac Newton');
INSERT INTO Quizzaero VALUES(NULL,"à quel lieu \"L'éole\" de Clement Ader à effectué son 1er vol?","Gretz-armainvilliers", "Versaille", "Nante");
INSERT INTO Quizzaero VALUES(NULL,"Quel animal était Laïka, le 1er être vivant mis en orbite en Novembre 1957?", "un chien", "un chimpanzé", "un chat");
INSERT INTO Quizzaero VALUES(NULL,"Quel Pays à Conçu le 1er Avion à Réaction?","les allemands", "les américain", "les français");
INSERT INTO Quizzaero VALUES(NULL,"Qui à franchis le mur du son en 1947 à bord du Bell X-1? ","chuck yeager", "charles lindbergh", "roland garros");
INSERT INTO Quizzaero VALUES(NULL,"Quel était le prénom des frères Wright?","orville et wilbur", "james et roger", "alfred et thomas");
INSERT INTO Quizzaero VALUES(NULL,"Comment s'appellait le site d'Alunisage de la Mission Apollo 11?","mer de la tranquilité", " océan des tempete", "mer des nuages");
INSERT INTO Quizzaero VALUES(NULL,"Par quoi se traduisait le nom \"Spoutnik\", le 1er satellite mis en orbite?", "compagnon", "amitier", "famille");
INSERT INTO Quizzaero VALUES(NULL,"Quel était le nom de la Mission dans laquel Youri Gagarine est devenu le 1er homme dans l'espace?", "vostok 1", "spoutnik 2", "spoutnik1");
INSERT INTO Quizzaero VALUES(NULL,"En quel année la mission STS-1 officialisa le 1er vol de la navette Columbia?", "1981", "1969", "1961");


INSERT INTO citation VALUES (NULL,"Armstrong","Neil","C’est un petit pas pour l’homme, un grand pas pour l’humanité","21 juillet 1969");
INSERT INTO citation VALUES (NULL,"Galilei","Galileo","La mathématique est une science dangereuse : elle dévoile les supercheries et les erreurs de calcul.","16e siecles");
INSERT INTO citation VALUES (NULL,"Galilei","Galileo","Quoi qu'il arrive, une découverte, une idée lancée, n'appartient plus à son auteur. Galilée s'est récusé, mais la terre n'a pas pour autant cessé de tourner.","16e siecles");
INSERT INTO citation VALUES (NULL,"Galilei","Galileo","Le soleil, avec toutes ces planètes qui gravitent sous sa gouverne, prend encore le temps de mûrir une grappe de raisin, comme s'il n'y avait rien de plus important.","16e siecles");
INSERT INTO citation VALUES (NULL,"Tesla","Nikola","Si vous voulez trouver les secrets de l’univers, pensez en termes d’énergie,  de fréquence, d’information et de vibration.","19e siecle");
INSERT INTO citation VALUES (NULL,"Tesla","Nikola","Le jour où la science commencera à étudier les phénomènes non physiques, elle fera plus de progrès en une décennie que dans tous les siècles précédents de son existence","19e siecle");
INSERT INTO citation VALUES (NULL,"Tesla","Nikola","Aujourd’hui les scientifiques ont substitués les mathématiques aux expériences, Alors ils errent d’équation en équation, créant éventuellement une structure qui n’a aucun lien avec la réalité.
","19e siecle");
INSERT INTO citation VALUES (NULL,"Newton","Isaac","Ne tenez pour certain que ce qui est démontré.","17e siècle");
INSERT INTO citation VALUES (NULL,"Newton","Isaac","Dix mille difficultés ne font pas un doute.","17e siècle");
INSERT INTO citation VALUES (NULL,"Newton","Isaac","Platon et Aristote sont mes amis. Mais ma meilleure amie est la vérité.","17e siècle");

INSERT INTO citation VALUES (NULL,"Einstein","Albert","Dieu ne joue pas aux dés.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","Nous aurons le destin que nous aurons mérité.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","L’imagination est plus importante que le savoir.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","L'enseignement devrait être ainsi : celui qui le reçoit le recueille comme un don inestimable mais jamais comme une contrainte pénible.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","La personnalité créatrice doit penser et juger par elle-même car le progrès moral de la société dépend exclusivement de son indépendance.","19e siecle");


drop table if EXISTS historique;
CREATE TABLE historique (
  annee integer NOT NULL,
  description varchar(500),
  PRIMARY KEY  (annee)
) ENGINE=innodb;



INSERT INTO historique values(1490,": la vis aérienne Imaginé par Léonard De Vinci; Il s'agit d'un aéronef à hélice à vol vertical interprété par certains comme un précurseur de l’hélicoptère moderne. ");
INSERT INTO historique values(1890,  ": L’éole de Clément Ader; c'est le premier prototype d'avion de type aérodyne (ou aéronef plus lourd que l'air)  construit par Clément Ader. S'inspirant de la morphologie des chauves-souris, l'appareil fut testé le 9 octobre 1890, dans le parc du château de Gretz-Armainvilliers");
INSERT INTO historique values(1903,"Premier vol motorisé du Wright Flyer des Frères Wright; Le Wright Flyer est l'avion avec lequel les frères Orville et Wilbur Wright effectuèrent les premiers vols contrôlés et motorisés de l'histoire de l'aviation, à Kitty Hawk en Caroline du Nord, Contrairement à L'éole de Clement Ader, le Wright flyer disposais de commande vol permettant de le controller en vol.");
INSERT INTO historique values(1939,"1er avion a reaction conçu par L’Allemagne Nazie, Heinkel HE-178; Le Heinkel He 178 est le premier avion à turboréacteur de l'histoire aéronautique, conçu dans l'entre-deux-guerres");
INSERT INTO historique values(1941,"Chuck Yeager Franchis le mur du son à bord de son Bell X1");
INSERT INTO historique values(1957,"Sputnik deviens le 1er  satelitte  artificiel  en  Orbite; Spoutnik 1 (en russe : Спутник I, signifiant « Compagnon » ou « Satellite ») est le premier satellite artificiel de la Terre. Cet engin spatial soviétique, premier de la série de satellites Spoutnik, est lancé le 4 octobre 1957 depuis le cosmodrome de Baïkonour");
INSERT INTO historique values(1957,"Laika deviens le 1er etre vivant dans l’espace; Laïka (du russe : Лайка, « petit aboyeur » ; 1954 – 3 novembre 1957) est une chienne du programme spatial soviétique et le premier être vivant mis en orbite autour de la Terre.");
INSERT INTO historique values(1961,"Yuri Gagarin devien le 1er Homme dans l’espace; YouriAlexeïevitch Gagarine, né le 9 mars 1934 et mort le 27 mars 1968, est le premier homme à avoir effectué un vol dans l'espace au cours de la mission Vostok 1 le 12 avril 1961, dans le cadre du programme spatial soviétique.");
INSERT INTO historique values(1969,"Neil Amstrong et Buzz Aldrin sont les 1er homme sur la Lune");
INSERT INTO historique values(1981,"1ère Mission pour la Navette Columbia (STS-1).");
