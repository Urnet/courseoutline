
<?php include_once "include/header.php";?>




	<!-- Page -->
	<section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
            <div class="col-lg-2">
					 
                     </div>
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="text-white text-left">
							<h2>Login</h2>
							<p>Only for Authorized staff </p>
						</div>
						<!-- <form class="contact-form">
							<input type="text" placeholder="Staff ID" class="form-control">
						  <input type="text" placeholder="Your E-mail"> -->
                            <!-- <input type="password" placeholder="Password" class="form-control"> -->
<!-- <br/> -->
							<!-- <input type="text" placeholder="Subject"> -->
							<!-- <textarea placeholder="Message"></textarea> -->
							<!-- <span class="site-btn btn form-control">Login</span>
						</form> -->  



						 
						<form action="include/login.php" method="post">
                <div class="form-group">
                    <input name="username" type="text" class="form-control" placeholder="Enter Username">
                </div>
				<br/>
                  <div class="input-group ">
                    <input name="password" type="password" class="form-control" placeholder="Enter Password">
                    <span class="input-group-btn">
                       <button class="btn btn-primary glyphicon-log-in" name="login" type="submit">Login
                       </button>
                    </span>
                    
                </div>
                </form>
					</div>
				</div>
				<div class="col-lg-2">
					 
				</div>
			</div>
 		</div>
	</section>
	<!-- Page end -->

    <?php include_once "include/footer.php";?>
