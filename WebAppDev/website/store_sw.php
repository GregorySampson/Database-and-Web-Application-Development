<!doctype html>
<html lang="en">
<?php
    include 'conn.php';
    $query = "SELECT * FROM games WHERE switch='1' ";
    $result = mysqli_query($conn, $query);
    ?>

<head>
    <meta charset="utf-8">
    <title>Store</title>
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
            <p class="Title_middle_tagline">Find a new cool game.</p>
        </section>
        <!-- ---------------------------------------------------------- -->
        <?php while($row = mysqli_fetch_assoc($result)){
    ?>
        <a href="game_page.php?product_id=<?=$row['game_id'];?>" id="product_id"><img style=width:300px;height:450px; class="games_images" src="DM_IMG/<?= $row['game_image'];?>"></a>
        <?php } ?>


        <!-- ---------------------------------------------------------- -->
    </div>
</body>

</html>
