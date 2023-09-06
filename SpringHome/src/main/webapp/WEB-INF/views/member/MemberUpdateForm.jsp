<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 수정</title>
	
<script type="text/javascript" 
	src="/SpringHome/resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("a[id^='delete']").on("click", function(e){
		e.preventDefault();
		
		deleteFile($(this));
	});
});

function deleteFile(obj){
	obj.parent().remove();
}

function addFileFnc(){
	var obj = $('#fileContent');
	
	var htmlStr = "";
	
// 	alert(obj);
	
	htmlStr += '<div>';
	htmlStr += '<input type="hidden" id="fileIdx" name="fileIdx" value="">';
	htmlStr += '<input type="file" id="file0" name="file0" value="">';
	htmlStr += '<a href="#this" id="delete0" onclick="addFileFnc();">삭제</a><br>';
	htmlStr += '</div>';
	
	obj.html(htmlStr);
	
	$('a[id^="delete"]').on('click', function(e){
		e.preventDefault();
		deleteFile($(this));
	});
	
}

function pageMoveListFnc() {
	location.href = "./list.do";
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
	<form action='./updateCtr.do' method='post' enctype="multipart/form-data">
		<input type="hidden" name='no' value='${memberDto.no}'>
		이름: 	<input type='text' name='name' value='${memberDto.name}'><br>
		이메일: 	<input type='text' name='email' value='${memberDto.email}'><br>
		비밀번호: <input type="password" name="password" value=""
			required="required"><br>
		
		첨부파일:
		<div id='fileContent'>
			<div>
			<c:choose>
				<c:when test="${empty fileList}">
					<input type="hidden" id="fileIdx" name="fileIdx" value="">
					<input type="file" id="file0" name="file0" value="">
					<a href="#this" id="delete0" onclick="addFileFnc();">삭제</a><br>
				</c:when>
				<c:otherwise>
					<c:forEach var="row" items="${fileList}" varStatus="obj">
						<input type="hidden" id="fileIdx_${obj.index}"
						 	name="fileIdx" value="${row.IDX}">
						 <img alt="image not found" 
						 	src="<c:url value='/img/${row.STORED_FILE_NAME}'/>"><br>
						 ${row.ORIGINAL_FILE_NAME} 
						<input type="file" id="file_${obj.index}" 
							name="file_${obj.index}">
						(${row.FILE_SIZE}kb) 
						<a href="#this" id="delete_${obj.index}">삭제</a><br>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</div>
		</div>
			
		가입일: <fmt:formatDate value="${requestScope.memberDto.createDate}" 
			pattern="YYYY-MM-dd hh:mm"/> <br>
			
			<input type='button' value='파일추가' onclick='addFileFnc();'>
			<input type='submit' value='저장하기'>
			<input type='button' value='삭제하기' 
				onclick='pageMoveDeleteFnc(${memberDto.no});'>
			<input type='button' value='뒤로가기 구현해보자'>
			<input type='button' value='회원목록으로' onclick='pageMoveListFnc();'>
	</form>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
</body>
</html>
