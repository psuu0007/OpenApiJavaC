package com.edu.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.edu.member.dto.MemberDto;

public interface MemberService {

	List<MemberDto> memberSelectList(int start, int end);

	public MemberDto memberExist(String email, String password);
	public void memberInsertOne(MemberDto memberDto
		, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;
	
	public Map<String, Object> memberSelectOne(int no);
	
	public int memberUpdateOne(MemberDto memberDto
		, MultipartHttpServletRequest multipartHttpServletRequest
		, int fileIdx) throws Exception;
	
	public int memberDeleteOne(int no);
	public int memberSelectTotalCount();	
}
