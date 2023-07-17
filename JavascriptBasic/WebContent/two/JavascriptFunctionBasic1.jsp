<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JavascriptFunctionBasic1.jsp</title>
	</head>

<body>


	<button onclick="testFnc();">버튼</button>

</body>

<script type="text/javascript">
/* 	함수(function)란?
	일련의 실행문들을 메모리에 저장했다가 필요할 때
	해당 함수의 이름으로 호출하여 사용할 수 있다
	
	함수에도 내장형(기본형), 사용자 정의 함수가 있다
	
	기본적인 함수의 정의와 호출
	function 함수명(){ // 선언문
		실행문들;
	}
	
	함수명();		// 호출문 */
	
	function testFnc(){
		alert('hello javascript?');
	}
	
	testFnc();
	
</script>

</html>

