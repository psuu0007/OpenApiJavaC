package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dto.MemberDto;

@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
		throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			String sql = "SELECT MNO, MNAME, EMAIL, CRE_DATE"
					+ " FROM MEMBERS"
					+ " ORDER BY MNO DESC";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			System.out.println("쿼리 수행 성공");
			
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			
			ArrayList<MemberDto> memberList = new ArrayList<>();
			
			//데이터베이스에서 회원정보를 가져오는 로직
			int mno = 0;
			String mname = "";
			String email = "";
			Date creDate = null;
			
			while(rs.next()) {
				MemberDto memberDto = new MemberDto();
				
				mno = rs.getInt("MNO");
				mname = rs.getString("MNAME");
				email = rs.getString("EMAIL");
				creDate = rs.getDate("CRE_DATE");
				
				memberDto.setNo(mno);
				memberDto.setName(mname);
				memberDto.setEmail(email);
				memberDto.setCreateDate(creDate);
				
				memberList.add(memberDto);
			}
			
			request.setAttribute("memberList", memberList);
			
			RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/member/MemberListView.jsp");
			// 인클루딩
			dispatcher.include(request, response);
		} catch (Exception e) {
			
			e.printStackTrace();
			
//			throw new ServletException(e);
			
			request.setAttribute("error", e);
			request.setAttribute("msg", "i'm sorry");
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher("/Error.jsp");
//			포워딩
			dispatcher.forward(request, response);
		}finally {
			if(rs != null) {
				try {
					rs.close();
					System.out.println("ResultSet 종료");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(pstmt != null) {
				try {
					pstmt.close();
					System.out.println("DB 쿼리 종료");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		} // 파이날 끝
		
	} // doGet 메서드 끝
	
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
	
	}
	
}
