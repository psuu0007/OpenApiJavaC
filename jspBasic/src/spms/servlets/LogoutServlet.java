package spms.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/auth/logout"})
public class LogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
//		session.removeAttribute("member");
//		int num = (int)session.getAttribute("123");
		
		session.invalidate();
		
		
		res.sendRedirect("./login");
		
	}
	
}
