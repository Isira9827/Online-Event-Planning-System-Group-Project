package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Eventinsert")
public class Eventinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String event_id = request.getParameter("event_id");
			String username = request.getParameter("username");
			String event_name = request.getParameter("event_name");
			String location = request.getParameter("location");
			String guests = request.getParameter("guests");
			String date = request.getParameter("date");
			String stime = request.getParameter("stime");
			String etime = request.getParameter("etime");
			
			boolean isTrue;
			
			isTrue = CustomerDBUtil.insertcustomer(event_id,username,event_name, location, guests,date,stime,etime);
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
				
			}else
				
			{
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
	}

}
