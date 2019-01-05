package com.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Imp.Imple;
import com.Inte.Inter;
import com.bean.Down_bean;

/**
 * Servlet implementation class Download
 */
@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Download() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		
		
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

		
		String filename= request.getParameter("file");   
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
		System.out.println("kkkkkkkkkkkk==================="+k);
		if(k==1){
			response.sendRedirect("demo.jsp?f="+filename);
		}
		else{
			response.sendRedirect("error.jsp");

		}
		
	////////////////////////////////////////////////////////////////////////////////////	
	
		
		/*
		
		 PrintWriter out=response.getWriter();
		 

			

			String realpath = getServletContext().getRealPath("/");
			String filepath = "D:\\Workspace\\NW06\\WebContent\\local\\";
			
			
			
			response.setContentType("text/html");  

			
			response.setContentType("APPLICATION/OCTET-STREAM");   
			response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
			  
			FileInputStream fileInputStream = new FileInputStream(filepath + filename);  
			            
			int i;   
			while ((i=fileInputStream.read()) != -1) {  
			out.write(i);   
			}  
			response.sendRedirect("success");

			fileInputStream.close();   
			out.close();   
			*/
			
			}  
	


}
