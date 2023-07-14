<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EventBasic3.jsp</title>
</head>

<body>
<!-- 	onclick 이벤트 -->
<!-- 	온클릭 이벤트 -->
	<button id='theBtn'>
		확인
	</button>
	
	
</body>

<script type="text/javascript">
// 	이벤트 분리형 방식
	function tempFnc() {
		alert('또다른 이벤트 등록 방법');
	}

	var theBtnObj = document.getElementById('theBtn');
	
	theBtnObj.onclick = tempFnc;
	
	
	
</script>

</html>

