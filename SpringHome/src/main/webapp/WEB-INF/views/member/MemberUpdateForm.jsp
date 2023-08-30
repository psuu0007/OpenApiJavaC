<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 수정</title>
	
	<script type="text/javascript">
		function pageMoveListFnc() {
			location.href = "./list";
		}
		
		function pageMoveDeleteFnc(no) {
			var url = './delete.do?no=' + no;
			
			location.href = url;
		}
		
	</script>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<h1>회원정보 수정</h1>
	<form action='./updateCtr.do' method='post'>
		번호: 	<input type='text' name='no' value='${memberDto.no}' readonly><br>
		이름: 	<input type='text' name='name' value='${memberDto.name}'><br>
		이메일: 	<input type='text' name='email' value='${memberDto.email}'><br>
		가입일: <fmt:formatDate value="${requestScope.memberDto.createDate}" 
			pattern="YYYY-MM-dd hh:mm"/> <br>
			<input type='submit' value='저장'>
			<input type='button' value='삭제' onclick='pageMoveDeleteFnc(${memberDto.no});'>
			<input type='button' value='회원목록으로' onclick='pageMoveListFnc();'>
	</form>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
</body>
</html>
