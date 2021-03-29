package com.item; 

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet")
public class servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		String fullname = request.getParameter("fname"); 
		String username = request.getParameter("username");
		String comname = request.getParameter("companyname");
		String address = request.getParameter("address");
		String phonenumber = request.getParameter("tp");
		String pname = request.getParameter("proudct");
		String Discription = request.getParameter("Discription");
		
		boolean rs ;

		rs = addutill.insertItem(fullname,username,comname,address,phonenumber,pname,Discription);

		
		if(rs == true) {
			RequestDispatcher dis = request.getRequestDispatcher("display.jsp");
			dis.forward(request,response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("s.jsp");
			dis.forward(request,response);
		}
	}

}
