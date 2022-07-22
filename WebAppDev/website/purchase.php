<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "s19156605";

$email= $_POST['email'];
$products= $_POST['list'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);

}else{
    $sql_2="INSERT INTO game_orders (email,products)VALUES ('$email', '$products')";     
    $sql="DELETE FROM cart";
  
         
        if (($conn->query($sql)=== TRUE)and($conn->query($sql_2)) === TRUE) {
        header("Location: cart_thank.html");
            
            exit();
    
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            }
     }


$conn->close();
?>
