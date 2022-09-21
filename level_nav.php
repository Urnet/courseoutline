<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
<a class="navbar-brand h_logo" href="index.php">
    <img src="img/mcslogo.png" width="100px" height="50px" style="padding-top:0px; padding-left:0px;" />
            </a>        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
         
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
 <li class='<?php echo $contact;?>'>
     <a href="contact.php">Contact</a>
 </li>
<li class='<?php echo $services;?>'>
     <a href="services.php">Services</a>
  </li>
 <li class='<?php echo $registration_class; ?>'>
     <a href="registration.php">Registeration</a>
 </li>
                <li>
                    <a href="admin">Admin</a>
                </li>
 <?php
      if(isset($_SESSION['user_role'])){
          
           if(is_admin($_SESSION['username'])){
          
          if(isset($_GET['p_id'])){                            
     $the_post_id = $_GET['p_id'];
     
              echo "<li><a href='admin/posts.php?source=edit_post&p_id={$the_post_id}'>Edit Post</a></li>";
          }
          }

      }
      

  ?>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>