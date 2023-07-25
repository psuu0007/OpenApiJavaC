<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DomEventBasic12.jsp</title>
<style type="text/css">
</style>

<script type="text/javascript">
	// 	@브라우저 객체의 종류
	// 	window
	// 		history		인터넷 방문 기록에 대한 정보를 제공하는 객체
	// 			(가능하면 사용 금지)

	window.onload = function() {

	};
	
</script>
</head>

<body>
	
	<h1>세 번째 페이지 여기가 마지막이라고 치자</h1>
	
	<div>
		<input type="button" value="이전 페이지 이동"
			onclick="history.back();">
		<input type="button" value="첫 페이지로 이동"
			onclick="history.go(-2);">
		<input type="button" value="forward버튼?"
			onclick="history.forward();">
	</div>
	
</body>
</html>

