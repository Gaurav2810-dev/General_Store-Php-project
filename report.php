<?php

@include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>report</title>
   <link rel="icon" href="images/store.png" type="image/x-icon type">

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<?php include 'admin_header.php'; ?>

<section class="dashboard">

   <h1 class="title">Report</h1>
   <div class="box-container">

    <div class="box">
      <p> Sale Report</p>
      <a href="sale report.php" class="btn">Generate Report</a>
      </div>
      <div class="box">
      <p>Customer Report</p>
      <a href="customer report.php" class="btn">Generate Report</a>
      </div>
   </div>
</section>
    </body>
<script src="js/script.js"></script>
</html>