package Servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaClass.admin;
import com.javaUtil.DB.admindbutil;


@WebServlet("/LoignServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String adminusername = request.getParameter("auid");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = admindbutil.validate(adminusername, password);
		
		if(isTrue == true) {
						
		List<admin> admDetails = admindbutil.getadmin(adminusername);
		request.setAttribute("admDetails",admDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("adminuseraccount.jsp");
		dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Adminusername or password is incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
		
	}
		
}
