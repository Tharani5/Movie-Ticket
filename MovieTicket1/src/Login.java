import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	static String uname;
	static String password;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		uname=request.getParameter("Username");
		password=request.getParameter("Password");
		RegisterDao registerDao=new RegisterDao();
		if(registerDao.passwordCheck())
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", RegisterDao.username);	
			System.out.println(session.getAttribute("test"));
			response.sendRedirect("Homepagelogin.jsp");
			
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("mes", "invalid email and password");	
			response.sendRedirect("Home.jsp");
		}
	}



}
