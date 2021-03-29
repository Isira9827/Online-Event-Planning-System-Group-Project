package Servelet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaUtil.DB.eventdbutil;

@WebServlet("/updateeventservlet")
public class updateeventservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idevent = request.getParameter("idevent");
		String eventname = request.getParameter("eventname");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String location = request.getParameter("location");
		
		System.out.println(idevent);
		System.out.println(eventname);
		System.out.println(category);
		System.out.println(description);
		System.out.println(location);
		
		boolean istrue; 
		
		istrue = eventdbutil.updatecustomer(idevent, eventname, category, description, location);
		
		if(istrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("adminuseraccount.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("adminuseraccount.jsp");
			dis2.forward(request,response);
		
		}
		
	}

}

