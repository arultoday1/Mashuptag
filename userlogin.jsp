<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<title>Facebook Login</title>
 <style>
        body
           {
        background: -webkit-gradient(radial, center center, 0, center center, 460, from(#1a82f7), to(#2F2727));

  /* Safari 5.1+, Chrome 10+ */
    background: -webkit-radial-gradient(circle, #1a82f7, #2F2727);

  /* Firefox 3.6+ */
    background: -moz-radial-gradient(circle, #1a82f7, #2F2727);

  /* IE 10 */
    background: -ms-radial-gradient(circle, #1a82f7, #2F2727);
    height:600px;
}
        h3
        {
            font-family: Arial Black;
            font-size: 40px;
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
	<div class="row">
        <div class="col-sm-4"></div>      
		<div class="col-sm-4">
            <h3>User Login</h3>
            <div class="logo" style="margin-top: 120px"></div>
            <form action="Login" method="post">
                <div class="form-group">
				  <label class="control-label" for=""></label>
				  <input type="text" class="form-control" name="email" placeholder="Email Address" required="">
				</div>

				<div class="form-group">
				  <label class="control-label" for=""></label>
				  <input type="password" class="form-control" name="pass" placeholder="Password" required="">
				</div>
                <br>
                <div class="form-group">
                    <input type="submit" value="Log In" class="btn btn-default btn-block" style="background-color: navy;color: white">
                </div>
                <br>
                <br>
                <br>
              <center>  <a href="userreg.jsp" style="color: white">Sing Up for Bookread</a>
                  <i class="fa fa-question" style="font-size:48px;color:red"></i>
                </center>
            </form>
		</div>
        <div class="col-sm-4"></div>
            </div>
        </div>
</body>
</html>