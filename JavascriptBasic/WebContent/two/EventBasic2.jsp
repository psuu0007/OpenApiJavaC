<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EventBasic2.jsp</title>
</head>

<body>
<!-- 	onclick 이벤트 -->
<!-- 	온클릭 이벤트 -->
	<img src="./images/img2.jpg" ondblclick="eventFnc();" alt="흠" >
	
	
</body>

<script type="text/javascript">
	function eventFnc() {
		alert('이벤트란 무엇인가?');
	}

// 	이벤트 핸들러 사용법

// 	관련있는 태그에서 on으로 시작하는 속성은 전부 이벤트들이다 
// 	<button onclick="수행할 스크립트문">버튼</button>
	
	
</script>

</html>

