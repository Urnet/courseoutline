<!-- db_connection -->
<?php include_once "include/db.php";?>
<!-- header -->
<?php include_once "include/header.php";?>
    <!-- Navigation -->
<?php //include "includes/navigation.php";?>

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <!-- Blog Entries Column -->
            <div class="col-md-8">

              <?php

      if(isset($_GET['category'])){

        $post_cat_id = $_GET['category'];

          if(is_admin('username')) {

 
          $stmt1 = mysqli_prepare($connection, "SELECT post_id, post_title, post_author, post_publisher,
            post_date, post_image, post_content FROM posts WHERE post_category_id = ? ");

          }else {
           $stmt2 =mysqli_prepare($connection, "SELECT  post_id, post_title, post_author, post_publisher, post_date, post_image,
            post_content  FROM posts WHERE post_category_id = ? AND post_status = ?");
                $published = 'published';
                        }
 
          if (isset($stmt1)) {
            mysqli_stmt_bind_param($stmt1, 'i', $post_cat_id);

            mysqli_stmt_execute($stmt1);

            mysqli_stmt_bind_result($stmt1,  $post_id, $post_title, $post_author,$post_publisher, $post_date, $post_image,
             $post_content);
                  $stmt = $stmt1;
          }else {
            mysqli_stmt_bind_param($stmt2, 'is', $post_cat_id, $published);
            mysqli_stmt_execute($stmt2);
            mysqli_stmt_bind_result($stmt2,  $post_id, $post_title, $post_author, $post_publisher, $post_date, $post_image,
             $post_content);
                       $stmt = $stmt2;
          }
 
          
  while(mysqli_stmt_fetch($stmt)){
 
              ?>

<br/> <br/>
              <h2>
                  <a href="post.php?p_id=<?php echo "$post_id"; ?>" style="color:#c6164e;"><?php echo "$post_title"; ?></a>
              </h2>
              <!-- <p class="lead">
                by <a href="authors_posts.php?author=<?php //echo $post_author;?>&p_id=<?php //echo $post_id; ?>"> <?php //echo "$post_author"; ?> </a>
              </p>
              <p>Posted <?php //echo $post_publisher; ?><span class="glyphicon glyphicon-time"></span> <?php// echo " $post_date"; ?></p> -->
              <!-- <hr>
              <img class="img-responsive" src="images/<?php echo "$post_image"?>" alt="">
             -->
              <hr/>
              <!-- <p><?php //echo $post_content; ?></p>
              <a style="background-color:#c6164e;" class="btn btn-primary" href="post.php?p_id=<?php echo "$post_id"; ?>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a> -->
               <br/>
                
  <?php 
           
    
              }
//        }
      }
       
               
                ?>
                </div>
 
        </div>
        <!-- /.row -->

        <hr> 
        <!-- Footer -->
    <?php include_once "include/footer.php";?>
