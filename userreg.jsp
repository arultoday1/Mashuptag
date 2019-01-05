<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/facebook.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<title>Author Register</title>
</head>
<body>
<header>
    <div class="container">
	<div class="row">
		<div class="col-sm-6">
            <div class="logo"><h1>BOOK READER</h1></div>
		</div>
		<div class="col-sm-6 hidden-xs">
			<div class="row">
			<form action="Login" method="post">
				<div class="col-sm-5">				
					  <div class="form-group">
					    <input type="text" class="form-control" placeholder="Email Address">
					    <div class="login-bottom-text checkbox hidden-sm">
						    <label>
						      <input type="checkbox" id="">
						      Keep me sign in
						    </label>
						  </div>
					  </div>
				</div>	
				<div class="col-sm-5">
					 <div class="form-group">
					    <input type="text" class="form-control" placeholder="Password">
					    <div class="login-bottom-text hidden-sm"> Forgot your password?  </div>
					  </div>
				</div>
				<div class="col-sm-2">
					 <div class="form-group">
					    <input type="button" value="login" class="btn btn-default btn-header-login">
					  </div>
				</div>
				</form>
			</div>	
		</div>
	</div>
	</div>
</header>
<article class="container">
		<div class="row">
			<div class="col-sm-8">
				<div class="login-main">
					<h4><i class="fa fa-dashboard"></i> Magazines</h4>
					<span>Online Magazines free reda and download the data analysis</span>

					<h4> <i class="fa fa-money"></i> 100%  Free Magazines </h4>
					<span>Free Download Book and Another Details</span>

					<h4><i class="fa fa-mobile-phone"></i> Free Books Download</h4>
					<span>You can read books online, in your internet browser. Most popular sites are listed below.</span>

					<h4> <i class="fa fa-trophy"></i> Reading and Download The Magazines</h4>
					<span>Support your reading habit without paying a dime or taking a trip to the library with these websites that let you read free Magazines books  online.</span>
				</div>
			</div>
			<div class="col-sm-4" style="background-color: #3b5998; color: white;">
				
				<h3><i class="fa fa-shield"></i> Register now</h3>
			  	<hr>
			  	<form action="Accountcreate" method="post">
			  	<div class="col-sm-6" class="form-group">
				  <label class="control-label" for="">First Name</label>
				  <input type="text" class="form-control" name="fname" placeholder="First Name" required="">
				</div>
			  	
			  	<div class="col-sm-6" class="form-group">
				  <label class="control-label" for="">Last Name</label>
				  <input type="text" class="form-control" name="lname" placeholder="Last Name" required="">
				</div>
				
				<div class="form-group">
				  <label class="control-label" for="">Email Address</label>
				  <input type="email" class="form-control" name="email" placeholder="Email Address" required="">
				</div>
				<div class="form-group">
				  <label class="control-label" for="">Phone Number</label>
				  <input type="text" class="form-control" name="phone" placeholder="Phone Number" required="">
				</div>
				

				<div class="form-group">
				  <label class="control-label" for="">Password</label>
				  <input type="password" class="form-control" name="pass" placeholder="Password" required="">
				</div>

				<div class="form-group">
				  <label class="control-label" for="">Repeat Password</label>
				  <input type="password" class="form-control" name="repass" placeholder="Repeat Password" required="">
				</div>

				<div class="form-group">
					<label class="control-label" for="">Date of Birth</label>
				  <input type="date" class="form-control" name="birth" placeholder="Repeat Password" required="">
				</div>
				<div class="form-group">
				<label class="control-label" for="">Gender</label>
				<br>
				<label class="radio-inline">
      <input type="radio" name="gentral" value="Male" checked>Male
    </label>
    <label class="radio-inline">
      <input type="radio" name="gentral" value="Female">Female
    </label>
		 </div>
				<small>
					By clicking Sign Up, you agree to our Terms and that you have read our
					 Data Use Policy, including our Cookie Use.
				</small>	 
				<div style="height:10px;"></div>
				<div class="form-group">
				  <label class="control-label" for=""></label>
				  <input type="submit" value="Singn Up" class="btn btn-success">
                </div>	 
                </form>
			</div>
			</div>
        </article>
		

<footer class="container">
<hr>
<div class="footer-options">
<ul >
    <li><a href="#">Mobile</a></li>
	<li><a href="#">Find Friends</a></li>
	<li><a href="#">Badges</a></li>
    <li><a href="#">People</a></li>
    <li><a href="#">Pages</a></li>
	<li><a href="#">Places</a></li>
	<li><a href="#">Games</a></li>
	<li><a href="#">Locations</a></li>
	<li><a href="#">About</a></li>
</ul>
</div>
<div style="clear:both"></div>
</footer>
</body>
</html>