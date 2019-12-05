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
        <?php
            //Selecting multiple rows from a MySQL database using the PDO::query function.
        $sql = "SELECT id, en, fr FROM `dictionary` WHERE id=1 ";
        foreach($pdo->query($sql, PDO::FETCH_ASSOC) as $row){
            // echo $row['en'] . '<br>';
            // echo $row['fr'] . '<br>';
            if($_SESSION['lang']==1){
                echo $row['fr'];
            }else if ($_SESSION['lang']==2){
                echo $row['en'];
            }
            
        }
    ?>
    
        </section>
        <section id="inscription">
        <?php
            //Selecting multiple rows from a MySQL database using the PDO::query function.
        $sql = "SELECT id, en, fr FROM `dictionary` WHERE id=2 ";
        foreach($pdo->query($sql, PDO::FETCH_ASSOC) as $row){
            // echo $row['en'] . '<br>';
            // echo $row['fr'] . '<br>';
            if($_SESSION['lang']==1){
                echo $row['fr'];
            }else if ($_SESSION['lang']==2){
                echo $row['en'];
            }
        }
            ?>
        </section>
        <section id="sectioncarte">
        <?php
            //Selecting multiple rows from a MySQL database using the PDO::query function.
        $sql = "SELECT id, en, fr FROM `dictionary` WHERE id=3 ";
        foreach($pdo->query($sql, PDO::FETCH_ASSOC) as $row){
            // echo $row['en'] . '<br>';
            // echo $row['fr'] . '<br>';
            if($_SESSION['lang']==1){
                echo $row['fr'];
            }else if ($_SESSION['lang']==2){
                echo $row['en'];
            }
        }
            ?>
        </section>
    </section>
</main>

        
</section>
</body>
</html>
