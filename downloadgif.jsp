
<%@ page import="com.dbcon.DBConn" %>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html>


<html lang="zxx">
<!-- Head -->

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="0.5; URL=business.jsp">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<!-- //Head -->
<!-- Body -->
<style>


</style>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
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
          <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> HOME</a></li>        
        <li><a href="authorlogin.jsp"><span class="glyphicon glyphicon-education"></span> AUTHOR</a></li> 
          <li><a href="userlogin.jsp"><span class="glyphicon glyphicon-user"></span> USER</a></li>          
      </ul>
      <ul class="nav navbar-nav navbar-right">        
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> LOGOUT</a></li>          
      </ul>
    </div>
  </div>
</nav>      

<%

String f=request.getParameter("ufile");
String fn="",ln="",ph="",em="",ps="",birth="",gn="";

HttpSession hs2=request.getSession();
String eml=(String)hs2.getAttribute("user");


Connection con1=null;
con1=DBConn.create();
PreparedStatement ps1=con1.prepareStatement("SELECT * FROM power.facebook WHERE email='"+eml+"'");

ResultSet rs1=ps1.executeQuery();
while(rs1.next()){
	fn=rs1.getString(1);
	ln=rs1.getString(2);
	em=rs1.getString(3);
	ph=rs1.getString(4);
	ps=rs1.getString(5);
	birth=rs1.getString(7);
	gn=rs1.getString(8);
	HttpSession hsdown=request.getSession();
	hsdown.setAttribute("l", ln);
	hsdown.setAttribute("f", fn);
	hsdown.setAttribute("e", em);
	hsdown.setAttribute("p", ph);
	hsdown.setAttribute("pass", ps);
	hsdown.setAttribute("br", birth);
	hsdown.setAttribute("g", gn);


	
}









%>



    <meta http-equiv="refresh" content="0; URL=Download?file=<%=f%>">






<div>
<center>
<img src="images/download.gif" style="width:50%;">
<h2>File Upload Successfully</h2>
</center>
</div>








</body>

<!-- //Body -->
</html>