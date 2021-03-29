package Servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;   
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaClass.event;
import com.javaUtil.DB.eventdbutil;

 
@WebServlet("/deleteeventservlet")
public class deleteeventservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idevent = request.getParameter("idevent");
		boolean isTrue;
		
		isTrue = eventdbutil.deleteevent(idevent);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminuseraccount.jsp");
			dispatcher.forward(request, response);
		}    
		else {
			List<event>eventDetails = eventdbutil.geteventDetails(idevent);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminuseraccount.jsp");
			dispatcher.forward(request, response);
			
		}
	}

}
