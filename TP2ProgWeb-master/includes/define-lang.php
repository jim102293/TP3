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
}      
?>
