<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>
   <link rel="icon" href="images/store.png" type="image/x-icon type">


   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/about-img-3" alt="">
         <h3>why choose us?</h3>
         <p>Where life becomes tension free.We provide everything according to your need.We don’t compromise with quality and quantity.We help you to make your easier.Provides your better shopping experience.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
         <img src="images/about-img-4.jpg" alt="">
         <h3>what we provide?</h3>
         <p>Get anything you want at an affordable price.We help you to find out quality product.Groceries for the modern world.A complete place for a complete shopping.Quality products and best prices.</p>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">clients reivews</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/pic-1.png" alt="">
         <p>The Kimberley General Store is a local favourite with amazing food, smoothies, baked goods - incredible sour dough bread, pizzas and organic fruits and vegetables and other wonderful dry goods and gifts. We love the addition of Justin's Oven.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Gaurav Gardi</h3>
      </div>

      <div class="box">
         <img src="images/pic-2.png" alt="">
         <p>We have a Have a nearby chalet and come here multiple times a day! They have the best food, people, and overall atmosphere. Justin's oven also has delicious pub and pizza nights!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Harshda jadhav</h3>
      </div>

      <div class="box">
         <img src="images/pic-3.png" alt="">
         <p>The owners are just wonderful people. They make you feel welcomed and truly appreciate your visit to their store. They take pride in what they do. I drive an hour to get the banana bread.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Prakash Dighe</h3>
      </div>

      <div class="box">
         <img src="images/pic-4.png" alt="">
         <p>Kimberley General Store...Very friendly service!! Amazing quality baked goods. You must stop here if you travel through this area!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Shubhangi </h3>
      </div>

      <div class="box">
         <img src="images/pic-5.png" alt="">
         <p>This is a one atop shop for unique and local pantry items, gifts, prepared foods and fresh local produce. Their sourdough bread is legendary. They make fantastic sandwiches as well. Love this place.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Varadhaman Bethmutha </h3>
      </div>

      <div class="box">
         <img src="images/pic-6.png" alt="">
         <p>Lovely original general store the way they used to be. Awesome sandwiches and locally made baked goods. Super friendly staff and very cycle friendly. A must stop if you are coming up this summer to go riding!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Vaishnavi Patel</h3>
      </div>

   </div>

</section>









<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>