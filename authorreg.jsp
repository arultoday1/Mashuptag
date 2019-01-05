<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script> 
<title>Author Register</title>
<style>
        body {    
    background-image: url("images/security.jpg");
             background-repeat: no-repeat;
            background-size: 100% 800px;
}

       .panel-body
        {
            background-color: gray;
        }
        a
        {
            color: navy;
        }
        h3
        {
            text-align: center;
            color: aliceblue;
        }
    </style>
</head>
<body>
 <div class="container"> 
	<div class="row">
        <div class="col-sm-3"></div>      
		<div class="col-sm-5">
            	<div class="panel-body">
            <h3>AUTHOR REGISTRATION FORM </h3> 
            <form action="Authorreg" method="post">
                <div class="form-group">
				  <label class="control-label" for="">NAME </label>
				  <input type="text" name="name" class="form-control" placeholder="Name">
				</div>
                
                <div class="form-group">
				  <label class="control-label" for="">EMAIL </label>
				  <input type="email" name="email" class="form-control" placeholder="Email">
				</div>
                <div class="form-group">
				  <label class="control-label" for="">PHONE </label>
				  <input type="text" name="phone" class="form-control" placeholder="Phone">
				</div>
                
                <div class="form-group">
				  <label class="control-label" for="">PASSWORD</label>
				  <input type="password" name="pwd" class="form-control" placeholder="Password">
				</div>
                

				<div class="form-group">
				  <label class="control-label" for="">CONFIRM PASSWORD</label>
				  <input type="password" name="cpwd" class="form-control" placeholder="Confirm Password">
				</div>
                
                
                 <div class="form-group">
				  <label class="control-label" for="">BOOK NAME</label>
				  <input type="text" name="book" class="form-control" placeholder="Book Name">
				</div>
                
                <div class="form-group">
				  <label class="control-label" for="">AUTHOR NAME</label>
				  <input type="text" name="author" class="form-control" placeholder="Author Name">
				</div>
                
                
                <br>
                <div class="form-group">
                    <input type="submit" value="Register now" class="btn btn-warning btn-block">
                </div> 
               <center> <a href="authorlogin.jsp">Log In</a></center>
                
            </form>
            </div>
		</div>
        <div class="col-sm-3"></div>
            </div>
        </div>
</body>
</html>