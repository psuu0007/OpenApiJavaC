<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원 목록</title>

<script type="text/javascript">
	
</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	<h1>회원목록</h1>
	<p>
		<a href='./add.do'>신규 회원</a>
	</p>
	

	<c:forEach var="memberDto" items="${memberList}">

		${memberDto.no},
		<a href='./update.do?no=${memberDto.no}'>
			${memberDto.name}
		</a>
		, ${memberDto.email}		
		, <fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${memberDto.createDate}"/>
		<a href='./delete?no=${memberDto.no}'>[삭제]</a><br>
			
	</c:forEach>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
</body>
</html>