<?php include_once "include/header.php";?>

<?php

// if(isset($_GET['category'])){

//   $post_cat_id = $_GET['category'];

// 	if(is_admin('username')) {

//   // if (isset($_SESSION['user_role']) && $_SESSION['user_role'] == 'admin') {

// 	$stmt1 = mysqli_prepare($connection, "SELECT post_id, post_title FROM posts WHERE post_category_id = ? ");

// 	// $query = "SELECT * FROM posts WHERE post_category_id = $post_cat_id ";
//    }else {
// 	 $stmt2 =mysqli_prepare($connection, "SELECT  post_id, post_title, post_author, post_publisher, post_date, post_image,
// 	  post_content  FROM posts WHERE post_category_id = ? AND post_status = ?");
// 		  $published = 'published';
// 	 // $query = "SELECT * FROM posts WHERE post_category_id = $post_cat_id AND post_status = 'published'";
// 				 }
 
 
		?>



<?php 
    //    if(isset($_GET['p_id'])){

	// 	$the_get_post_id = $_GET['p_id'];
	
	// $query = "SELECT * FROM posts WHERE post_id = $the_get_post_id";
	// $select_posts_by_id = mysqli_query($connection,$query);
	
	// while($row = mysqli_fetch_assoc($select_posts_by_id)) {
	// $post_id = $row['post_id'];
	// $post_author = $row['post_author'];
	// $post_title = $row['post_title'];
	// $post_cat_id = $row['post_category_id'];
	// $post_status = $row['post_status'];
	// $post_image = $row['post_image'];
	// $dest_file = $row['post_pdf'];
	// $targetPath = $row['post_audio'];
	
	// $post_tags = $row['post_tags'];
	// $post_comment_count = $row['post_comment_count'];
	// $post_date = $row['post_date'];
	// $post_content = $row['post_content'];
	// $post_publisher = $row['post_publisher'];
// 	}
// }  
//               ?>

<br/><hr/>
<h1>First Semester</h1>
<br/> 
<div class="footer-top center">
			<div class="footer-warp">
				<div class="row">
				<div class="widget-item">
						<h4>ND I</h4>
						<ul>
						<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>ND II</h4>
						<ul>
						<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>HND I</h4>
						<ul>
						<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>HND II</h4>
						<ul>
						<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
						</ul>
					</div>
				 
				</div>
			</div>
		</div>



        
<br/><hr/>
<h1>Second Semester</h1>
<br/>
<div class="footer-top center">
			<div class="footer-warp">
				<div class="row">
				<div class="widget-item">
						<h4>ND I</h4>
						<ul>
							<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
							<!-- <li><a href="single_course.php">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li> -->
 

						</ul>
					</div>
					<div class="widget-item">
						<h4>ND II</h4>
						<ul>
						<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
							<!-- <li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li> -->
						</ul>
					</div>
					<div class="widget-item">
						<h4>HND I</h4>
						<ul>
						<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
							<!-- <li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li> -->
						</ul>
					</div>
					<div class="widget-item">
						<h4>HND II</h4>
						<ul>
						<li>
				<a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_title"; ?></a>
			  </li>
							<!-- <li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li> -->
						</ul>
					</div>
				 
				</div>
			</div>
		</div>



		


  <?php //}   }?>

<?php include_once "include/footer.php";?>
