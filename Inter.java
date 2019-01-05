package com.Inte;

import com.bean.Author;
import com.bean.Down_bean;
import com.bean.Facebook;
import com.bean.Fileupload;
import com.bean.MultiFileupload;

public interface Inter {
	public int face(Facebook f);
	public int file(Fileupload fi);
	public boolean log(Facebook lo);
	
	public int auth(Author au);
	public boolean alog(Author a);
	public int multi(MultiFileupload mu);
	public int dowmload_person(Down_bean db);
	
}
