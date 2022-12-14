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
/*Ph??nom??nes*/
INSERT INTO Phenomenes VALUES (NULL,'2021-07-5','partout','Aph??lie','La terre passera au point le plus ??logn?? du soleil.L\'aph??lie correspond au point de l\'orbite d\'une plan??te le plus ??loign?? du Soleil. Plus largement, au point de l\'orbite h??liocentrique d\'un objet c??leste o?? sa distance avec le Soleil est maximale. Et l\'??tymologie du terme l\'indique clairement puisqu\'il est form?? de deux mots grecs qui veulent dire ?????loin????? et ?????Soleil?????.','https://archipeldessciences.files.wordpress.com/2016/04/terre_lune_soleil.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-01-2','partout','P??rih??lie','La terre passera au point le plus proche du soleil.Le p??rih??lie correspond au point de l\'orbite d\'une plan??te le plus proche du Soleil. Plus largement, au point de l\'orbite h??liocentrique d\'un objet c??leste o?? sa distance avec le Soleil est minimale. Et son ??tymologie l\'indique clairement puisqu\'il est form?? du pr??fixe ?????p??ri????? qui signifie ???? l\'entour de????? et de ?????h??lie????? pour ?????Soleil?????.','https://www.sciencesetavenir.fr/assets/img/2014/07/03/cover-r4x3w1000-5d1b70ef79873-aphelie.png');
INSERT INTO Phenomenes VALUES (NULL,'2021-04-17','Selon la region','Mercure V??nus et Mars seront occult??es par la Lune','Les astronomes parlent d\'occultation lorsqu\'un astre est masqu?? par un autre. En 2021, Mercure, V??nus et Mars seront ainsi occult??es plusieurs fois par la Lune. Et notamment, pour la Plan??te rouge, le 17 avril -- une occultation visible depuis l\'Asie du sud-est -- et V??nus, le 8 novembre -- une occultation visible depuis le nord-ouest de la r??gion Pacifique.

Seule occultation par la Lune visible depuis l\'Europe en cette ann??e 2021, celle de l\'??toile Epsilon Geminorum, dans la constellation des G??meaux, le 2 septembre. Source image: NASA','https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/f/c/f/fcfcf4c453_50171844_eclipse-totale-lune.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-05-26','l\'oc??an Pacifique, ente le Japon et l\'Alaska','Une ??clipse totale de Lune','Si 2020 a ??t?? avare en ??clipses de Lune spectaculaires l\'ann??e nous en a offert quatre, mais toutes ??taient ??par la p??nombre?? /, 2021 s\'annonce plus g??n??reuse en la mati??re. Une ??clipse totale est en effet attendue le 26 mai prochain. La Lune passera alors enti??rement dans l\'ombre de la Terre.','https://www.stelvision.com/astro/wp-content/uploads/2019/07/partiel_eclipse_lune-1024x536.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-06-10','l\'h??misph??re nord ','Une ??clipse annulaire du Soleil ','Le 10 juin 2021, c\'est le nord de l\'h??misph??re nord de notre Plan??te qui se pr??pare ?? assister ?? une ??clipse de Soleil annulaire. Un genre d\'??clipse qui se produit lorsque le diam??tre apparent de la Lune n\'est pas aussi grand que celui du Soleil. Les plus chanceux observent alors une sorte d\'anneau de feu autour de notre satellite naturel. Cette fois\, la bande de centralit?? commencera du c??t?? du nord\-est du Canada pour traverser le Groenland par le nord\-ouest\, passer par le p??le Nord et finir sur l\'est de la Russie.','https://cdn.futura-sciences.com/buildsv6/images/largeoriginal/5/f/c/5fcbb5321d_50164974_clipse-solaire-2020-doordarshan-national.jpg');
INSERT INTO Phenomenes VALUES (NULL,'2021-01-1','partout sur terre','Les Pers??ides','Chaque mois d`\'ao??t, la Terre traverse le nuage de d??bris laiss??s par la com??te Swift-Tuttle. De quoi nous offrir une belle pluie d?????toiles filantes. En 2021\, le maximum des Pers??ides est attendu autour du 12 et du 13 ao??t avec jusqu\'?? 60 ??toiles filantes ?? observer par heure. Un beau spectacle en perspective d\'autant que la Lune n\'aura alors pas encore atteint son premier quartier.

A noter que :D\'autres pluies d\'??toiles filantes sont annonc??es dans l\'ann??e : le 6 mai avec le maximum des ??ta aquarides 50 objets par heure \, le 7 juin pour les Ari??tides -- 30 objets par heure -- le 10 octobre pour les Taurides -- 10 objets par heure --, le 3 d??cembre pour les Androm??dides -- 20 objets par heure -- et le 14 d??cembre pour les G??minides -- entre 60 et 75 objets par heure.','https://www.sciencesetavenir.fr/assets/img/2016/08/04/cover-r4x3w1000-5f282a9ee2bad-l-essaim-des-perseides.png');
/*Evenement*/
INSERT INTO evenement VALUES (NULL,NULL,'Sur toute la plan??te',NULL,'Dans le contexte de la pand??mie','Les r??unions de personnes etant non recommend??es, aucun evenement ne sera pr??sent?? ici mais nous vous conseillons grandement de ne pas abandonner votre passion, quoi qu\'il arrive le ciel reste toujours au dessus de nous ','','','','','https://www.valcouesnon.fr/medias/2020/10/covid-19-4960254_640-petite.png');
/*Lien*/
INSERT INTO lien VALUES (NULL,'NASA','La National Aeronautics and Space Administration, plus connue sous son acronyme NASA, est l\'agence gouvernementale responsable de la majeure partie du programme spatial civil des ??tats-Unis. La recherche a??ronautique rel??ve ??galement du domaine de la NASA.','https://www.nasa.gov/sites/all/themes/custom/nasatwo/images/nasa-logo.svg','https://www.nasa.gov/');
INSERT INTO lien VALUES (NULL,'Futura sciences','Futura, explorer le monde.
Futura est n?? en 2001 de la volont?? de d??crypter les innovations et les actualit??s d???un point de vue scientifique pour transmettre ?? tous les cl??s n??cessaires dans un monde en constante mutation.

?? l\'heure o?? la d??fiance est au sommet et les flux d\'informations de plus en plus complexes, Futura s???engage aujourd???hui, encore plus qu???hier, ?? d??crypter les grandes actualit??s et innovations autour de 5 cat??gories : sciences, technologie, plan??te, sant??, maison.','https://upload.wikimedia.org/wikipedia/commons/0/02/Futura-logo.jpg','https://www.futura-sciences.com/sciences/');
INSERT INTO lien VALUES (NULL,'La Cit?? des Sciences','La Cit?? des sciences et de l\'industrie est un ??tablissement fran??ais sp??cialis?? dans la diffusion de la culture scientifique et technique. Je vous conseille Le Plan??tarium. ','https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Cit%C3%A9_des_Sciences_et_de_l%27Industrie_%40_Parc_de_La_Villette_%40_Paris_%2828957995305%29.jpg/1024px-Cit%C3%A9_des_Sciences_et_de_l%27Industrie_%40_Parc_de_La_Villette_%40_Paris_%2828957995305%29.jpg','https://www.cite-sciences.fr/fr/accueil/');
INSERT INTO lien VALUES (NULL,'L\'ASTRONOMIE le magazine','Scientifique reconnu, astronome amateur renomm??, ??minent contributeur au magazine l\'Astronomie.','https://scontent-cdg2-1.xx.fbcdn.net/v/t1.6435-9/117958972_1043004102801056_6867326614397707700_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=6e5ad9&_nc_ohc=VEwiO6Ja4zsAX8ChXuN&_nc_ht=scontent-cdg2-1.xx&oh=605f6434911e203516b87afb5614758d&oe=6068E4C8','https://lastronomie.fr/');
INSERT INTO lien VALUES (NULL,'Pour La Science','Des articles de fond sign??s par les meilleurs chercheurs en physique, astronomie, biologie, math??matiques, g??osciences, neurosciences...','https://www.pourlascience.fr/images/logo_pls_fr_56px.png','https://www.pourlascience.fr/sd/astronomie/');
INSERT INTO lien VALUES (NULL,'Journal Aviation','Retrouvez toute l\'actualit?? a??ronautique du Journal de l\'Aviation : industrie a??ronautique, transport a??rien, aviation d\'affaires, maintenance, MRO','https://pbs.twimg.com/profile_images/875387150723948551/IupJLGWl.jpg','https://www.journal-aviation.com/');
INSERT INTO lien VALUES (NULL,'SpaceX','SpaceX, officiellement Space Exploration Technologies Corporation, est une entreprise am??ricaine sp??cialis??e dans le domaine de l\'astronautique et du vol spatial.','https://cdn.1min30.com/wp-content/uploads/2018/04/Embl%C3%A8me-SpaceX.jpg','https://www.spacex.com/');
INSERT INTO lien VALUES (NULL,'Blue Origin','Blue Origin est une soci??t?? cr????e en 2000 par le milliardaire Jeff Bezos, fondateur et principal actionnaire d\'Amazon\.com\, dans le but de d??velopper de nouvelles technologies permettant d\'abaisser le co??t d\'acc??s ?? l\'espace. Le si??ge se trouve ?? Kent dans la banlieue de Seattle.','https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Blue_Origin_updated_logo_2015.svg/1200px-Blue_Origin_updated_logo_2015.svg.png','https://www.blueorigin.com/');
INSERT INTO lien VALUES (NULL,'astroshop','Astro-shop.fr est votre partenaire en mati??re d\'astronomie amateur qui vous propose des avantages incontestables : une tr??s large gamme de produits, un stockage important, des prix avantageux et un service client??le hors pair. Nous disposons d\'un atelier de fabrication de t??lescopes et vous accompagnons ?? tout moment apr??s votre achat ! Laissez nos experts en astronomie et en t??lescopes vous conseiller gratuitement et sans engagement.','https://nimax-img.de/img12475/astroshop/layout_logo_fr.png','https://www.astroshop.de/fr/');

