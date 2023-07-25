<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DomEventBasic11.jsp</title>
<style type="text/css">
</style>

<script type="text/javascript">
	// 	@브라우저 객체의 종류
	// 	window
	// 		history		인터넷 방문 기록에 대한 정보를 제공하는 객체
	// 			(사용 금지)

	window.onload = function() {
// 		history객체
// 		브라우저로 방문한 페이지들의 정보를 제공하며
// 		함수를 사용하여 이전 및 다음과 같은 페이지 이동을 위한
// 		버튼을 만들 수 있다
		
// 		go(값): 값만큼 다음 또는 이전 페이지로 이동한다
// 		back(): 이전 페이지로 이동한다
// 		forward(): 다음 페이지로 이동한다
	};
	
</script>
</head>

<body>
	
	<h1>두 번째 페이지</h1>
	
	<div>
		<a href="DomEventBasic12.jsp">세 번째 페이지 이동</a>
		
		<input type="button" value="이전 페이지 이동"
			onclick="history.back();">
		<input type="button" value="다음 페이지 이동"
			onclick="history.go();">
		<input type="button" value="forward버튼?"
			onclick="history.forward();">
	</div>
	
	
	
</body>
</html>

