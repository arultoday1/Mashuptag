package com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.io.PrintWriter;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Imp.Imple;
import com.Inte.Inter;
import com.bean.Fileupload;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class Imageupload
 */
@WebServlet("/Imageupload")
public class Imageupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Imageupload() {
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
		String filename=null;

		// TODO Auto-generated method stub
		
		HttpSession sess=request.getSession();
		String email=(String)sess.getAttribute("cemail");	
		
		MultipartParser mp = new MultipartParser(request, 999999999);
		
		filename=request.getParameter("photo");
		
		String filetype=null;
				
		long size = 0;
		
		
		PrintWriter out=response.getWriter();
		
		ArrayList list=new ArrayList<>();
		
		Part part;
		FilePart filepart;
		
		String path = getServletContext().getRealPath(" ");
		System.out.println(path);
		

		String editPath = path.substring(0, path.indexOf("."));
		System.out.println(editPath);
		
		String fullpath = editPath + "NW06\\WebContent\\local\\";
		System.out.println(fullpath);
		
		while ((part = mp.readNextPart()) != null)
		{
			if (part.isFile()) {
				filepart = (FilePart) part;
				
				filetype = filepart.getContentType();

				 filename = filepart.getFileName();
				System.out.println(filename);

				fullpath = fullpath + filename;
				System.out.println(fullpath);

				File file = new File(fullpath);
				size = filepart.writeTo(file);
				
				BufferedReader br = new BufferedReader(new FileReader(file));
			}
			else if(part.isParam())
			{
				ParamPart param = (ParamPart) part;
				String name = param.getName();
				String value = param.getStringValue();

				System.out.println("Loadinggg...... " + value);
				list.add(value);					
			}				
		}
		Fileupload fi=new Fileupload();
		fi.setFilename(filename);
		fi.setFiletype(filetype);
		fi.setFilesize(String.valueOf(0));
		fi.setEmail(email);
		
		Inter in=new Imple();
		int ab=in.file(fi);
		if(ab==1)
		{
			response.sendRedirect("userlogin.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
			
		}
				
		
	}

}
