<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.bean.Down_bean" %>
        <%@ page import="java.io.PrintWriter" %>
        <%@ page import="java.io.IOException" %>
        
        <%@ page import=" javax.servlet.ServletException" %>
        <%@ page import="javax.servlet.annotation.WebServlet" %>
        
        <%@ page import="javax.servlet.http.HttpServlet" %>
        
        <%@ page import="javax.servlet.http.HttpServletRequest" %>
        <%@ page import="javax.servlet.http.HttpServletResponse" %>
         <%@ page import="javax.servlet.http.HttpSession" %>
                
                
     <%@ page import="com.dbcon.DBConn" %>
                
 <%@ page import="com.Imp.Imple" %>
   <%@ page import="com.Inte.Inter" %>
   <%@ page import="java.io.*" %>
                
        
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%







HttpSession hsdown=request.getSession();
String ln=(String)hsdown.getAttribute("l");
String fn=(String)hsdown.getAttribute("f");
String em=(String)hsdown.getAttribute("e");
String ph=(String)hsdown.getAttribute("p");
String ps=(String)hsdown.getAttribute("pass");
String birth=(String)hsdown.getAttribute("br");
String gn=(String)hsdown.getAttribute("g");


System.out.println("lasr"+ln);
System.out.println("fn"+fn);
System.out.println("em"+em);
System.out.println("ph"+ph);
System.out.println("ps"+ps);
System.out.println("br"+birth);
System.out.println("gen"+gn);


String filename= request.getParameter("f");   
System.out.println("filename--------------------"+filename);


Down_bean db=new Down_bean();

db.setBr(birth);
db.setEm(em);
db.setFn(fn);
db.setGn(gn);
db.setLn(ln);
db.setPass(ps);
db.setPh(ph);
db.setFilename(filename);

Inter i1=new Imple();
int k=i1.dowmload_person(db);

////////////////////////////////////////////////////////////////////////////////////	




 PrintWriter out1=response.getWriter();
 

	

	String realpath = getServletContext().getRealPath("/");
	String filepath = "D:\\Workspace\\NW06\\WebContent\\local\\";
	
	
	
	response.setContentType("text/html");  

	
	response.setContentType("APPLICATION/OCTET-STREAM");   
	response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
	  
	FileInputStream fileInputStream = new FileInputStream(filepath + filename);  
	            
	int i;   
	while ((i=fileInputStream.read()) != -1) {  
	out1.write(i);   
	}  

	fileInputStream.close();   
	out1.close();   


response.sendRedirect("error.jsp");













%>



<a href=""><button>muthu</button></a>
    <meta http-equiv="refresh" content="2; URL=business.jsp">

</body>
</html>