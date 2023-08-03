package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dto.MemberDto;

@WebServlet("/member/update")
public class MemberUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String mNo = "";
		
		String sql = "";
		RequestDispatcher rd = null;
		
		try {
			mNo = req.getParameter("no");
			int no = Integer.parseInt(mNo);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			sql = "SELECT MNAME, EMAIL, CRE_DATE";
			sql += " FROM MEMBERS";
			sql += " WHERE MNO = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			String mName = "";
			String email = "";
			Date creDate = null;
			
			MemberDto memberDto = new MemberDto();
			
			if(rs.next()) {
				mName = rs.getString("MNAME");
				email = rs.getString("EMAIL");
				creDate = rs.getDate("CRE_DATE");
				
				memberDto.setNo(no);
				memberDto.setName(mName);
				memberDto.setEmail(email);
				memberDto.setCreateDate(creDate);
			}else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}
			
			req.setAttribute("memberDto", memberDto);
			
			rd = req.getRequestDispatcher("./MemberUpdateForm.jsp");
			rd.forward(req, res);
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			rd = req.getRequestDispatcher("/Error.jsp");
				
			rd.forward(req, res);
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
			
		} //finally end
		
	} // doGet end
	
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		
//		req.setCharacterEncoding("UTF-8");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String mNo = req.getParameter("mNo");
		
		String sql = "";
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			sql = "UPDATE MEMBERS";
			sql += " SET EMAIL = ?, MNAME = ?, MOD_DATE = SYSDATE";
			sql += " WHERE MNO = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			pstmt.setString(2, name);
			pstmt.setString(3, mNo);
			
			pstmt.executeUpdate();
			
			res.sendRedirect("./list");
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				
			rd.forward(req, res);
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally 종료
		
		
	}
	
}
