<%@page import="spms.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원 목록</title>

<script type="text/javascript">
	
</script>
</head>

<body>

	<jsp:include page="/Header.jsp"/>
	<h1>회원목록</h1>
	<p>
		<a href='./add'>신규 회원</a>
	</p>
<!-- 	scriptlet -->
	<%    
		ArrayList<MemberDto> memberList = 
			(ArrayList<MemberDto>)request.getAttribute("memberList");
	
		for(MemberDto memberDto : memberList){
			
		
	%>
<!-- 			expression -->
			<%=memberDto.getNo()%>,
			<a href='./update?no=<%=memberDto.getNo()%>'>
				<%=memberDto.getName()%>
			</a>
			, <%=memberDto.getEmail()%>
			, <%=memberDto.getCreateDate()%>,
			<a href='./delete?no=<%=memberDto.getNo()%>'>[삭제]</a>
			<br>
		<%
			}
		%>
	
	<jsp:include page="/Tail.jsp"/>
</body>
</html>