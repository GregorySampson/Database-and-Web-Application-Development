<!doctype html>
<html lang="en">
    <?php
    include 'conn.php';
    $query ="SELECT games.title,questions.message,answers.answer FROM ((questions INNER JOIN games ON games.title = questions.title) INNER JOIN answers ON questions.question_id = answers.question_id)";
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
            <p class="Title_middle_tagline"> Older questions we have helped with </p>
        </section>
        <!-- ---------------------------------------------------------- -->
        <section class="about">
            <h2 class="hidden">FAQ</h2>

            <p class="text_column">Here you can find questions asked by other poeple to see how we were able to help.</p>
            
        </section>
        <div>
            <table class="table_questions" table align="center" style="color:black;"  border="1" background="images/table.jpg" >
            <tr >
                <th>Question</th>
                <th>Title</th>
                <th>Answer</th>
            </tr>
                <?php 
                
                    
                    while($row = mysqli_fetch_array($result)){
                       ?>
                        <tr>
                            <td>  <?php echo $row['message'];?>  </td>
                            <td>  <?php echo $row['title'];?>  </td>
                            <td>  <?php echo $row['answer'];?>  </td>
                        </tr>
                <?php
                    }
                
                ?>
            </table>
                
        </div>
        <!-- ---------------------------------------------------------- -->
    </div>
</body>

</html>
<!DOCTYPE html>
