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
   <title>customer report</title>
   <link rel="icon" href="images/store.png" type="image/x-icon type">


   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">


</head>
<body>
   
<?php include 'admin_header.php'; ?>

<section class="dashboard">

   <h1 class="title"> Customer Report</h1>
      <?php

if(isset($_POST['search']))
{
    $name = $_POST['name'];
    $sql = "SELECT * FROM orders WHERE name='$name'";
    $result = $conn->query($sql);
}


?>
<div class="box-container">
      <div class="box">
<form method="POST">
    <p>
    Enter Customer Name
    <input type="text" name="name" class="empty">
    <button type="submit" name="search" class="btn">Search</button></p>
</form>
      
      
      <div style="overflow-x:auto;" id="res">
      
<?php
if(isset($result))
{
    echo "<table class='empty'>";
    echo "<tr><th>ID</th>
          <th>Name</th>
          <th>Number</th>
          <th>Adderss</th>
          <th>Total Products</th>
          <th>Total Price</th>
          <th>Date</th>
          <th>Payment Method</th>
          <th>Payment Status</th></tr>";
    while($row = $result->fetch(PDO::FETCH_ASSOC))
    {
        echo "<tr><td>" . $row["user_id"] . 
             "</td><td>". $row["name"] . 
             "</td><td>" . $row["number"] . 
             "</td><td>" . $row["address"] . 
             "</td><td>" . $row["total_products"] . 
             "</td><td>" . $row["total_price"] . 
             "</td><td>" . $row["placed_on"] . 
             "</td><td>" . $row["method"]  . 
             "</td><td>" . $row["payment_status"] . 
             "</td></tr>";
             
    }
    echo "</table>";
}
else
{
echo"<p class='empty'>no data found</p>";
}
    

?>
      </div>
      <button onclick="printDiv()" class="btn">Print</button>
</section>
    </body>
    <script src="js/script.js"></script>
</html>