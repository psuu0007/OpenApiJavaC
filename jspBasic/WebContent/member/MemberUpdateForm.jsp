<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 수정</title>
</head>
<body>
	
	<jsp:useBean 
		id="memberDto"
		scope="request"
		class="spms.dto.MemberDto"
		type="spms.dto.MemberDto"
	/>
	
	<jsp:include page="/Header.jsp"/>
	
	<h1>회원정보 수정</h1>
	<form action='./update' method='post'>
		번호: <input type='text' name='mNo' value='<%=memberDto.getNo()%>'
		readonly><br>
		이름: <input type='text' name='name' 
			value='<jsp:getProperty property="name" name="memberDto"/>'><br>
		이메일: <input type='text' name='email' value='<%=memberDto.getEmail()%>'><br>
		가입일: <jsp:getProperty property="createDate" name="memberDto"/><br>
		<input type='submit' value='저장'>
		<input type='button' value='삭제' 
			onclick='location.href="./delete?no=<%=memberDto.getNo()%>"'>
		<input type='button' value='취소' onclick='location.href="./list"'>
	</form>
	
	<jsp:include page="/Tail.jsp"/>
</body>
</html>
