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
 <style>
        @import url(http://fonts.googleapis.com/css?family=Roboto:400,100,900);

html,
body {
  -moz-box-sizing: border-box;
       box-sizing: border-box;
  height: 100%;
  width: 100%; 
  background: #FFF;
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
}
 
.wrapper {
  display: table;
  height: 100%;
  width: 100%;
}

.container-big {
  display: table-cell;
  padding: 1em;
  text-align: center;
  vertical-align: middle;
}
.big-logo {
  width: 100px;
  margin-bottom:15px
}
h1.heading {
  color: #fff;
  font-size: 1.15em;
  font-weight: 900;
  margin: 0 0 0.5em;
  color: #505050;
}
@media (min-width: 450px) {
  h1.heading {
    font-size: 3.55em;
  }
}
@media (min-width: 760px) {
  h1.heading {
    font-size: 3.05em;
  }
}
@media (min-width: 900px) {
  h1.heading {
    font-size: 3.25em;
    margin: 0 0 0.3em;
  }
} 
.carbox {
  display: block; 
    margin-bottom: 20px;
    line-height: 1.42857143;
    background-color: #fff;
    border-radius: 2px;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12); 
    transition: box-shadow .25s; 
}
.carbox:hover {
  box-shadow: 0 8px 17px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
}
.img-carbox {
  width: 100%;
  height:200px;
  border-top-left-radius:2px;
  border-top-right-radius:2px;
  display:block;
    overflow: hidden;
}
.img-carbox img{
  width: 100%;
  height: 200px;
  object-fit:cover; 
  transition: all .25s ease;
} 
.carbox-content {
  padding:15px;
  text-align:left;
}
.carbox-title {
  margin-top:0px;
  font-weight: 700;
  font-size: 1.65em;
}
.carbox-title a {
  color: #000;
  text-decoration: none !important;
}
.carbox-read-more {
  border-top: 1px solid #D4D4D4;
}
.carbox-read-more a {
  text-decoration: none !important;
  padding:10px;
  font-weight:600;
  text-transform: uppercase
}
  </style>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Magazines</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">Home</a></li>
          
        <li class="active"><a href="#">Magazines list</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>       
      </ul>
    </div>
  </div>
</nav>  
<br>
<br>
 <section class="wrapper">
    <div class="container-big">
        <div>
            <img src="" class="big-logo"/>
            <h1 class="heading">
                 List of magazines in India
            </h1>
        </div>
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-4">
                        <div class="carbox">
                            <a class="img-carbox" href="business.jsp">
                            <img src="images/business.jpg" />
                          </a>
                            <div class="carbox-content">
                                <h4 class="carbox-title">
                                    <a href="business.jsp"> Business India
                                  </a>
                                </h4>
                                <p class="">
                                    Business India is a fortnightly business news magazine founded by brothers Ashok Hotchand Advani, Hiroo Advani and Rajkumar Advani in 1978 and published in Mumbai, India. In 2001, the magazine had a circulation of 88,100 copies and it increased to 526,000 in 2006. The magazine is considered pioneer of Indian business magazines. The magazine started publication in English but is now also available in other Indian languages.

                                </p>
                            </div>
                            <div class="carbox-read-more">
                                <a href="business.jsp" class="btn btn-link btn-block">
                                    Read More
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <div class="carbox">
                            <a class="img-carbox" href="digit.jsp">
                            <img src="images/Digital.jpg" />
                          </a>
                            <div class="carbox-content">
                                <h4 class="carbox-title">
                                    <a href="digit.jsp"> Digit - IT
                                  </a>
                                </h4>
                                <p class="">
                                    Digit Digit is an Indian technology media publisher owned by 9.9 Media. According to the last Indian Readership Survey results that mentioned it it has a readership of about 230,000. The IRS surveys have always shown Digit to be the most read technology magazine in India, higher than even the combined readership of its peers. It is circulated in India officially, but also reaches Nepal, Sri Lanka, Oman, Dubai and some other countries .
                                </p>
                            </div>
                            <div class="carbox-read-more">
                                <a href="digit.jsp" class="btn btn-link btn-block">
                                    Read More
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <div class="carbox">
                            <a class="img-carbox" href="dataquest.jsp">
                            <img src="images/dataquest.png" />
                          </a>
                            <div class="carbox-content">
                                <h4 class="carbox-title">
                                    <a href="dataquest.jsp"> Dataquest
                                  </a>
                                </h4>
                                <p class="">
                                    <br>
                                   Dataquest is an Indian magazine focused on information technology related articles. A monthly, Dataquest is published by Cyber Media India Ltd, South Asia's largest specialty media group. It was one of the first publications to champion energy/green issues and the application of IT in governance.
                                    <br>
                                    <br>
                                    
                                </p>
                            </div>
                            <div class="carbox-read-more">
                                <a href="dataquest.jsp" class="btn btn-link btn-block">
                                    Read More
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>