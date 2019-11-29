<?php
// DEFINITION DE LA LANGUE - FRANCAIS OU ENGLISH
session_start();
// GET session au premier chargement de la page

if(!isset ($_SESSION['lang'])){
    $_SESSION['lang']=1;
};


if($_SESSION['lang'] == 1){
    include('includes/lang-fr.php');
}else if($_SESSION['lang']== 2){
    include('includes/lang-en.php');
}
?>