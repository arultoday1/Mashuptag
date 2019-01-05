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
 * Servlet implementation class Accountcreate
 */
@WebServlet("/Accountcreate")
public class Accountcreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accountcreate() {
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
		
		String first=request.getParameter("fname");
		System.out.println("Enter your First Name: "+first);
		
		String last=request.getParameter("lname");
		System.out.println("Enter your Last Name: "+last);
		
		String email=request.getParameter("email");
		System.out.println("Enter your Email: "+email);
		
		
		
		HttpSession sess=request.getSession();
		sess.setAttribute( "cemail",email);
		
		
		
		String phone=request.getParameter("phone");
		System.out.println("Enter Your Phone Number: "+phone);
		
		String pass=request.getParameter("pass");
		System.out.println("Enter Your Password: "+pass);
		
		String rpass=request.getParameter("repass");
		System.out.println("Enter Your Repeat Password: "+rpass);
		
		String dofb=request.getParameter("birth");
		System.out.println("Enter Your Date of Birth: "+dofb);
		
		String gentral=request.getParameter("gentral");
		System.out.println("Enter Your Gentral: "+gentral);
		
		String photo=request.getParameter("photo");
		System.out.println("Entery Your Photo: "+photo);
		
		
		Facebook f=new Facebook();
		f.setFirstname(first);
		f.setLastname(last);   
		f.setEmail(email);
		f.setPhone(phone);
		f.setPass(pass);
		f.setRpass(rpass);
		f.setDob(dofb);
		f.setGentral(gentral);
		f.setPhoto(photo);
		
		
		Inter b=new Imple();
		int o=b.face(f);
		if(o==1)
		{
			response.sendRedirect("photoupload.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
		
	}

}
