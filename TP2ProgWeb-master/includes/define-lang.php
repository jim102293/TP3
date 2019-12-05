<?php
// DEFINITION DE LA LANGUE - FRANCAIS OU ENGLISH
session_start();
// GET session au premier chargement de la page

if(!isset ($_SESSION['lang'])){
    $_SESSION['lang']=1;
};
// Valeur default si la connexion à la base de données marche pas
$home= 'Accueil';
$subscribe = 'S\'inscrire';
$localise = 'Localiser une activité';
$natation = 'Natation';
$badminton = 'Badminton';
$randonnee = 'Randonnée';
$kayak = 'Kayak';
$velo = 'Vélo';
$echec = 'Échecs';
$student = 'Je suis un étudiant';
$activite = 'Activité';
$responsable = 'Responsable';
$nombreDinscrits = 'Nombre d\'inscrits';
// Choisir la langue dependant de la session
if($_SESSION['lang'] == 1){
    $language = 'fr';
}else if($_SESSION['lang']== 2){
    $language = 'en';    
};

// Fetch les données de la base des données
$sql = "SELECT keyvalue, en, fr FROM `dictionary`";
foreach($pdo->query($sql, PDO::FETCH_ASSOC) as $row){
// Mettre l'entrée des base des données et les tags ensemble
// Les activitées et le menu
    if ($row['keyvalue'] == 'home'){
    $home = $row[$language];
    }     
    else if ($row['keyvalue'] == 'subscribe'){
        $subscribe = $row[$language];
    }
    else if ($row['keyvalue'] == 'localise'){
        $localise = $row[$language];
    }
    else if ($row['keyvalue'] == 'natation'){
        $natation = $row[$language];
    }
    else if ($row['keyvalue'] == 'badminton'){
        $badminton = $row[$language];
    }
    else if ($row['keyvalue'] == 'randonnee'){
        $randonnee = $row[$language];
    }
    else if ($row['keyvalue'] == 'kayak'){
        $kayak = $row[$language];
    }
    else if ($row['keyvalue'] == 'velo'){
        $velo = $row[$language];
    }
    else if ($row['keyvalue'] == 'echec'){
        $echec = $row[$language];
    }
    else if ($row['keyvalue'] == 'student'){
        $student = $row[$language];
    }
    // La tête du tableau
    else if ($row['keyvalue'] == 'activite'){
        $activite = $row[$language];
    }
    else if ($row['keyvalue'] == 'responsable'){
        $responsable = $row[$language];
    }
    else if ($row['keyvalue'] == 'nombreDinscrits'){
        $nombreDinscrits= $row[$language];
    }
    // Le formulaire
    else if ($row['keyvalue'] == 'nom'){
        $nom = $row[$language];
    }
    else if ($row['keyvalue'] == 'prenom'){
        $prenom = $row[$language];
    }
    else if ($row['keyvalue'] == 'dob'){
        $dob= $row[$language];
    }
    else if ($row['keyvalue'] == 'sexe'){
        $sexe = $row[$language];
    }
    else if ($row['keyvalue'] == 'homme'){
        $homme = $row[$language];
    }
    else if ($row['keyvalue'] == 'femme'){
        $femme= $row[$language];
    }
    else if ($row['keyvalue'] == 'motivation'){
        $motivation = $row[$language];
    }
    else if ($row['keyvalue'] == 'reinitialiser'){
        $reinitialiser = $row[$language];
    }
    else if ($row['keyvalue'] == 'valider'){
        $valider= $row[$language];
    }
    // Les titres
    else if ($row['keyvalue'] == 'accueiltitre'){
        $accueiltitre= $row[$language];
    }
    else if ($row['keyvalue'] == 'accueiltitretable'){
        $accueiltitretable = $row[$language];
    }
    else if ($row['keyvalue'] == 'inscriptiontitre'){
        $inscriptiontitre = $row[$language];
    }
    else if ($row['keyvalue'] == 'titresectioncarte'){
        $titresectioncarte= $row[$language];
    }
    else if ($row['keyvalue'] == 'title'){
        $title = $row[$language];
    }
    else if ($row['keyvalue'] == 'buttonremplir'){
        $buttonremplir = $row[$language];
    }
    else if ($row['keyvalue'] == 'buttoneffacer'){
        $buttoneffacer= $row[$language];
    }


// 
}      
?>
