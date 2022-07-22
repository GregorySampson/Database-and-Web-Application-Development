<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "s19156605";

$cart_id = $_POST['id'];
$cart_image= $_POST['image'];
$cart_title= $_POST['title'];
$cart_price= $_POST['price'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);

}else{$sql = "INSERT INTO cart (game_id, title, game_image, price)
    VALUES ('$cart_id', '$cart_title' , '$cart_image', '$cart_price' )"; 

        if ($conn->query($sql) === TRUE) {
            header("Location: Cart.php");
            exit();
    
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            }
     }


$conn->close();
?>