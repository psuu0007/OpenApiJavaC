package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;


@WebServlet("/member/add")
public class MemberAddServlet extends HttpServlet {

	// 회원등록화면
	@Override
	protected void doGet(HttpServletRequest request
		, HttpServletResponse response) throws ServletException, IOException {

		response.sendRedirect("./MemberForm.jsp");
		
	}

	// 데이터베이스에 데이터 추가, 회원정보 저장
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res)
			throws ServletException, IOException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		// 입력 매개변수의 값 가져오기
		String emailStr = req.getParameter("email");
		String pwdStr = req.getParameter("password");
		String nameStr = req.getParameter("name");
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			String sql = "";
			
			sql += "INSERT INTO MEMBERS";
			sql += "(MNO, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE)";
			sql += "VALUES(MEMBERS_MNO_SEQ.nextval, ?, ?, ?";
			sql	+= ", SYSDATE, SYSDATE)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, emailStr);
			pstmt.setString(2, pwdStr);
			pstmt.setString(3, nameStr);
			
			pstmt.executeUpdate();
			
			res.sendRedirect("./list");

		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			RequestDispatcher rd = 
					req.getRequestDispatcher("/Error.jsp");
				
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
