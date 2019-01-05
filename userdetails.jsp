<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dbcon.DBConn" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<title>User Details</title>
<style type="text/css">
body
    {
        background-color: bisque;
    }
    table {
    width:80%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>
</head>
<body>




<%





HttpSession store=request.getSession();
String tbl=(String)store.getAttribute("t");
String f=(String)store.getAttribute("ufile");

String usr=(String)store.getAttribute("u");
System.out.println("usrrrrrrrrrrrrrrrr================="+usr);





%>

<div class="cantainer">
 


<%



String fname="";
String lname="";
String email="";
String phone="";
String pass="";
String cpass="";
String bday="";
String gender="";



%>

<table>
<tr>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>Email</th>
    <th>Phone</th>
    <th>Passwrd</th>
    <th>Confirm Password</th>
    <th>Birth Day</th>
    <th>Gender</th>
    <th>File Name</th>
  </tr>
  


					<%
					Connection con=DBConn.create();

					PreparedStatement ps=con.prepareStatement("SELECT * FROM `power`.`"+tbl+"` WHERE email='"+usr+"'");
				   
ResultSet rs=ps.executeQuery(); 
%>

					<%
System.out.println("Con 2 comming ....");
	
	 while(rs.next())
	 {%>
<%   fname=rs.getString(1);
lname=rs.getString(2);
email=rs.getString(3);
phone=rs.getString(4);
pass=rs.getString(5);
cpass=rs.getString(6);
bday=rs.getString(7);
gender=rs.getString(8);

	 %>
					<tr>


  
    <td><%=fname%></td>
    
    <td><%=lname%></td>  
    
   <td><%=email%></td>
  
    <td><%=phone%></td>
    
    <td><%=pass%></td>
    
  <td><%=cpass%></td>
  
    <td><%=bday%></td>
    
    <td><%=gender%></td>
    
    <td><%=gender%></td>


						</tr>
						
						
						
					<%}%>	
				
</table>
    </div>
</body>
</html>