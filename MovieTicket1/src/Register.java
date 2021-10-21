

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		if(password.equals(confirmpassword)) {
			RegisterDao registerDao=new RegisterDao();			
			NewUser newuser = new NewUser(uname, password, email, phone);
			registerDao.insert(newuser);
			response.sendRedirect("Homepagelogin.jsp");
		}
		else {
		response.sendRedirect("Home.jsp");
		}
	}

}
