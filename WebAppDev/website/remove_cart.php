<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "s19156605";

$remove_id = $_POST['id'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);

}else{$sql = "DELETE FROM cart WHERE game_id= $remove_id";
     
        if ($conn->query($sql) === TRUE) {
            header("Location: Cart.php");
            exit();
    
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            }
     }


$conn->close();
?>
