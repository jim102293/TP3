<?php
//Your MySQL user account.
$user = 'root';
 
//Your MySQL password.
$password = '';
 
//The server / hostname of your MySQL installation.
$server = 'localhost';
 
//The name of your MySQL database.
$database = 'site';
 
//Connect using PDO.
$pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
$pdo->exec( 'SET NAMES utf8' );
//Acceptation des caractères spéciaux


include('includes/define-lang.php');
?>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="assets/javascript/script.js"></script>
    <script src="assets/javascript/form.js"></script> 
    <link rel="stylesheet" href="assets/CSS/style.css">
    <link href="https://fonts.googleapis.com/css?family=Yatra+One&display=swap" rel="stylesheet"> <!--La font de Google-->
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="Maxime Noel, Frederick Simard, Sebastian Wagner, Jimmy Desfosses, David Mongeau.">
    
    <title>Loisir pour les étudiants</title>
    
</head>
<body onload="showTable()">
<header> <!--Entête-->
        <section class="container-1"> 
                <div class="box-1">
                    <img class="logo" src="assets/images/logo1.png" alt="LOGO_entete">
                </div><!-- Fin de la box-1 -->
                <div class="box-2">
                    <h1 class="loisir">Loisir pour les étudiants !</h1>
                </div><!-- Fin de la box-2 -->
        </section><!-- Fin de la section ENTÊTE -->
</header>

<main class="container-2"> <!--Section principal contenant la barre de navigation et la section du contenu principal du site. Mise en page de forme flex.-->
    <nav> <!--La barre de navigation-->
        <ul class="box-3">
            <li class="menu activeDefault"  id="haut"><a><?php echo $home; ?></a></li>
            <li class="menu updown" id="milieu"><a><?php echo $subscribe; ?></a></li>
            <li class ="menu updown" id="bas"><a><?php echo $localise; ?></a>
                <br /> <!--Lorsque la fenêtre est en mode <<cellulaire>>, cela permet au sous-menu de s<afficher diretcement en dessous du menu <<Localiser une activité>>-->
                <ul class="sousMenu">
                    <li><a><?php echo $natation; ?></a></li>
                    <li><a><?php echo $badminton; ?></a></li>
                    <li><a><?php echo $randonnee; ?></a></li>
                    <li><a><?php echo $kayak; ?></a></li>
                    <li><a><?php echo $velo; ?></a></li>
                    <li><a><?php echo $echec; ?></a></li>
                </ul>
            </li>
        </ul>
    </nav>
<section class="box-4">
    <a id="francais" href="includes/switch-lang.php?lang=1">Français</a>
    <a id="english" href="includes/switch-lang.php?lang=2">English</a>
    <section id="accueil">
            <h2>Notre but:</h2>
            <p> Notre site propose aux étudiants désireux de réaliser une ou plusieurs activités de loisir de rejoindre les différentes activités proposées dans la liste suivante en 3 étapes: </p>
                <ul>
                    <li>S'inscire</li>
                    <li>Choisir une ou plusieurs activité</li>
                    <li>Commencer les activités en groupe</li>
                </ul>   
            <p>Les différentes activités des groupes sont la responsabilité de professionnelles. Il s'agit de passionnés du domaine qui vous feront découvrir des pans inédits de vos loisirs préférés. Qu'attendez-vous..? Rejoignez-nous!</p>
            <div class="box-5">
                <h2>Liste des activités disponibles</h2>
                <div>
                <input type="button" name="show" value="Remplir" onclick="replaceDataInOrder(); showTable()">
                <input type="button" name="hide" value="Effacer" onclick="hideTable()">
                </div>
            </div>
            <table> <!--Le tableau-->
                <thead>
                    <tr>
                        <th onclick="activateTri(1)">#</th>
                        <th onclick="activateTri(2)"><?php echo $activite; ?></th>
                        <th onclick="activateTri(3)"><?php echo $responsable; ?></th>
                        <th onclick="activateTri(4)"><?php echo $nombreDinscrits; ?></th>
                    </tr>
                </thead>
                <tbody id="tableRows"></tbody>    
            </table>
        </section>
        <section id="inscription">
            <h2>Inscrivez-vous</h2>
            <form method="post" action="includes/serveur.php">
                <label><?php echo $nom; ?></label>
                <input type="text" name="nom" onkeyup="lettersOnly(this)"><br>
        
                <label><?php echo $prenom; ?></label>
                <input type="text" name="prenom" onkeyup="lettersOnly(this)"><br>
        
                <label><?php echo $dob; ?></label>
                <input type="date" name="bday"><br>
        
                <label><?php echo $sexe; ?></label>
        
                <input type="radio" name="sexe" value="Homme">
                <label><?php echo $homme; ?></label>
                <input type="radio" name="sexe" value="Femme">
                <label><?php echo $femme; ?></label><br>
        
                <label><?php echo $activite; ?></label>
                <input list="activite" name="activité" value="">
                <datalist id="activite">
                    <option value="Natation"><?php echo $natation; ?></option>
                    <option value="Badminton"><?php echo $badminton; ?></option>
                    <option value="Randonnée"> <?php echo $randonnee; ?></option>
                    <option value="Kayak"><?php echo $kayak; ?></option>
                    <option value="Vélo"><?php echo $velo; ?></option>
                    <option value="Échecs"><?php echo $echec; ?></option>
                </datalist><br>
        
                <label for="motivation"><?php echo $motivation; ?></label>
                <textarea id="motivation" class="reposition" name="motivation" rows="5" cols="40"></textarea><br>
        
                <input type="reset" name="reset" value=<?php echo $reinitialiser; ?> onclick="clearStyleOnReset()">
                <input type="submit" name="submit" value=<?php echo $valider; ?>>
                <span id="validation"></span>
            </form>
        </section>
        <section id="sectioncarte">
                <h3>L'adresse de l'université</h3>
                <!--La div pour la map -->
                <div id="map"></div>
                <p>3351 Boulevard des Forges, Trois-Rivières, QC G8Z 4M3</p>
        </section>
    </section>
</main>

        
</section>
</body>
</html>
