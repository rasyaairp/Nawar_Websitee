<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
};

if(isset($_POST['send'])){

    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $number = mysqli_real_escape_string($conn, $_POST['number']);
    $msg = mysqli_real_escape_string($conn, $_POST['message']);

    $select_message = mysqli_query($conn, "SELECT * FROM `message` WHERE name = '$name' AND email = '$email' AND number = '$number' AND message = '$msg'") or die('query failed');

    if(mysqli_num_rows($select_message) > 0){
        $message[] = 'message sent already!';
    }else{
        mysqli_query($conn, "INSERT INTO `message`(user_id, name, email, number, message) VALUES('$user_id', '$name', '$email', '$number', '$msg')") or die('query failed');
        $message[] = 'message sent successfully!';
    }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>contact</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

   <style>
      .heading {
         margin-top: 70px; 
      }
   </style>
</head>
<body>
   
<header>

<a href="home.html" class="logo">NawarStore</a>

<nav class="navbar">
    <a href="home.html">home</a>
    <a href="#about">about</a>
    <a href="#">products</a>
    <a href="home.html #review">review</a>
    <a href="contact.php">contact</a>
</nav>

<div class="icons">
    <a href="#" class="fa fa-heart"></a>
    <a href="#" class="fas fa-shopping-cart"></a>
    <a href="#" class="fas fa-user"></a>
</div>

</header>

<section class="heading">
    <h3>contact us</h3>
    <p> <a href="home.php">home</a> / contact </p>
</section>

<section class="contact" id="contact">

    <h1 class="heading">
        <span> contact </span> us 
    </h1>

    <div class="row">
        <form action="">
            <input type="text" placeholder="name" class="box">
            <input type="email" placeholder="email" class="box">
            <input type="number" placeholder="number" class="box">
            <textarea name="" class="box" placeholder="message" id="" cols="30" rows="10"></textarea>
            <input type="submit" value="send message" class="btn">
        </form>

        <div class="image">
            <img src="" alt="">
        </div>
    </div>
</section>






<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>