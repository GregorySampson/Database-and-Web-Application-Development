<!doctype html>
<html lang="en">
<?php
    include 'conn.php';
    $id = $_GET['product_id'];
    $query = "SELECT * FROM games WHERE game_id=$id";
    $result = mysqli_query($conn, $query);

?>

<head>
    <meta charset="utf-8">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="VaporCSS.css">
</head>

<body>
    <div class="container">
        <a href="#" id="Logo_top"></a>
        <h4 class="Title_Top">Vapor Games</h4>
        <!-- ---------------------------------------------------------- -->
        <header>
            <nav>
                <ul>
                    <li><a href="index.php">|Home|</a></li>
                    <li><a href="Store.php">|Store|</a></li>
                    <li><a href="Cart.php">|Cart|</a></li>
                    <li><a href="Contact.php">|Contact Us|</a></li>
                    <li><a href="QandA.php">|FAQ|</a></li>
                </ul>
            </nav>
        </header>
        <!-- ---------------------------------------------------------- -->
        <section class="title" id="title">
            <a href="#" id="Logo_title_1"></a>
            <a href="#" id="Logo_title_2"></a>
            <h2 class="Title_middle_1">Vapor <span class="Title_middle_2">Games</span></h2>
            <p class="Title_middle_tagline">Your goto online game store.</p>
        </section>
        <!-- ---------------------------------------------------------- -->
        <?php  
        $row = mysqli_fetch_assoc($result);
       
        $title = $row['title'];
        $price = $row['price'];
        $image = $row['game_image'];
        $genre = $row['genre'];
        $platform ="| ";
        if ($row['pc'] == 1){
            $platform = $platform . "PC | ";
        
        }if ($row['xbox'] == 1){
            $platform = $platform . "X-Box | ";
        
        }if ($row['switch'] == 1){
            $platform = $platform . "Switch | ";
        
        }if ($row['playstation'] == 1){
            $platform = $platform . "Playstation | ";
        }
        $description = $row['summary'];
        $release = $row['release_date'];
        $dev = $row['developer'];

    
        ?>

        <!-- ---------------------------------------------------------- -->
        
  
        
        <div class="game_inf">
            <p style=font-size:30px;color:white;float:center;><?php echo $title; ?></p>
            <img style=width:300px;height:450px;float:center; src="DM_IMG/<?= $row['game_image'];?>">
            <p style=font-size:15px;color:white;float:center;>Genre: <?php echo $genre;?>, Date Released: <?php echo $release;?> </p>
            <p style=font-size:15px;color:white;float:center;><?php echo $platform; ?></p>
            <p style=float:center;font-size:20px;color:white;><?php echo $description; ?></p>
            <p style=float:center;font-size:30px;color:white;>£<?php echo $price; ?></p>
            <p style=font-size:20px;color:white;float:center;>Developer: <?php echo $dev; ?></p>

            
                   <?php  
                            $id_new=0;
                            $in=0;
                            $query_2 = "SELECT * FROM cart";
                            $result_2 = mysqli_query($conn, $query_2);      
            
                            while($row = mysqli_fetch_assoc($result_2)){
                                $id_new=$row['game_id'];
                                if ($id_new == $id){ 
                                $in=1;
                                break; }}
                            if ($in==1){ ?>
            <p style=font-size:30px;color:white;>You already have this in your cart!</p>
            <?php }
            else{  ?>

                <form method="POST" action="insert_cart.php">
                <input name='id' type="hidden" value="<?=$id;?>">
                <input name='image' type="hidden" value="<?=$image;?>">
                <input name='title' type="hidden" value="<?=$title;?>">
                <input name='price' type="hidden" value="<?=$price;?>">
                <input type="submit" value="Add To Cart">
             <?php }  ?>
                


            </form>
        </div>
    </div>


</body>

</html>
