<?php ob_start(); ?>
<?php session_start();
        include_once "./admin/functions.php";
    //    include_once "includes/login.php";
	include_once "include/db.php";

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>course outline</title>
	<meta charset="UTF-8">
	<meta name="description" content="course-outline">
	<meta name="keywords" content="course outline, education, fpb, computer science">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<!-- <link href="img/favicon.ico" rel="shortcut icon"/> -->

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<!-- <header class="header-section" > -->
		<div class="container-fluid set-bg " data-setbg="img/bg.jpg" style="height: 3cm;">
			<div class="row">
				<div class="col-lg-4 col-md-4" >
					<!-- <div class="site-logo"> -->
						<!-- <img src="img/logo.png" alt=""> -->
						<h2 style="color: white;" >
						FPB <h3 style="color: rgb(240, 8, 8);">Course-Outline</h3>
						</h2>
					<!-- </div> -->
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-8 col-md-8" >
					<a href="login.php" class="site-btn header-btn">Login</a>
					<nav class="main-menu">
						<ul>
							<li><a href="index.php">Home</a></li>

         
 
							<?php
$query = "SELECT * FROM categories";
$select_all_categories_query = mysqli_query($connection,$query);

while($row = mysqli_fetch_assoc($select_all_categories_query)) {
$cat_title = $row['cat_title'];
$cat_id = $row['cat_id'];

  $category_class = '';
  $registration_class = '';
  $contact = '';

    $pagename = basename($_SERVER['PHP_SELF']);
      $registration_class ='registration.php';
        $contact = 'contact.php';
        $services = 'services.php';
            if(isset($_GET['category']) && $_GET['category'] == $cat_id){
              $category_class = 'active';
            }elseif ($pagename == $registration_class) {
              $registration_class = 'active';
            }elseif ($pagename == $services) {
              $services = 'active';
            }elseif ($pagename == $contact) {
              $contact = 'active';
            }

echo "<li class='$category_class'><a href='category.php?category={$cat_id}'>{$cat_title}</a></li>";
}
 ?>

							<li><a href="#">About us</a></li>
							<!-- <li><a href="courses.php">Courses</a></li> -->
							<!-- <li><a href="level.php">Level</a></li> -->
							<!-- <li><a href="contact.html">Contact</a></li> -->
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->
   