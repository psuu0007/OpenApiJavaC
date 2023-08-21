<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean 
	id="member"
	scope="session"
	class="spms.dto.MemberDto"
/>
    
<div style="background-color: #00008b; color: #ffffff; height: 20px;
	padding: 5px;">
	
	<%
		if(member.getEmail() != null){
		
	%>
	SPMS(Simple Project Management System)
	<span style="float:right;">
		<%=member.getName()%>님
		<a style="color: white;" 
			href="<%=request.getContextPath()%>/auth/logout">로그아웃</a>		 
		
	</span>
	
	<%
		}else{
			
	%>
	SPMS(Simple Project Management System)
	<span style="float:right;">
		게스트님
		<a style="color: white;" 
			href="<%=request.getContextPath()%>/auth/login">로그인 화면으로</a>		 
		
	</span>
	<%		
			
		}
	%>
	
</div>