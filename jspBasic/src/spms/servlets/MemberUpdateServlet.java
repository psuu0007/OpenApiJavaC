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

import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet("/member/update")
public class MemberUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		Connection conn = null;
		
		String mNo = "";
		
		RequestDispatcher rd = null;
		
		try {
			mNo = req.getParameter("no");
			int no = Integer.parseInt(mNo);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			MemberDto memberDto = memberDao.memberSelectOne(no);
			
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
		}
		
	} // doGet end
	
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res) throws ServletException, IOException {
		MemberDto memberDto = null;
		
		Connection conn = null;
		
		try {
			String email = req.getParameter("email");
			String name = req.getParameter("name");
			String mNo = req.getParameter("no");
			int no = Integer.parseInt(mNo);
			
			memberDto = new MemberDto();
			memberDto.setEmail(email);
			memberDto.setName(name);
			memberDto.setNo(no);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			int result = memberDao.memberUpdate(memberDto);
			
			if(result == 0) {
				System.out.println("회원 정보 조회가 실패하였습니다.");
			}
			
			res.sendRedirect("./list");
			
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				
			rd.forward(req, res);
		}
		
		
	}
	
}
