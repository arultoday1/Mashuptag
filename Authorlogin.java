package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Imp.Imple;
import com.Inte.Inter;
import com.bean.Author;

/**
 * Servlet implementation class Authorlogin
 */
@WebServlet("/Authorlogin")
public class Authorlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authorlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email=request.getParameter("email");
		System.out.println("Enter your Email: "+email);
		
		String pass=request.getParameter("password");
		System.out.println("Enter Your Password: "+pass);
		
		Author a=new Author();
		a.setEmail(email);
		a.setPassword(pass);
		
		Inter u=new Imple();
		boolean th=u.alog(a);		
		if(th==true)
		{
			response.sendRedirect("fileupload.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
