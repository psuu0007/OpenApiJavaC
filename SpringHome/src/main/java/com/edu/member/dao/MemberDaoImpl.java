package com.edu.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<MemberDto> memberSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList("com.edu.member.memberSelectList", map);
	}

	@Override
	public MemberDto memberExist(String email, String password) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("email", email);
		paramMap.put("pwd", password);
		
		return sqlSession.selectOne("com.edu.member.memberExist", paramMap);
	}

	@Override
	public int memberInsertOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		
		return sqlSession.insert("com.edu.member.memberInsertOne", memberDto);
	}

	@Override
	public MemberDto memberSelectOne(int no) {
		// TODO Auto-generated method stub
		MemberDto memberDto = sqlSession.selectOne("com.edu.member.memberSelectOne", no);
		
		return memberDto;
	}

	@Override
	public void memberUpdateOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		sqlSession.update("com.edu.member.memberUpdateOne", memberDto);
	}

	@Override
	public int memberDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete("com.edu.member.memberDeleteOne", no);
	}
	
	@Override
	public int memberSelectTotalCount() {
		return (int)sqlSession.selectOne("com.edu.member.memberSelectTotalCount");
	}
	
}
