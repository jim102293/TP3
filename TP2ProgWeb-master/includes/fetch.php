<?php
//avec ISSET
//Si la variable $_POST['truc'] existe, alors $truc = $_POST['truc']  sinon elle vaut NULL 
$col = isset($_GET['col_sort']) ? $_GET['col_sort'] : NULL;
$text = isset($_GET['texte']) ? $_GET['texte'] : NULL;

if (is_null($col)){$col = 1;}
if (is_null($text)){$text = "";}
//Connection
$conn = new mysqli("localhost", "root", "","site");
$conn->set_charset("utf8");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//ISSET
$key = isset($_GET['searkey']) ? $_GET['searkey'] : NULL;
//Variables permettant d'aller chercher les information nécessaires de la base de donnée
$sql = "SELECT activity.id, 
activity.activityname, 
supervisor.fullname, 
COUNT(member.fullname) as nbinscrit
FROM supervisor 
LEFT JOIN activity ON (activity.id = supervisor. activityid)
LEFT JOIN member ON (member.activityid = activity.id)
WHERE supervisor.id like '%".$text."%' or activityname like '%".$text."%' or supervisor.fullname like '%".$text."%'
GROUP BY activity.id order by ".$col;

$result = $conn->query($sql);
$ToutesLesDonnees = array();

while($r = $result->fetch_assoc()){
    $ToutesLesDonnees[] = $r;
}
//ENCODE avec JSON
echo json_encode($ToutesLesDonnees);
                ?> 