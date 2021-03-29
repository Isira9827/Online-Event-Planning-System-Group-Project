package com.add;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/additem")
public class additem extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String companyname = request.getParameter("cname");
	
		
		try {
		List<service> service = additemUtill.validate(username, companyname);
		request.setAttribute("service", service);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		  RequestDispatcher a = request.getRequestDispatcher("s.jsp");
		  a.forward(request, response);

	}

}
