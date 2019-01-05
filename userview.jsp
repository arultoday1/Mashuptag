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
<title>user view</title>
</head>
<body>
<div class="container">
 
   <%
   String name=request.getParameter("book");
   System.out.println("name"+name);




Connection con=DBConn.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `power`.`author1`");
ResultSet rs=ps.executeQuery();





while(rs.next())
{
	name=rs.getString(7);

	
	
	%>


<tr>
<td><%=name%></td>


</tr>
<%}%>

</table>
			






</body>
</html>