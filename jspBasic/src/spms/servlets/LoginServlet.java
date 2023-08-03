package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import spms.dto.MemberDto;

@WebServlet(value = "/auth/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher rd = req.getRequestDispatcher("./LoginForm.jsp");
		rd.forward(req, res);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String email = req.getParameter("email");
		String pwd = req.getParameter("password");
		String name = "";
		
		String sql = "";
		int colIndex = 1;
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			sql += "SELECT MNAME, EMAIL";
			sql += " FROM MEMBERS";
			sql += " WHERE EMAIL = ?";
			sql += " AND PWD = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(colIndex++, email);
			pstmt.setString(colIndex, pwd);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				email = rs.getString("email");
				name = rs.getString("mname");
				
				MemberDto memberDto = new MemberDto(name, email);
				
				HttpSession session = req.getSession();
				session.setAttribute("member", memberDto);
				
				res.sendRedirect("../member/list");
			}else {
				RequestDispatcher rd = 
					req.getRequestDispatcher("./LoginFail.jsp");
				
				rd.forward(req, res);
//				rd.include(req, res);
				
//				res.sendRedirect("./LoginFail.jsp");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				if(pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} // finally 종료
		
	}
	
}