INSERT INTO Quizzastro VALUES(NULL,'quel est le nom de la galaxie d\'andromede selon le catalogue de Messier?', 'M31','M13','M100');
INSERT INTO Quizzastro VALUES(NULL,"quel est le diam??tre de l'hamat d'hercule?","150 ann??e lumi??re", "1500 ann??e lumi??re", "500 ann??e lumi??re");
INSERT INTO Quizzastro VALUES(NULL,"dans quel constelation se situe la n??buleuse de l'oeil de chat?", "la constelation du dragon", "la constelation d'andromede", "la constelation du chien de chasse");
INSERT INTO Quizzastro VALUES(NULL,"selon la mythologie grec orion a ??t?? tuer par quel animal?","un scorpion", "un sanglier", "un aigle");
INSERT INTO Quizzastro VALUES(NULL,"selon la mythologie grec casiop?? est la m??re de qui?","Androm??de", "pers??e", "Gorgophon??");
INSERT INTO Quizzastro VALUES(NULL,"quel ??toile du cygne apartien au triangel d'??t??","Deneb", "Albireo", "Sadr");
INSERT INTO Quizzastro VALUES(NULL,"quel est la distance entre titan et saturne?","1 222 000 kilom??tres", " 5 151 kilom??tres", "12 742 kilom??tres");
INSERT INTO Quizzastro VALUES(NULL,"quel est l'age estimer d'Europe?", "100 millions d\'ann??es", "200 million d'ann??e", "4,503 milliards d'ann??e");
INSERT INTO Quizzastro VALUES(NULL,"en combien de temps Ganym??de fait le tour de Jupiter", "sept jours", "85 heures", "2 semaines");
INSERT INTO Quizzastro VALUES(NULL,"en combien de temps le syst??me solaire fait une r??volution?", "225 ?? 250 millions d\'ann??es", "200 ?? 225 millions d'ann??es", "125 ?? 150 millions d'ann??es");

