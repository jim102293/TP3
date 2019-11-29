<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$conn = mysqli_connect("localhost", "root", "", "site");
$disconn = 'mysqli_close';
// Check connection
if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
} 
// Escape user inputs for security
$id = 0;
$sex = $_GET['sexe'];
$fullname = $_POST['nom'];
$date = $_POST['bday'];
$motivation = $_POST['motivation'];
$activityid = 0;
// Attempt insert query execution
$sql = "INSERT INTO member (id, sex, fullname, dob, motivation, activityid) 
VALUES ('$id', '$sex','$fullname', '$date', '$motivation', '$activityid')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
if (mysqli_query($conn, $sql)) {
    $last_id = mysqli_insert_id($conn);
    echo "New record created successfully. Last inserted ID is: " . $last_id;
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
// Close connection
$conn -> close();
?>