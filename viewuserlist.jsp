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
<title>View User List</title>
<style type="text/css">
 body
        {
            background-image: url("images/viewuserdetails.jpg");
           /* background-repeat: no-repeat;*/
            background-size: 100% 800px;
        }
        table
        {
            margin-top:60px;
        }
        td
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
        <li><a href="index.jsp">HOME</a></li>        
        <li><a href="fileupload.jsp">FILE UPLOAD</a></li>        
        <li><a href="viewbooks.jsp">View Books</a></li>        
        <li class="active"><a href="#">View User List</a></li>        
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
			
			String birth="";
    		
			String file="";			
			
			
	%>
	
	<table class="table table-bordered bg-success">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:darkseagreen" >
	
	<th>FIRST NAME</th>	
	<th>LAST NAME</th>
	<th>EMAIL</th>	
    <th>PHONE</th>
    <th>PASSWORD</th>
   <th>BIRTH DAY</th>
   <th>FILE NAME</th> 
	</tr>
<% 
Connection con=DBConn.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `power`.userdetails u");


ResultSet rs=ps.executeQuery();


while(rs.next())
{
	firstname=rs.getString(1);
	lastname=rs.getString(2);
	email=rs.getString(3);
	phone=rs.getString(5);
	password=rs.getString(4);	
	birth=rs.getString(6);
	file=rs.getString(7);
	
	
	%>

<tr>
<td><%=firstname%></td>
<td><%=lastname%></td>
<td><%=email%></td>
 <td><%=phone%></td>
<td><%=password%></td>
<td><%=birth%></td>
<td><%=file%></td> 
 </tr>
                            
   <%}%> 
   </table>  

	</div>
</body>
</html>