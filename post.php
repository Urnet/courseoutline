<!-- db_connection -->
<?php include "include/db.php";?>
<!-- header -->
<?php include "include/header.php";?>

    <!-- Navigation -->
<?php //include "include/navigation.php";?>


    <!-- Page Content -->
    <div class="container">
        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-lg-10">

              <?php

if(isset($_GET['p_id'])){

  $the_post_id = $_GET['p_id'];
//  $the_post_author = $_GET['author'];

$view_query = "UPDATE posts SET post_views_count = post_views_count + 1 WHERE post_id = $the_post_id";
$send_query = mysqli_query($connection,$view_query);
  if (!$send_query) {
die("QUERY FAILED");
  }

            if (isset($_SESSION['user_role']) && $_SESSION['user_role'] == 'admin') {
                  $query = "SELECT * FROM posts WHERE post_id = $the_post_id";
                  $select_all_posts_query = mysqli_query($connection,$query);
             }else {
               $query = "SELECT * FROM posts WHERE post_id = $the_post_id AND post_status = 'published'";
               $select_all_posts_query = mysqli_query($connection,$query);
                           }

     if (mysqli_num_rows($select_all_posts_query) < 1) {
               echo "<h1 class='text-center'>NO Post available</h1>";
     }else {

              $query = "SELECT * FROM posts WHERE post_id = $the_post_id";
              $select_all_posts_query = mysqli_query($connection,$query);

              while($row = mysqli_fetch_assoc($select_all_posts_query)) {
              $post_title = $row['post_title'];
              $post_author = $row['post_author'];
              $post_date = $row['post_date'];
              $post_image = $row['post_image'];
              $post_pdf = $row['post_pdf'];
            // $post_audio = $row['post_audio'];
                  // $post_video = $row['post_video'];
              $post_content = $row['post_content'];
              $post_publisher = $row['post_publisher'];
              $post_id = $row['post_id'];    
              $post_tag = $row['post_tags'];    
                  
 
              ?> 
 
     
	<!-- single course section -->
	<section class="single-course spad pb-0">
		<div class="container">
			<div class="course-meta-area">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="course-note"><?php echo $post_tag;?></div>
						<h3>
            <a href="post.php?p_id=<?php echo "$post_id"; ?>" style="color:#c6164e;"><?php echo "$post_title"; ?></a>
            </h3>
						<div class="course-metas">
							<div class="course-meta">
								<div class="course-author">
									<div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div>
									<h6>Lecturer</h6>
                  <a href="authors_posts.php?author=<?php echo $post_author;?>&p_id=<?php echo $the_post_id; ?>"> <?php echo "$post_author"; ?> </a>

									<!-- <p>William Parker, <span>Developer</span></p> -->
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<h6>Category</h6>
									<p>Development</p>
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<h6>Students</h6>
									<p>120 Registered Students</p>
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<h6>Reviews</h6>
									<p>2 Reviews <span class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star is-fade"></i>
									</span></p>
								</div>
							</div>
						</div>
						<!-- <a href="#" class="site-btn price-btn">Price: $15</a>
						<a href="#" class="site-btn buy-btn">Buy This Course</a> -->
					</div>
				</div>
			</div>
			<img src="img/courses/single.jpg" alt="" class="course-preview">


      <img class="img-responsive" src="images/<?php echo "$post_image"?>" alt="">



      <div class='embed-responsive embed-responsive-16by9 quotes'>
                          
    <?php
                  
                   if ( empty($post_pdf) || !$post_pdf) {
//     echo "<embed class='embed-reponsive-item' src='pdf/adobe.pdf' type='application/pdf'/>";
echo "<h4>pdf Copy not available yet...</h4>";

                   }else{                  
      echo "<embed src='pdf/$post_pdf' type='application/pdf' width='40%' height='600px' />";
                          
                  }
 
       ?>
              </div>

<br/> <hr />
			<div class="row">
				<div class="col-lg-10 offset-lg-1 course-list">
          
					<div class="cl-item">
						<h4>Course Description</h4>
            <p><?php echo $post_content; ?></p>
          </div>
					<!-- <div class="cl-item">
						<h4>Certification</h4>
						<p>Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum.</p>
					</div>
					<div class="cl-item">
						<h4>The Instructor</h4>
						<p>Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. </p>
					</div> -->
				</div>
			</div>
		</div>
	</section>
	<!-- single course section end -->

 












  <?php
        }


     ?> 
                  <hr/> 
                <br/><br/><br/><br/>
                <!-- Blog Comments -->
 
             
<?php

if(isset($_POST['create_comment'])){
  $the_post_id = $_GET['p_id'];

$comment_content =escape(strip_tags($_POST['comment_content']));
$comment_email = escape($_POST['comment_email']);
$comment_author = escape($_POST['comment_author']);

      if (!empty($comment_author) && !empty($comment_content) && !empty($comment_author) ) {
            $query = "INSERT INTO comments (comment_post_id, comment_author,comment_email,
            comment_content, comment_status,comment_date)";
            $query .= "VALUES ($the_post_id, '{$comment_author}', '{$comment_email}',
            '{$comment_content}', 'Unapproved',now())";

            $creat_comment_query = mysqli_query($connection,$query);

    if(!$creat_comment_query){
      die('QUERY FAILED' . mysqli_error($connection));
    }


// $query = "UPDATE posts SET post_comment_count = post_comment_count + 1 ";
// $query .= "WHERE post_id = $the_post_id";
//
// $update_comment_count =  mysqli_query($connection,$query);

} else {
  echo "<script>alert('Field can not be empty')</script>";
}
  }
 ?>
 
                
                      
    <!-- Posted Comments -->
            <h4>Comments:</h4>

<?php

$query = "SELECT * FROM comments WHERE comment_post_id = {$the_post_id} ";
$query .= "AND comment_status = 'approved' ";
$query .= "ORDER BY comment_id DESC ";
$select_comment_query = mysqli_query($connection, $query);

if(!$select_comment_query){
  die('QUERY FAILED' . mysqli_error($connection));
}
  while ($row = mysqli_fetch_array($select_comment_query)) {
    // code...
    $comment_date = $row['comment_date'];
    $comment_content = $row['comment_content'];
    $comment_author =$row['comment_author'];

 ?>
 
                        <!-- Comment -->
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="http://placehold.it/64x64" alt="">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading"><?php echo "$comment_author"; ?>
                                    <small><?php echo $comment_date; ?></small>
                                </h4>
                                  <?php echo $comment_content; ?>
                    </div>
                        </div>
  

<?php }}
}else {

header( "Location:index.php");

}?>
            <br/><hr/><br/>
         
              <!-- Comments Form -->
                        <div class="well">
                            <h4>Leave a Comment:</h4>
                            <form action="" method="post" role="form">

                              <div class="form-group">
                                <label for="Author">Author</label>
                                  <input class="form-control" type="text" name="comment_author">
                              </div>

                              <div class="form-group">
                                <label for="Email">Email</label>
                                  <input class="form-control" type="email" name="comment_email">
                              </div>
                                <div class="form-group">
                                  <label for="Comment">Comment</label>
                                    <textarea class="form-control" rows="3" name="comment_content"></textarea>
                                </div>
                                <button type="submit" name="create_comment" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
            <hr>
            
                                <!-- End Nested Comment -->
            </div>      
        </div>

             

        <!-- Footer -->
    <?php require_once "include/footer.php";?>
