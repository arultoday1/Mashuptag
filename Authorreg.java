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
 * Servlet implementation class Authorreg
 */
@WebServlet("/Authorreg")
public class Authorreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authorreg() {
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
		String name=request.getParameter("name");
		System.out.println("Enter Your Name: "+name);
		
		String email=request.getParameter("email");
		System.out.println("Enter Your Email: "+email);
		
		String pho=request.getParameter("phone");
		System.out.println("Enter Your Phone: "+pho);
		
		String pass=request.getParameter("pwd");
		System.out.println("Enter Your Password: "+pass);
		
		String cpass=request.getParameter("cpwd");
		System.out.println("Enter Your Confirm Password: "+cpass);
		
		String bookn=request.getParameter("book");
		System.out.println("Enter Your BookName: "+bookn);
		
		String authorn=request.getParameter("author");
		System.out.println("Enter Your AuthorName: "+authorn);
		
		Author au=new Author();
		au.setName(name);
		au.setEmail(email);
		au.setPhone(pho);
		au.setPassword(pass);
		au.setConpassword(cpass);
		au.setBookname(bookn);
		au.setAuthorname(authorn);
		
		
		Inter u=new Imple();
		int t=u.auth(au);
		if(t==1)
		{
			response.sendRedirect("authorlogin.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
		
		
	}

}
