package com.edu.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.member.dto.MemberDto;
import com.edu.member.service.MemberService;

@Controller
public class MemberController {

	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	// 로그인 화면으로 이동
	@RequestMapping(value = "/auth/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome MemberController login!");
		
		return "auth/LoginForm";
	}
	
	// 로그인 버튼 클릭시
	@RequestMapping(value = "/auth/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String email, String password
			, HttpSession session, Model model) {
		log.info("Welcome MemberController loginCtr! " + email + ", " + password);
		
		MemberDto memberDto = memberService.memberExist(email, password);
		
		String viewUrl = "";
		if(memberDto != null) {
//			회원이 존재하면 세션에 담는다
			session.setAttribute("member", memberDto);
			
			viewUrl = "redirect:/member/list.do"; 
		}else {
			viewUrl = "/auth/LoginFail";
		}
		
		return viewUrl;
	}
	
	// 로그아웃
	@RequestMapping(value = "/auth/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		log.info("Welcome MemberController logout!");
		
		session.invalidate();
		
		return "redirect:/auth/login.do";
	}
	
	
	@RequestMapping(value = "/member/list.do", method = RequestMethod.GET)
	public String memberList(Model model) {
		// Log4j 
		log.info("Welcome MemberController list!");
			
		List<MemberDto> memberList = memberService.memberSelectList();
		
		model.addAttribute("memberList", memberList);
		
		return "member/MemberListView";
	}
	
//	일반.do는 단순 페이지 이동
	@RequestMapping(value = "/member/add.do", method = RequestMethod.GET)
	public String memberAdd(Model model) {
		log.debug("Welcome MemberController memberAdd!");
		
		return "member/MemberForm";
	}
	
	
	@RequestMapping(value = "/member/addCtr.do", method = RequestMethod.POST)
	public String memberAdd(MemberDto memberDto, Model model) {
		log.debug("Welcome MemberController memberAdd! " + memberDto);
		
		int resultNum = memberService.memberInsertOne(memberDto);
		
		System.out.println("추가된 회원 데이터 수: " + resultNum);
		
		return "redirect:/member/list.do";
	}
	
	
}