/*INSERT INTO evenement VALUES (NULL,'2000-01-1','lieu','00:00','titre','description','Tarif Enfant : tarifE','Tarif Ado :tarifAdo','Tarif Adulte tarifA','Acc??s PMR : non','url');
INSERT INTO Phenomenes VALUES (NULL,'2000-01-12','lieu','titre','description','url');
INSERT INTO lien VALUES (NULL,'titre','description','url','lien');
INSERT INTO quizzastro VALUES (NULL,'question','bonne r??ponse','mauvaise rep','mauvaise rep');
INSERT INTO quizzaero VALUES (NULL,'question','bonne r??ponse','mauvaise rep','mauvaise rep');
INSERT INTO citation VALUES (NULL,'nom','prenom','description','date(est en varchar donc on peut ??crire les si??cle)');
INSERT INTO Adherent VALUES (NULL,'motdepasse','nom','prenom','M','mail1@mail2','2000-01-1','pseudo','ville','adresse',0,0,NULL,0,'0');*/

drop table if EXISTS chronoastro;
create table chronoastro(
  annee integer NOT NULL,
  description varchar(500),
  PRIMARY KEY  (annee)
) ENGINE=innodb;



INSERT INTO chronoastro VALUES (1609,": Galil??e\, qui utilise pour la premi??re fois une lunette, a l'id??e de la tourner vers le ciel ; il invente la lunette astronomique. Johannes Kepler cr??e ses deux premi??res lois ");
INSERT INTO chronoastro VALUES(1610,"Galil??e d??couvre Io, Europe, Ganym??de et Callisto, les quatre plus gros satellites de Jupiter, les anneaux de Saturne, les phases de V??nus. Gr??ce ?? ses observations, il confirme la th??orie de Copernic. L'h??liocentrisme va petit ?? petit prendre sa place dans la pens??e scientifique.");
INSERT INTO chronoastro VALUES(1611,"Premi??res observations d??taill??es des taches solaires par Christoph Scheiner, Galil??e et David Fabricius.");
INSERT INTO chronoastro VALUES(1612,"Premi??re observation (probable) d'une nova par un astronome europ??en, Christoph Scheiner. Nicolas-Claude Fabri de Peiresc d??couvre la n??buleuse d'Orion.");
INSERT INTO chronoastro VALUES(1619,"Johannes Kepler publie sa troisi??me loi");
INSERT INTO chronoastro VALUES(1636," Francesco Fontana observe Mars et en tire le premier croquis comprenant des diff??rences de couleur. Idem pour Jupiter et ses bandes.");
INSERT INTO chronoastro VALUES(1639,"Premi??re observation du transit de V??nus par Jeremiah Horrocks (le 4 d??cembre) et r????valuation la distance Terre-Soleil. Francesco Fontana observe pour la premi??re fois les phases de Mercure.");
INSERT INTO chronoastro VALUES(1647,"Johannes Hevelius publie la premi??re carte de la Lune.");
INSERT INTO chronoastro VALUES(1655,"Christian Huygens d??couvre Titan, le plus gros satellite de Saturne.");
INSERT INTO chronoastro VALUES(1656,"Christian Huygens d??couvre la nature des anneaux de Saturne.");
INSERT INTO chronoastro VALUES(1666,"Jean-Dominique Cassini d??couvre les calottes polaires de Mars. Isaac Newton observe le spectre du Soleil.");
INSERT INTO chronoastro VALUES(1668,"Isaac Newton invente le t??lescope.");
INSERT INTO chronoastro VALUES(1679,"Edmund Halley publie son catalogue de 341 ??toiles de l'h??misph??re sud.");
INSERT INTO chronoastro VALUES(1682,"Apr??s le passage de la com??te qui, depuis, porte son nom, Edmond Halley ??tudie les orbites particuli??res de ces corps c??lestes et comprend que certaines sont p??riodiques, d'autres non. Il pr??dit le retour de la com??te de Halley pour 1758, c???est-??-dire 76 ans apr??s.");
INSERT INTO chronoastro VALUES(1687,"Isaac Newton ??nonce la loi universelle de la gravitation.");
INSERT INTO chronoastro VALUES(1729,"Invention de la lunette achromatique par Chester Moore Hall.");
INSERT INTO chronoastro VALUES(1758,"Charles Messier croit observer le retour de la com??te de Halley, qu'il confond avec la N??buleuse du Crabe. Sa m??prise l'incite ?? compiler le premier catalogue d'objets c??lestes non stellaires, le catalogue Messier.");
INSERT INTO chronoastro VALUES(1761,"Mikha??l Lomonossov d??couvre que V??nus poss??de une atmosph??re.");
INSERT INTO chronoastro VALUES(1771,"Charles Messier entame le catalogue qui porte aujourd'hui son nom.");
INSERT INTO chronoastro VALUES(1781,"William Herschel d??couvre une nouvelle plan??te, Uranus, dont le nom est propos?? par Johann Bode");
INSERT INTO chronoastro VALUES(1833,"Pluie d'??toiles filantes de l'essaim des L??onides.");
INSERT INTO chronoastro VALUES(1842,"Christian Doppler d??couvre l'effet Doppler.");
INSERT INTO chronoastro VALUES(1860,"Naissance de l'astrophysique avec l'invention de la spectroscopie dont William Huggins est le pr??curseur.");
INSERT INTO chronoastro VALUES(1868,"Premi??res observations des protub??rances solaires par Jules Janssen et Joseph Norman Lockyer.");
INSERT INTO chronoastro VALUES(1878,"Extension maximale de la grande tache rouge de Jupiter.");
INSERT INTO chronoastro VALUES(1905,"Albert Einstein ??dicte les lois de la relativit?? restreinte.");
INSERT INTO chronoastro VALUES(1915,"Albert Einstein d??couvre la relativit?? g??n??rale. D??but de la cosmologie moderne.");
INSERT INTO chronoastro VALUES(1918,"Harlow Shapley prouve que le Soleil n'est pas situ?? au centre de la Voie lact??e, dont le centre est, vu depuis la Terre, dans la constellation du Sagittaire.");
INSERT INTO chronoastro VALUES(1925,"Edwin Hubble d??couvre des galaxies ext??rieures ?? la Voie lact??e (NGC 6822 puis M32 et M33). Le Grand D??bat est clos.");
INSERT INTO chronoastro VALUES(1929,"Hubble mesure la distance des galaxies, d??couvre qu'elles s'??loignent de nous et formule la loi de Hubble qui ??tablit la relation entre leur distance et leur vitesse d'??loignement. L'id??e du Big Bang prend forme.");
INSERT INTO chronoastro VALUES(1930,"Clyde W. Tombaugh d??couvre Pluton sur des plaques photographiques.");
INSERT INTO chronoastro VALUES(1931,"Karl Jansky d??couvre l'??mission radio de la Voie lact??e. D??but de la radioastronomie.");
INSERT INTO chronoastro VALUES(1937,"d??couverte par Fritz Zwicky des anomalies dans les courbes de rotation des galaxies, preuve indirecte de la pr??sence de mati??re noire.");
INSERT INTO chronoastro VALUES(1939,"Calcul de l'effondrement d'une ??toile en trou noir par Robert Oppenheimer et Snyder.");
INSERT INTO chronoastro VALUES(1995,"D??couverte de la premi??re exoplan??te par Michel Mayor et Didier Queloz (de l'observatoire de Gen??ve), d'apr??s des observations qu'ils ont r??alis??es ?? l'observatoire de Haute-Provence gr??ce ?? la m??thode des vitesses radiales. L'??toile h??te est 51 Pegasi, dans la constellation de P??gase, ?? environ 40 ann??es lumi??re de la Terre.");
INSERT INTO chronoastro VALUES(1996,"Premi??re d??tection d'une ??toile ?? neutrons isol??e qui ne soit pas vue sous la forme d'un pulsar.");
INSERT INTO chronoastro VALUES(2001,"Le noyau de la com??te Borrelly est photographi?? le 25 septembre 2001 ?? 8 km de distance par la sonde spatiale Deep Space 1.");
INSERT INTO chronoastro VALUES(2012,"(2 mai) Premi??re preuve visuelle de l'existence des trous-noirs. L'??quipe de Suvi Gezari de l'universit?? Johns Hopkins, utilisant le t??lescope hawaien Pan-STARRS 1, publie les images d'un trou noir supermassif ?? 2,7 millions d'ann??es lumi??re en train d'aspirer une g??ante rouge");
INSERT INTO chronoastro VALUES(2019,"premi??re phtoto d???un trou noir.");

