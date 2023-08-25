<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<div style="background-color: #00008b; color: #ffffff; height: 20px;
	padding: 5px;">
	SPMS(Simple Project Management System)
	
	<c:if test="${sessionScope.member.email ne null}">
		
		<span style="float:right;">
			${member.name}님
			<a style="color: white;" 
				href="<%=request.getContextPath()%>/auth/logout.do">로그아웃</a>		 
		</span>
	
	</c:if>
	
</div>