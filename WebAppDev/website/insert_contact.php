<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "s19156605";

$name = $_POST['name'];
$message = $_POST['message'];
$email = $_POST['email'];
$title = $_POST['game_select'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO questions (name,title, message, email)
VALUES ('$name','$title', '$message', '$email')";

if ($conn->query($sql) === TRUE) {
  header("Location: contact_2.html");
exit();
    
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
