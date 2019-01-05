package com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.Imp.Imple;
import com.Inte.Inter;
import com.bean.MultiFileupload;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class Magazineupload
 */
@WebServlet("/Magazineupload")
public class Magazineupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Magazineupload() {
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
		
		MultipartParser mp=new MultipartParser(request,999999999);
		Part part;
		FilePart filepart;
		String filename=null;
		String filetype=null;
		String filecontent=null;
		
		long size = 0;
		
		PrintWriter out=response.getWriter();
		
		ArrayList list=new ArrayList<>();
		
		String path=getServletContext().getRealPath(".");
		System.out.println("path==================="+path);
		
		String editpath=path.substring(0,path.indexOf("."));
		System.out.println("editpathppppppppppppppppppppppppp"+editpath);
		
		 String fullpath=editpath+"\\NW06\\WebContent\\local\\";
		System.out.println("editpath''ppppp''''''");
		
		
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
				
				filecontent = filename +filepart ;
                System.out.println("filecontent=" + filecontent);
		
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
				
					
					
					MultiFileupload mu =new MultiFileupload();
					
					mu.setBookname(list.get(0).toString());
					System.out.println("Book Name"+list.get(0).toString());
					
					
					mu.setAuthorname(list.get(1).toString());
					System.out.println("Author Name"+list.get(1).toString());
					
					mu.setBookprice(list.get(2).toString());
					System.out.println("Book Price"+list.get(2).toString());
					
					mu.setMonth(list.get(3).toString());
					System.out.println("Month"+list.get(3).toString());
					
					
					mu.setFilename(filename);
					mu.setFilecontent(filecontent);
					mu.setFiletype(filetype);
					mu.setFilesize(String.valueOf(size));
				
					
					Inter i=new Imple();
					int j=i.multi(mu);
					if(j==1)
			{
				response.sendRedirect("fileuploadsuccess.jsp");
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
			
			}	
}
	