INSERT INTO Quizzaero VALUES(NULL,'1490, Qui ?? Imagin?? "La Vis a??rienne" qui est le pr??curseur de l\'h??licopt??re?', 'l??onard de vinci','albert heinstein','isaac Newton');
INSERT INTO Quizzaero VALUES(NULL,"?? quel lieu \"L'??ole\" de Clement Ader ?? effectu?? son 1er vol?","Gretz-armainvilliers", "Versaille", "Nante");
INSERT INTO Quizzaero VALUES(NULL,"Quel animal ??tait La??ka, le 1er ??tre vivant mis en orbite en Novembre 1957?", "un chien", "un chimpanz??", "un chat");
INSERT INTO Quizzaero VALUES(NULL,"Quel Pays ?? Con??u le 1er Avion ?? R??action?","les allemands", "les am??ricain", "les fran??ais");
INSERT INTO Quizzaero VALUES(NULL,"Qui ?? franchis le mur du son en 1947 ?? bord du Bell X-1? ","chuck yeager", "charles lindbergh", "roland garros");
INSERT INTO Quizzaero VALUES(NULL,"Quel ??tait le pr??nom des fr??res Wright?","orville et wilbur", "james et roger", "alfred et thomas");
INSERT INTO Quizzaero VALUES(NULL,"Comment s'appellait le site d'Alunisage de la Mission Apollo 11?","mer de la tranquilit??", " oc??an des tempete", "mer des nuages");
INSERT INTO Quizzaero VALUES(NULL,"Par quoi se traduisait le nom \"Spoutnik\", le 1er satellite mis en orbite?", "compagnon", "amitier", "famille");
INSERT INTO Quizzaero VALUES(NULL,"Quel ??tait le nom de la Mission dans laquel Youri Gagarine est devenu le 1er homme dans l'espace?", "vostok 1", "spoutnik 2", "spoutnik1");
INSERT INTO Quizzaero VALUES(NULL,"En quel ann??e la mission STS-1 officialisa le 1er vol de la navette Columbia?", "1981", "1969", "1961");


