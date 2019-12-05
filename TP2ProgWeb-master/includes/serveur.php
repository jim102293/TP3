<?php

$goback=$_SERVER['HTTP_REFERER'];
// Après avoir changer la langue, reload le page

/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$conn = mysqli_connect("localhost", "root", "", "site");
$disconn = 'mysqli_close';
// Check connection
if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
} 
// Préparer les données pour la base de données
if( $_POST['sexe'] == 'Homme'){
    $sex = 0;
} else {
    $sex = 1;
}
$fullname = $_POST['nom'].' '.$_POST['prenom'];
$date = $_POST['bday'];
$motivation = $_POST['motivation'];
// Transferer activité à une id
if ($_POST['activité'] == 1){
    $activityid = 1;
}
else if ($_POST['activité'] == 'Badminton'){
    $activityid = 2;
}
else if ($_POST['activité'] == 'Randonnée'){
    $activityid = 3;
}
else if ($_POST['activité'] == 'Kayak'){
    $activityid = 4;
}
else if ($_POST['activité'] == 'Velo'){
    $activityid = 5;
}
else if ($_POST['activité'] == 'Échecs'){
    $activityid = 6;
}

// Attempt insert query execution
$sql = "INSERT INTO member (sex, fullname, dob, motivation, activityid) 
VALUES ('$sex','$fullname', '$date', '$motivation', '$activityid')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
/*
if (mysqli_query($conn, $sql)) {
    $last_id = mysqli_insert_id($conn);
    echo "New record created successfully. Last inserted ID is: " . $last_id;
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}*/
// Close connection
$conn -> close();

//header("location: $goback");

?>