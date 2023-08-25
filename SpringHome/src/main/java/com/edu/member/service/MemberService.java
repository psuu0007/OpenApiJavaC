package com.edu.member.service;

import java.util.List;

import com.edu.member.dto.MemberDto;

public interface MemberService {

	public List<MemberDto> memberSelectList();

	public MemberDto memberExist(String email, String password);
	public int memberInsertOne(MemberDto memberDto);
	
}
