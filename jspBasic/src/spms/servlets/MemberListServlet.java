package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/member/list")
public class MemberListServlet extends GenericServlet{

	@Override
	public void service(ServletRequest req, 
		ServletResponse res) 
		throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		특정 데이터베이스와 연결정보를 가지는 인터페이스
		Connection conn = null;
//		SQL query문을 DB에 전송하는 방법이 정의된 인터페이스
		Statement stmt = null;
//		select 구문 실행 결과를 조회할 수 있는 인터페이스
		ResultSet rs = null;
		
//		사용할 JDBC 드라이버/ 드라이버타입# 서버주소와 포트번호& db서비스 아이디
//		jdbc:oracle/ thin# @localhost:1521& xe
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "ezen";
		String password = "ezen12";
		
		try {
			// 1.jdbc드라이버 로드 (객체 생성 같은 거임)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
//			2.데이터베이스 연결
			conn = 
				DriverManager.getConnection(url, user, password);
//			상태? crud할수있는 sql객체
//			3.statement 객체 생성
			stmt = conn.createStatement();
			
			String sql = "SELECT MNO, MNAME, EMAIL, CRE_DATE"
					+ " FROM MEMBERS"
					+ " ORDER BY MNO DESC";
			// 4.sql문 수행(전송)
			// 5.sql문 결과 받기
			rs = stmt.executeQuery(sql);
			
//			출력할 데이터의 인코딩 형식과 문자 집합을 지정한다
			res.setContentType("text/html");
			// 출력할 데이터의 문자 집합을 지정한다 -> 유니코드 값을 UTF-8로 데이터를 출력할 때 변환한다
			res.setCharacterEncoding("UTF-8");
			//클라이언트로 출력할 수 있도록 출력 스트림 객체를 반환한다
			PrintWriter out = res.getWriter();
			
			out.println("<html><head><title>회원목록</title></head>");
			out.println("<body><h1>회원목록</h1>");
			
			String htmlStr = "";
			
			htmlStr += "<p>";
			htmlStr += "<a href='./add'>";
			htmlStr += "신규 회원";
			htmlStr += "</a>";
			htmlStr += "</p>";
			
			out.println(htmlStr);
			
			while(rs.next()) {
				out.println(rs.getInt("MNO") + ", " + 
							"<a href='./update?mNo=" + 
							 	rs.getInt("MNO") +
							"'>" +
							rs.getString("MNAME") + "</a>, " +
							rs.getString("EMAIL") + ", " +
							rs.getDate("CRE_DATE") + "<br>"
				);
			}
			out.println("</body></html>");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
//			6.자원 연결 해제 (메모리 회수)
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(stmt != null) {
				try {
					stmt.close();
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
			
		} // 파이날 끝
		
	} // service 메서드 끝
	
}
