<!doctype html>
<html lang="en">
<?php
    include 'conn.php';
    $query = "SELECT * FROM games";
    $result = mysqli_query($conn, $query);
    ?>

<head>
    <meta charset="utf-8">
    <title>Contact</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700">
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
            <p class="Title_middle_tagline">For all your game based questions</p>
        </section>
        <!-- ---------------------------------------------------------- -->
        <section class="about">
            <h2 class="hidden">About us.</h2>

            <p class="text_column">This site will help you to find out differeant activities to do within different settings and groups. We hope that you find this helpful and if you have any problems we have a help request fourm just below this message. We aspire to make this website better with every comment we recieve so please try your best to be detailed with your problem so that we can try to help you faster. </p>

        </section>

        <div class="contact-form">

            <form id="contact-form" method="POST" action="insert_contact.php">
                <label name="subject" class="form-control" for="game_select">Choose a game</label>
                <select name="game_select" id="game_select">
                    <?php while($row = mysqli_fetch_assoc($result)){ ?>
                    <option value="<?=$row['title'];?>"><?=$row['title'];?></option>
                    <?php } ?>
                </select>
                <br>
                <input name="name" type="text" class="form-control" placeholder="Your Full Name" required>
                <br>
                <input name="email" type="email" class="form-control" placeholder="Your Email" required>
                <br>
                <textarea name="message" class="form-control" placeholder="Message" row="5" required></textarea>
                <br>
                <input type="submit" class="form-control submit" value="SEND MESSAGE">

            </form>
        </div>
        <!-- ---------------------------------------------------------- -->
    </div>
</body>

</html>
<!DOCTYPE html>
