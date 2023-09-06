<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 조회</title>
	
	<script type="text/javascript">
		function pageMoveListFnc() {
			location.href = "./list.do";
		}
		
		window.onload = function(){
			var memberNameInputObj = document.getElementById('memberName');
			
			memberNameInputObj.style.backgroundColor = '#E7E7E7';
		}
		
	</script>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
	<h1>회원정보</h1>
	<form action='./update.do' method='get'>
		<input type="hidden" name='no' value='${memberDto.no}'>
		이름: 	<input type='text' name='name' id="memberName" 
			value='${memberDto.name}' readonly="readonly"><br>
		이메일: 	<input type='text' name='email' 
			value='${memberDto.email}' readonly="readonly"><br>
		첨부파일:
		<c:choose>
			<c:when test="${empty fileList}">
				첨부파일이 없습니다.
			</c:when>
			<c:otherwise>
				<c:forEach var="row" items="${fileList}">
					<input type="button" value="이미지" name="file">${row.ORIGINAL_FILE_NAME}
					(${row.FILE_SIZE}kb)<br>
					<img alt="image not found" 
						src="<c:url value='/img/${row.STORED_FILE_NAME}'/>"><br>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
		
		가입일: <fmt:formatDate value="${requestScope.memberDto.createDate}" 
			pattern="YYYY-MM-dd hh:mm"/> <br>
			<input type='submit' value='수정하기'>
			<input type='button' value='이전페이지' onclick='pageMoveListFnc();'>
	</form>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
</body>
</html>
