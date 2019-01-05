<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/fac.css">
<script src="js/jquery.js"></script>
<script src="js/jquery2.js"></script>
<script src="js/bootstrap.js"></script>
<title>Photo upload</title>


<style>
        img{
  max-width:140px;
  height:140px;
  margin-top:30px;
}
input{
    margin-top:20px;
}
    </style>
    <script type="text/javascript">
         function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    </head>
    <body>
        <div class="container">
  
<div class="stepwizard col-md-offset-3">
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
        <p>Register</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
        <p>photo upload</p>
      </div>
      <!-- <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
        <p>Success</p>
      </div> -->
    </div>
  </div>
  
  <form role="form" action="Imageupload" method="post" enctype = "multipart/form-data">
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">          
         <h3>Profile Picture</h3>
          <center>
		
		
	       <img id="blah" src="http://placehold.it/180" alt="your image" class="img-circle" />
           <br>
           <br>
           <input type="file" name="photo" onchange="readURL(this);" class="btn btn-success"/>
              </center>
		      
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
      </div>
    </div>
    <div class="row setup-content" id="step-2">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
        <center> 
        
       <input type="submit" value="Success" class="btn btn-success"></center>
          
              
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
      </div>
    </div>
    <!-- <div class="row setup-content" id="step-3">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          
          <button class="btn btn-success btn-lg pull-right" type="submit">Submit</button>
        </div>
      </div>
    </div> -->
  </form>  
</div> 
</body>
</html>