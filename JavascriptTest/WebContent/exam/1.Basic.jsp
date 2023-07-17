<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<!-- 외부 선언문 -->
<!-- 자바스크립트를 파일안에서 기술하는 것을 내부형 -->
<!-- 스크립트 문장이 별도의 파일(*.js)로 작성한 뒤 이를 불러오는 방식이 외부형 방식이다 -->

<!-- -외부형의 장점은 코드가 분리되어 관리가 편하다 -->
<!-- -소스를 숨길 수 있다 -->
<!-- -라이브러리(library) 언어를 사용할 수 있다 -->

<script type="text/javascript" src="./js/basic.js"></script>

<style type="text/css">
	table {
		border-collapse: collapse;
	}
	
	table, tr, td{
		border: 1px solid black;
	}
</style>

<script type="text/javascript">
	function showVal() {
		alert("일반 함수 호출");
	}
</script>
</head>
<body>
	<table>
		<tr>
			<td onclick="javascript:alert('신나는 자바스크립트');">
				1) 함수를 선언하지 않고 '신나는 자바스크립트' 알림창 뛰우기
			</td>
		</tr>
		<tr>
			<td onclick="showVal();">
				2) 같은 파일 안에서 함수 선언후 '일반 함수 호출' 알림창 뛰우기
			</td>
		</tr>
		<tr>
			<td onclick="linktest();">
				3) 다른 파일에 선언되어 있는 함수를 호출하여 '외부 함수 호출' 알림창 뛰우기
			</td>
		</tr>
		<tr>
			<td onclick="newExternalFnc();">
				4) js폴더에 myJs.js 파일을 만들고 이 곳에 있는 함수를 호출하여
				알림창을 뛰우시오. (외부 함수 호출 이런 느낌이구만?)
			</td>
		</tr>
	</table>
</body>
</html>