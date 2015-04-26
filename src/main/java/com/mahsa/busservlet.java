package com.mahsa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/home")//, initParams={@WebInitParam(name="ProductName",value="MyApplication")})
public class busservlet extends HttpServlet{
	String appName;
@Override
	public void init() throws ServletException{
		appName=getInitParameter("ProductName");
				
		
	}
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
	//resp.getWriter().write("Helloooo!");
	String name= req.getParameter("name");
	if(name!=null){
		resp.setContentType("text/xml");
		resp.getWriter().printf("<application>"+"<name>hello %s</name>"+"<product>%s</product>"+"</application>",name,appName);
	}
	else{
		resp.getWriter().write("please enter name");
	}
}
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
	
	String name= req.getParameter("name");
	if(name!=null && name !=""){
		resp.getWriter().printf("hello %s", name);
	}
	else{
		resp.sendRedirect("index.jsp");
	}
}
}