INSERT INTO citation VALUES (NULL,"Armstrong","Neil","C???est un petit pas pour l???homme, un grand pas pour l???humanit??","21 juillet 1969");
INSERT INTO citation VALUES (NULL,"Galilei","Galileo","La math??matique est une science dangereuse : elle d??voile les supercheries et les erreurs de calcul.","16e siecles");
INSERT INTO citation VALUES (NULL,"Galilei","Galileo","Quoi qu'il arrive, une d??couverte, une id??e lanc??e, n'appartient plus ?? son auteur. Galil??e s'est r??cus??, mais la terre n'a pas pour autant cess?? de tourner.","16e siecles");
INSERT INTO citation VALUES (NULL,"Galilei","Galileo","Le soleil, avec toutes ces plan??tes qui gravitent sous sa gouverne, prend encore le temps de m??rir une grappe de raisin, comme s'il n'y avait rien de plus important.","16e siecles");
INSERT INTO citation VALUES (NULL,"Tesla","Nikola","Si vous voulez trouver les secrets de l???univers, pensez en termes d?????nergie,  de fr??quence, d???information et de vibration.","19e siecle");
INSERT INTO citation VALUES (NULL,"Tesla","Nikola","Le jour o?? la science commencera ?? ??tudier les ph??nom??nes non physiques, elle fera plus de progr??s en une d??cennie que dans tous les si??cles pr??c??dents de son existence","19e siecle");
INSERT INTO citation VALUES (NULL,"Tesla","Nikola","Aujourd???hui les scientifiques ont substitu??s les math??matiques aux exp??riences, Alors ils errent d?????quation en ??quation, cr??ant ??ventuellement une structure qui n???a aucun lien avec la r??alit??.
","19e siecle");
INSERT INTO citation VALUES (NULL,"Newton","Isaac","Ne tenez pour certain que ce qui est d??montr??.","17e si??cle");
INSERT INTO citation VALUES (NULL,"Newton","Isaac","Dix mille difficult??s ne font pas un doute.","17e si??cle");
INSERT INTO citation VALUES (NULL,"Newton","Isaac","Platon et Aristote sont mes amis. Mais ma meilleure amie est la v??rit??.","17e si??cle");

INSERT INTO citation VALUES (NULL,"Einstein","Albert","Dieu ne joue pas aux d??s.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","Nous aurons le destin que nous aurons m??rit??.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","L???imagination est plus importante que le savoir.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","L'enseignement devrait ??tre ainsi : celui qui le re??oit le recueille comme un don inestimable mais jamais comme une contrainte p??nible.","19e siecle");
INSERT INTO citation VALUES (NULL,"Einstein","Albert","La personnalit?? cr??atrice doit penser et juger par elle-m??me car le progr??s moral de la soci??t?? d??pend exclusivement de son ind??pendance.","19e siecle");


drop table if EXISTS historique;
CREATE TABLE historique (
  annee integer NOT NULL,
  description varchar(500),
  PRIMARY KEY  (annee)
) ENGINE=innodb;



INSERT INTO historique values(1490,": la vis a??rienne Imagin?? par L??onard De Vinci; Il s'agit d'un a??ronef ?? h??lice ?? vol vertical interpr??t?? par certains comme un pr??curseur de l???h??licopt??re moderne. ");
INSERT INTO historique values(1890,  ": L?????ole de Cl??ment Ader; c'est le premier prototype d'avion de type a??rodyne (ou a??ronef plus lourd que l'air)  construit par Cl??ment Ader. S'inspirant de la morphologie des chauves-souris, l'appareil fut test?? le 9 octobre 1890, dans le parc du ch??teau de Gretz-Armainvilliers");
INSERT INTO historique values(1903,"Premier vol motoris?? du Wright Flyer des Fr??res Wright; Le Wright Flyer est l'avion avec lequel les fr??res Orville et Wilbur Wright effectu??rent les premiers vols contr??l??s et motoris??s de l'histoire de l'aviation, ?? Kitty Hawk en Caroline du Nord, Contrairement ?? L'??ole de Clement Ader, le Wright flyer disposais de commande vol permettant de le controller en vol.");
INSERT INTO historique values(1939,"1er avion a reaction con??u par L???Allemagne Nazie, Heinkel HE-178; Le Heinkel He 178 est le premier avion ?? turbor??acteur de l'histoire a??ronautique, con??u dans l'entre-deux-guerres");
INSERT INTO historique values(1941,"Chuck Yeager Franchis le mur du son ?? bord de son Bell X1");
INSERT INTO historique values(1957,"Sputnik deviens le 1er  satelitte  artificiel  en  Orbite; Spoutnik 1 (en russe : ?????????????? I, signifiant ?? Compagnon ?? ou ?? Satellite ??) est le premier satellite artificiel de la Terre. Cet engin spatial sovi??tique, premier de la s??rie de satellites Spoutnik, est lanc?? le 4 octobre 1957 depuis le cosmodrome de Ba??konour");
INSERT INTO historique values(1957,"Laika deviens le 1er etre vivant dans l???espace; La??ka (du russe : ??????????, ?? petit aboyeur ?? ; 1954 ??? 3 novembre 1957) est une chienne du programme spatial sovi??tique et le premier ??tre vivant mis en orbite autour de la Terre.");
INSERT INTO historique values(1961,"Yuri Gagarin devien le 1er Homme dans l???espace; YouriAlexe??evitch Gagarine, n?? le 9 mars 1934 et mort le 27 mars 1968, est le premier homme ?? avoir effectu?? un vol dans l'espace au cours de la mission Vostok 1 le 12 avril 1961, dans le cadre du programme spatial sovi??tique.");
INSERT INTO historique values(1969,"Neil Amstrong et Buzz Aldrin sont les 1er homme sur la Lune");
INSERT INTO historique values(1981,"1??re Mission pour la Navette Columbia (STS-1).");
