package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/delete")
public class MemberDeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		
//		req.setCharacterEncoding("UTF-8");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		ServletContext sc = this.getServletContext();
		
		String driver = sc.getInitParameter("driver");
		String url = sc.getInitParameter("url");
		String user = sc.getInitParameter("user");
		String password = sc.getInitParameter("password");
		
		String mNo = req.getParameter("mNo");
		
		String sql = "";
		
		try {
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, user, password);
			
			sql = "DELETE FROM MEMBERS";
			sql += " WHERE MNO = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mNo);
			
			pstmt.executeUpdate();
			
			res.sendRedirect("./list");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally 종료
		
		
	}
	
}
