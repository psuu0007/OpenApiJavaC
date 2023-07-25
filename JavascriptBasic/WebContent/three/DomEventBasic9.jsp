<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DomEventBasic9.jsp</title>
<style type="text/css">
</style>

<script type="text/javascript">
	// 	@브라우저 객체의 종류
	// 	window
	// 		location	위치(url)관련 정보를 제공하는 객체
	// 		history		인터넷 방문 기록에 대한 정보를 제공하는 객체
	// 			(가능하면 사용 금지)

	window.onload = function() {
		var pageChangeBtnObj 
			= document.getElementById('pageChangeBtn');
		
		pageChangeBtnObj.addEventListener('click', function(e) {
			alert('음 이런 느낌이구만?');
			
// 			location.href = './DomEventBasic8.jsp';
			location.href = 'https://www.google.com/';
		});
	};
	
</script>
</head>

<body>
	
	<button id='pageChangeBtn'>
		호 location이 그리 중요하다고?
	</button>
	
</body>
</html>

