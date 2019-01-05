package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Imp.Imple;
import com.Inte.Inter;
import com.bean.Facebook;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		System.out.println("Enter Your UserId: "+email);
		
		HttpSession hs2=request.getSession();
		hs2.setAttribute("user", email);
		
		String pass=request.getParameter("pass");
		System.out.println("Enter Your UserId: "+pass);
		
		Facebook lo=new Facebook();
		lo.setEmail(email);
		lo.setPass(pass);
		
		Inter i=new Imple();
		boolean b=i.log(lo);
		if(b==true)
		{
			response.sendRedirect("book.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
