package com.update;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String sname = request.getParameter("serviceName");
		String discription = request.getParameter("discription");
		String phone = request.getParameter("phone");
		
		System.out.println("id id "+id);

		
	boolean t;
		
		t = updateDbUtill.updatedata(id, name, sname, discription, phone);
		
		if(t == true) {
			RequestDispatcher a = request.getRequestDispatcher("display.jsp");
			a.forward(request, response);
		}
	}

}
