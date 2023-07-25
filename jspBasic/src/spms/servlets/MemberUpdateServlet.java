package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ServletContext sc = this.getServletContext();
		
		String driver = sc.getInitParameter("driver");
		String url = sc.getInitParameter("url");
		String user = sc.getInitParameter("user");
		String password = sc.getInitParameter("password");
		
		int mNo = Integer.parseInt(req.getParameter("mNo"));
		
		String sql = "";
		
		try {
			Class.forName(driver);
			System.out.println("오라클 드라이버 로드");
			
			conn = DriverManager.getConnection(url, user, password);
			
			sql = "SELECT MNAME, EMAIL, CRE_DATE";
			sql += " FROM MEMBERS";
			sql += " WHERE MNO = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, mNo);
			
			rs = pstmt.executeQuery();
			
			String mName = "";
			String email = "";
			Date creDate = null;
			
			while(rs.next()) {
				mName = rs.getString("MNAME");
				email = rs.getString("EMAIL");
				creDate = rs.getDate("CRE_DATE");
			}
			
			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");
			PrintWriter out = res.getWriter();
			
			String htmlStr = "";
			
			htmlStr += "<!DOCTYPE html>";
			htmlStr += "<html>";
			htmlStr += "<head>";
			htmlStr += "<title>회원정보</title>";
			htmlStr += "</head>";
			htmlStr += "<body>";
			htmlStr += "<h1>회원정보 수정</h1>";
			htmlStr += "<form action='./update' method='post'>";
			htmlStr += "번호: <input type='text' name='mNo' value='" + mNo +"' ";
			htmlStr	+= "readonly='readonly'><br>"; 
			htmlStr += "이름: <input type='text' name='name' value='" + mName; 
			htmlStr += "'><br>";
			htmlStr += "이메일: <input type='text' name='email' value='" + email; 
			htmlStr += "'><br>";
			htmlStr += "가입일: " + creDate + "<br>";
			htmlStr += "<input type='submit' value='저장'>";
			htmlStr += "<input type='button' value='취소' "
					+ "onclick='location.href=\"./list\"'>";
			htmlStr += "</form>";
			htmlStr += "</body>";
			htmlStr += "</html>";
			
			out.println(htmlStr);
			System.out.println("수행 되나?");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
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
		} //finally end
		
	} // doGet end
	
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		ServletContext sc = this.getServletContext();
		
		String driver = sc.getInitParameter("driver");
		String url = sc.getInitParameter("url");
		String user = sc.getInitParameter("user");
		String password = sc.getInitParameter("password");
		
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String mNo = req.getParameter("mNo");
		
		String sql = "";
		
		try {
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, user, password);
			
			sql = "UPDATE MEMBERS";
			sql += " SET EMAIL = ?, MNAME = ?, MOD_DATE = SYSDATE";
			sql += " WHERE MNO = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			pstmt.setString(2, name);
			pstmt.setString(3, mNo);
			
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
