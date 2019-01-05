<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script> 
<title>File upload</title>
    <style>
        body
        {
            background-image: url("images/business1.jpg");
            background-repeat: no-repeat;
             background-size: 100% 800px;
             
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">BOOK READ</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">HOME</a></li>        
        <li class="active"><a href="#">FILE UPLOAD</a></li>        
        <li><a href="viewbooks.jsp">View Books</a></li>        
        <li><a href="viewuserlist.jsp">View User List</a></li>        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> LOGOUT</a></li>          
      </ul>
    </div>
  </div>
</nav>      
<div class="container">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default" style="margin-top: 120px;">
			  	<div class="panel-heading">
			    	<h3 class="panel-title" style="color: red">Magazine</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form role="form" action="Magazineupload" method="post" enctype="multipart/form-data">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input type="text" name="book" placeholder="Book Name"  class="form-control" required="">
			    		</div>
			    		<div class="form-group">
			    			<input type="text" name="author"  placeholder="Author Name" class="form-control" required="">
			    		</div>
                        <div class="form-group">
			    			<input type="text" name="price"  placeholder="Book Price" class="form-control" required="">
			    		</div>
                        <div class="form-group">
			    			<input type="text" name="month"  placeholder="Month" class="form-control" required="">
			    		</div>
                        <div class="form-group">
			    			<input type="file" name="file"  placeholder="file" class="form-control" required="">
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Magazine Update">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>