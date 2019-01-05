package com.Imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Inte.Inter;
import com.bean.Author;
import com.bean.Down_bean;
import com.bean.Facebook;
import com.bean.Fileupload;
import com.bean.MultiFileupload;
import com.dbcon.DBConn;

public class Imple implements Inter {

	Connection con;
	@Override
	public int face(Facebook f) {
		int bo=0;
		try
		{
		con=DBConn.create();
		PreparedStatement ps=con.prepareStatement("INSERT INTO `power`.facebook VALUES(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, f.getFirstname());
		ps.setString(2, f.getLastname());
		ps.setString(3, f.getEmail());
		ps.setString(4, f.getPhone());
		ps.setString(5, f.getPass());
		ps.setString(6, f.getRpass());
		ps.setString(7, f.getDob());
		ps.setString(8, f.getGentral());
		ps.setString(9, f.getPhoto());
		
		bo=ps.executeUpdate();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return bo;
	}
	@Override
	public int file(Fileupload fi) {
		int xy=0;
		try
		{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("UPDATE `power`.`facebook` SET photo='"+fi.getFilename()+"' WHERE email='"+fi.getEmail()+"'");
			xy=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return xy;
	}
	@Override
	public boolean log(Facebook lo) {
		boolean o=false;
		// TODO Auto-generated method stub
		try
		{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM power.facebook WHERE email=? and Password=?");
			ps.setString(1, lo.getEmail());
			ps.setString(2, lo.getPass());
			
			ResultSet p=ps.executeQuery();
			o=p.next();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return o;
	}
	@Override
	public int auth(Author au) {
		// TODO Auto-generated method stub
		int a=0;
		try
		{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO `power`.authorrege VALUES(?,?,?,?,?,?,?)");
			ps.setString(1, au.getName());
			ps.setString(2, au.getEmail());
			ps.setString(3, au.getPhone());
			ps.setString(4, au.getPassword());
			ps.setString(5, au.getConpassword());
			ps.setString(6, au.getBookname());
			ps.setString(7, au.getAuthorname());
			a=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return a;
	}
	@Override
	public boolean alog(Author a) {
		// TODO Auto-generated method stub
		boolean t=false;
		try
		{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM power.authorrege WHERE email=? and password=?");
			ps.setString(1, a.getEmail());
			ps.setString(2, a.getPassword());
			ResultSet p=ps.executeQuery();
			t=p.next();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return t;
	}
	@Override
	public int multi(MultiFileupload mu) {
		int m=0;
		// TODO Auto-generated method stub
		try
		{
		 
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO `power`.author1 VALUES(?,?,?,?,?,?,?,?)");
			ps.setString(1, mu.getBookname());
			ps.setString(2, mu.getAuthorname());
			ps.setString(3, mu.getBookprice());
			ps.setString(4, mu.getMonth());
			ps.setString(5, mu.getFilename());
			ps.setString(6, mu.getFiletype());
			ps.setString(7, mu.getFilecontent());
			ps.setString(8, mu.getFilesize());
			
			m=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return m;
	}
	@Override
	public int dowmload_person(Down_bean db) {
		int m=0;
		// TODO Auto-generated method stub
		try
		{
		 
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO `power`.userdetails VALUES(?,?,?,?,?,?,?)");
			ps.setString(1, db.getFn());
			ps.setString(2, db.getLn());
			ps.setString(3, db.getEm());
			ps.setString(4, db.getPh());
			ps.setString(5, db.getPass());

			ps.setString(6, db.getBr());
			ps.setString(7, db.getFilename());

	
			
			m=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return m;
	}

}
