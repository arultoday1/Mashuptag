<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dbcon.DBConn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>


<%@page import="java.sql.*" %>
    
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
<title>View Books</title>
<style type="text/css">
 body
        {
            background-image: url("images/depositphotos.jpg");
            background-repeat: no-repeat;
             background-size: 100% 800px;
        }
        table
        {
            margin-top:60px;
        }
        table
        {
            text-align: center;           
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
        <li ><a href="index.jsp">Home</a></li>
        <li class="active"><a href="usershow.jsp">USER SHOW</a></li> 
          <li><a href="authorshow.jsp">AUTHOR SHOW</a></li>  
          <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">View Books <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="businessshow.jsp">Business</a></li>
            <li><a href="digitshow.jsp">Digit IT</a></li>            
            <li><a href="dataquestshow.jsp">DataQuest</a></li>            
          </ul>
        </li>              
      </ul>        
      
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> LOGOUT</a></li>          
      </ul>
    </div>
  </div>
</nav> 
<div class="container">
 
   <%
 

			String firstname="";

			String lastname="";
			
			String email="";
			
			String phone="";

			String password="";
			
			String confirmpassword="";
    		
			String birth=""; 
			
			String gender="";
			
			String photo="";
			
			

%>
	
		<table class="table table-bordered bg-success">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:darkseagreen" >
	
	<th>FIRST NAME</th>	
	<th>LAST NAME</th>
	<th>EMAIL</th>	
	<th>PHONE</th>	
    <th>PASSWORD</th>
    <th>CONFIRMPASSWORD</th>
   <th>BIRTH DAY</th>
   <th>GENDER</th> 
    <th>PHOTO</th> 
	</tr>
<% 

Connection con=DBConn.create();




PreparedStatement ps=con.prepareStatement("SELECT * FROM `power`.facebook f");

   
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	firstname=rs.getString(1);
	lastname=rs.getString(2);
	email=rs.getString(3);
	phone=rs.getString(4);	
	password=rs.getString(5);
	confirmpassword=rs.getString(6);
	birth=rs.getString(7);
	gender=rs.getString(8);
	photo=rs.getString(9);
	%>

<tr>
<td><%=firstname%></td>
<td><%=lastname%></td>
<td><%=email%></td>
<td><%=phone%></td>
<td><%=password%></td>
 <td><%=confirmpassword%></td>
<td><%=birth%></td>
<td><%=gender%></td>
<td><img src="local/<%=photo%>"width="150px" height="80px"></td>
</tr>
                            
   <%}%> 
   </table>                             
 
  </div>
</body>
</html>