<?php
$col = $_GET["col_sort"];
$text =$_GET["texte"];

if (is_null($col)){$col = 1;}
if (is_null($text)){$text = "";}

/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$conn = mysqli_connect("localhost", "root", "root", "site");
$disconn = 'mysqli_close';
// Check connection
if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$sql = "select a.id, a.activityname, s.fullname, count(m.fullname) as nbinscrit From activity a left join supervisor s on s.activityid = a.id left join member m on m.activityid = a.id where a.id like '%".$text."%' or activityname like '%".$text."%' or s.fullname like '%".$text."%' Group by a.id, a.activityname, s.fullname order by ".$col;
$kin = $conn->query($sql);
$ToutesLesDonnees = array();
while($r = $kin->fetch_assoc()) {
    $ToutesLesDonnees[] = $r;
}
echo json_encode($ToutesLesDonnees);
?>
