package com.edu.member.dao;

import java.util.List;

import com.edu.member.dto.MemberDto;

public interface MemberDao {
	
	public List<MemberDto> memberSelectList();

	public MemberDto memberExist(String email, String password);
	public int memberInsertOne(MemberDto memberDto);
	public MemberDto memberSelectOne(int no);
	
	public void memberUpdateOne(MemberDto memberDto);

	public int memberDeleteOne(int no);
	
}
