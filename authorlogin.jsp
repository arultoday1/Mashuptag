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
<title>Author Login</title>
    <style>
        body {    
    background-image: url("images/digital-currency.jpg");
             background-repeat: no-repeat;
            background-size: 100% 800px;
}
    </style>
</head>
<body>
<div class="container" style="margin-top:40px">
		<div class="row">
			<div class="col-sm-6 col-md-5 col-md-offset-4">
				<div class="panel panel-primary" style="margin-top: 120px;">
					<div class="panel-heading">
						<strong> Sign in Author</strong>
					</div>
					<div class="panel-body">
						<form action="Authorlogin" method="post">
								<div class="row">
                                    <div class="form-group">
                                        <center>
                                    <img src="images/book-png-book.png" class="img-circle" alt="Cinque Terre" width="70px" height="70px">
                                            </center>
                                    </div>
                                    <div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<input class="form-control" placeholder="Username" name="email" type="email" autofocus>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
												<input class="form-control" placeholder="Password" name="password" type="password" value="">
											</div>
										</div>
										<div class="form-group">
											<input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
										</div>
									</div>
								</div>
                                    </div>
                            </div>
						</form>
					</div>
					<div class="panel-footer panel-info">
						Don't have an account! <a href="authorreg.jsp" onClick=""> Sign Up Here </a>
					</div>
                </div>
			</div>
		</div>
	</div>
</body>
</html>