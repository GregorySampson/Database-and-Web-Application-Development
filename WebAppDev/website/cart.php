<!doctype html>
<html lang="en">
<?php
    include 'conn.php';
    $query = "SELECT * FROM cart";
    $result = mysqli_query($conn, $query);
    ?>

<head>
    <meta charset="utf-8">
    <title>Cart</title>
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
            <p class="Title_middle_tagline">Your Cart.</p>
        </section>
        <!-- ---------------------------------------------------------- -->
        <?php   $count=0;  
                
        while($row = mysqli_fetch_assoc($result)){
                        $count=$count+1;}
                        
        if ($count == 0){ ?>
        <p style=font-size:30px;color:white;>There are no items in your cart!</p>
        
        <?php }else{?>

        <!-- ---------------------------------------------------------- -->

        <?php   $game_list="";
                $sum=0;
                $total=0;
                $count_2=0;
            mysqli_data_seek($result, 0); 
            while($row = mysqli_fetch_assoc($result)){
                $count_2=$count_2+1;
                if($count_2==$count){
                    $game_list .=$row['title'];
                    $game_list .=".";
                }else{
                    $game_list .=$row['title'];
                    $game_list .=",";
                }
                $add = $row['price'];
                $sum = ($sum + $add); 
                $total = $sum; ?>
            

        
        <?php } ?>
        <p style=font-size:30px;color:white;>Your total: £<?= $total;?></p>
             <form method="POST" action="purchase.php">
            <input name='list' type="hidden" value="<?=$game_list;?>">
            <input name="email" type="email" class="form-control" placeholder="Your Email" required>
            <input type="submit" value="Purchase Items in Cart"> </form>
        <!-- ---------------------------------------------------------- -->

        

        <!-- ---------------------------------------------------------- -->


        <?php 
         mysqli_data_seek($result, 0); 
        while($row = mysqli_fetch_assoc($result)){
        
        ?>

        <p style=font-size:30px;color:white;><?= $row['title'];?></p>
        <img style=width:150px;height:225px; class="games_images" src="DM_IMG/<?= $row['game_image'];?>">
        <p style=font-size:30px;color:white;>£<?= $row['price'];?></p>
        <form method="POST" action="remove_cart.php">
            <input name='id' type="hidden" value="<?=$row['game_id'];?>">
            <input type="submit" value="Remove From Cart">

        </form>
        <?php }} ?>

        <!-- ---------------------------------------------------------- -->
    </div>
</body>

</html>
