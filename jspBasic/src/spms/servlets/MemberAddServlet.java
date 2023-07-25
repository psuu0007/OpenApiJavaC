package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/member/add")
public class MemberAddServlet extends HttpServlet {

	//? 회원등록화면
	@Override
	protected void doGet(HttpServletRequest request
		, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("doGet을 탄다");
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String htmlStr = "";
		                                                            
		htmlStr += "<!DOCTYPE html>";
		htmlStr += "<html>";
		htmlStr += "<head>";
		htmlStr += "<meta charset='UTF-8'>";
		htmlStr += "<title>회원 등록</title>";
		htmlStr += "</head>";
		htmlStr += "<body>";
		htmlStr += "<h1>회원등록</h1>";
		htmlStr += "<form action='./add' method='post'>";
		htmlStr += "이름: <input type='text' name='name'><br>";
		htmlStr += "이메일: <input type='text' name='email'><br>";
		htmlStr += "암호: <input type='password' name='password'><br>";
		htmlStr += "<input type='submit' value='추가'>";
		htmlStr += "<input type='reset' value='취소'>";
		htmlStr += "</form>";
		htmlStr += "</body>";
		htmlStr += "</html>";
		
		out.println(htmlStr);
	}

	// 데이터베이스에 데이터 추가, 회원정보 저장
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res)
			throws ServletException, IOException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "ezen";
		String password = "ezen12";
		
		// 서블릿에서 getParameter를 호출하면 기본적으로 ISO-8859 어쩌고로
//		인코딩된다 그런데 클라이언트가 보낸 문자를 영어라고 간주하고 유니코드로 변경하기 때문에 한글 깨짐
//		영어는 1, 한글은 3byte이다
		req.setCharacterEncoding("UTF-8");
		
		// 입력 매개변수의 값 가져오기
		String emailStr = req.getParameter("email");
		String pwdStr = req.getParameter("password");
		String nameStr = req.getParameter("name");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = 
					DriverManager.getConnection(url, user, password);
			
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
			
//			res.setContentType("text/html");
//			res.setCharacterEncoding("UTF-8");
//			
//			PrintWriter out = res.getWriter();
//			
//			String htmlStr = "";
//			
//			htmlStr += "<!DOCTYPE html>";
//			htmlStr += "<html>";
//			htmlStr += "<head>";
////		htmlStr += "<meta http-equiv='Refresh' content='3; url=list'>";
//			htmlStr += "	<title>회원등록결과</title>";
//			htmlStr += "</head>";
//			htmlStr += "<body>";
//			htmlStr += "	<p>등록 성공입니다!</p>";
//			htmlStr += "</body>";
//			htmlStr += "</html>";
//			
//			out.println(htmlStr);
//			
//			
//			res.addHeader("Refresh", "5; url=./list");
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
