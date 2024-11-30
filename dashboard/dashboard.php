<?php
        session_start();
        if($_SESSION['login'] !== 1) {
          header("Location: /index.php");
          die();
        }
?>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Users Dashboard</title>
  <link rel="stylesheet" href="./dashboard.css">
  <script src="https://use.fontawesome.com/33a3739634.js"></script>

</head>
<body>
<!-- partial:index.partial.html -->
<body>
 <div id="wrapper">
 <div class="parent">
  <h1 align="left">Users Information</h1>
<form action="" method="POST">
<div class="search-box">
  <input type="search" name="search" placeholder="Search" />
  <button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
</div>
</form>
  </div>
  
  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span style="color: white">ID</span></th>
        <th><span style="color: white">Blog</span></th>
        <th><span style="color: white">Major</span></th>
      </tr>
    </thead>
    <tbody>
        <?php
	      include "../config.php";

        if(isset($_POST['search'])) {

          $q = "Select * from people where Identify_ID like '%". $_POST["search"] ."%'";

          $result = mysqli_query($conn, $q);

          if (!$result)
          {
                 die(mysqli_error($conn));
          }
          while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
              {
                echo "
                  <tr>
                    <td class='lalign'>$row[1]</td>
                    <td>$row[2]</td>
                    <td>$row[3]</td>
                  </tr>";
            }
        }
        else {

          $q = "Select * from people";

          $result = mysqli_query($conn, $q);

          if (!$result)
          {
                 die(mysqli_error($conn));
          }
          while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
              {
                echo "
                  <tr>
                    <td class='lalign'>$row[1]</td>
                    <td>$row[2]</td>
                    <td>$row[3]</td>
                  </tr>";
            }
        }
      ?>
    </tbody>
  </table>
 </div> 
</body>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.28.14/js/jquery.tablesorter.min.js'></script><script  src="./dashboard.js"></script>

</body>
</html>