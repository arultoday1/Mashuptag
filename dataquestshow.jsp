<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.dbcon.DBConn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>



<%@page import="java.sql.*" %>
    
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
<title>Dataquest Show</title>
    <style>
         body
        {
            background-image: url("images/Dataquest3.jpg");
            background-repeat: no-repeat;
             background-size: 100% 700px;
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
        <li><a href="usershow.jsp">USER SHOW</a></li> 
          <li><a href="authorshow.jsp">AUTHOR SHOW</a></li>  
          <li class="active" class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">View Books <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="businessshow.jsp">Business</a></li>
            <li><a href="digitshow.jsp">Digit IT</a></li>            
            <li class="active"><a href="dataquestshow.jsp">DataQuest</a></li>            
          </ul>
        </li>              
      </ul>    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> Log out</a></li>       
      </ul>
    </div>
  </div>
</nav>  
 <div class="container">
 
   <%
 

			String bookname="";

			String authorname="";
			
			String bookprice="";
			
			String month="";

			String filename="";
			
			String filetype="";
    		
			String filecontent=""; 
			
			String filesize=""; 
			
			HttpSession hs2=request.getSession();
			String usr=(String)hs2.getAttribute("user");

%>
	
		<table class="table table-bordered bg-success">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:darkseagreen" >
	
	<th>BOOK NAME</th>	
	<th>AUTHOR NAME</th>
	<th>BOOK PRICE</th>	
	<th>MONTH</th>	
    <th>BOOK</th>
     <th>VIEW</th>
   <th>DOWNLOAD</th> 
	</tr>
<% 

Connection con=DBConn.create();

String table="facebook";


PreparedStatement ps=con.prepareStatement("SELECT * FROM `power`.author3 a");

   
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	bookname=rs.getString(1);
	authorname=rs.getString(2);
	bookprice=rs.getString(3);
	month=rs.getString(4);	
	filename=rs.getString(5);
	filetype=rs.getString(6);
	filecontent=rs.getString(7);
	filesize=rs.getString(7);
	
	%>

<tr>
<td><%=bookname%></td>
<td><%=authorname%></td>
<td><%=bookprice%></td>
<td><%=month%></td>
 <td><%=filename%></td>
<td><%=filetype%></td>
<%-- <td><%=filesize%></td>  --%>
 
 <td><a href="downloadgif.jsp?ufile=<%=filename%>&&t=<%=table%>&&u=<%=usr%>"><button><span class="glyphicon glyphicon-download"></span></button></a></td>
 
</tr>
                            
   <%}%> 
   </table>                             
 
  </div>
</body>
</html>