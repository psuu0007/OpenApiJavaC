package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import spms.dto.MemberDto;

public class MemberDao {

	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	
	public List<MemberDto> selectList() throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT MNO, MNAME, EMAIL, CRE_DATE";
			sql += " FROM MEMBERS";
			sql += " ORDER BY MNO DESC";
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<MemberDto> memberList = new ArrayList<MemberDto>();
			
			int no = 0;
			String name = "";
			String email = "";
			Date creDate = null;
			
			while (rs.next()) {
				no = rs.getInt("MNO");
				name = rs.getString("MNAME");
				email = rs.getString("EMAIL");
				creDate = rs.getDate("CRE_DATE");
				
				MemberDto memberDto = new MemberDto(no, name, email, creDate);
				
				memberList.add(memberDto);
				
			}
			
			return memberList;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
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
		}
		
	} // 회원목록 끝
	
	// 회원등록
	public int memberInsert(MemberDto memberDto) throws Exception{
		int resultNum = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String email = memberDto.getEmail();
			String pwd = memberDto.getPassword();
			String name = memberDto.getName();
			
			String sql = "";
			
			sql += "INSERT INTO MEMBERS";
			sql += "(MNO, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE)";
			sql += "VALUES(MEMBERS_MNO_SEQ.nextval, ?, ?, ?";
			sql	+= ", SYSDATE, SYSDATE)";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, email);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			
			resultNum = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} //if 종료
		}
		
		return resultNum;
	}
	
	
//	회원삭제
	public int memberDelete(int no) throws SQLException {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		sql = "DELETE FROM MEMBERS";
		sql += " WHERE MNO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		} // finally 종료
		
		
		return result;
	}
	
	public MemberDto memberSelectOne(int no) throws Exception{
		MemberDto memberDto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		sql = "SELECT MNAME, EMAIL, CRE_DATE";
		sql += " FROM MEMBERS";
		sql += " WHERE MNO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			String mName = "";
			String email = "";
			Date creDate = null;
			
			if(rs.next()) {
				mName = rs.getString("MNAME");
				email = rs.getString("EMAIL");
				creDate = rs.getDate("CRE_DATE");
				
				memberDto = new MemberDto();
				
				memberDto.setNo(no);
				memberDto.setName(mName);
				memberDto.setEmail(email);
				memberDto.setCreateDate(creDate);
			}else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
			}
		} catch (Exception e) {
			// TODO: handle exception
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
			
		} //finally end
		
		return memberDto;
	}
	
	public int memberUpdate(MemberDto memberDto) throws Exception {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		sql = "UPDATE MEMBERS";
		sql += " SET EMAIL = ?, MNAME = ?, MOD_DATE = SYSDATE";
		sql += " WHERE MNO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, memberDto.getEmail());
			pstmt.setString(2, memberDto.getName());
			pstmt.setInt(3, memberDto.getNo());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally 종료
		
		return result;
	}
	
	
	public MemberDto memberExist(String email, String pwd) 
		throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		sql += "SELECT MNAME, EMAIL";
		sql += " FROM MEMBERS";
		sql += " WHERE EMAIL = ?";
		sql += " AND PWD = ?";
		
		String name = "";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			int colIndex = 1;
			
			pstmt.setString(colIndex++, email);
			pstmt.setString(colIndex, pwd);
			
			rs = pstmt.executeQuery();
			
			MemberDto memberDto = new MemberDto();
			
			if(rs.next()) {
				email = rs.getString("email");
				name = rs.getString("mname");
				
				memberDto.setEmail(email);
				memberDto.setName(name);
				
				return memberDto;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
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
		
		return null;
	}
}


