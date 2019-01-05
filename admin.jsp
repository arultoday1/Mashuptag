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
<title>Admin</title>
 <style>
         body
        {
            /*background-image: url("images/facbook.jpg");*/
            background-repeat: no-repeat;
             background-size: 100% 800px;
            background-color: aqua;
        }
         h1
        {
            font-family: Arial Black;
            font-size: 70px;
            color: white;
        }
    </style>
    </head>
    <body>
        <div class="container">
	<div class="row">
        <div class="col-sm-4"></div>      
		<div class="col-sm-4">
            <div class="logo" style="margin-top: 120px"><h1>ADMIN</h1></div>
            <form action="Admin" method="post">
                <div class="form-group">
				  <label class="control-label" for="">Admin </label>
				  <input type="text" class="form-control" name="admin" placeholder="Admin">
				</div>

				<div class="form-group">
				  <label class="control-label" for="">Password</label>
				  <input type="password" class="form-control" name="password" placeholder="Password">
				</div>
                <br>
                <div class="form-group">
                    <input type="submit" value="Log In" class="btn btn-warning btn-block">
                </div>                
                
            </form>
		</div>
        <div class="col-sm-4"></div>
            </div>
        </div>
</body>
</html>