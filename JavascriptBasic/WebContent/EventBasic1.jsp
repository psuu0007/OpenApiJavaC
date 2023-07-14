<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EventBasic1.jsp</title>
</head>

<body>
<!-- 	onclick 이벤트 -->
<!-- 	온클릭 이벤트 -->
	<img src="./images/img1.jpg" onclick="eventFnc();" alt="흠" >
	
	
</body>

<script type="text/javascript">
	function eventFnc() {
		alert('이벤트란 무엇인가?');
	}
	
	/* @@이벤트(Event)
	
	우리가 사용하는 브라우저들은 사용자가 띄운 웹 문서를 그 구성과 내용에
	맞게 객체화하여 각 태그별로 구조화한다
	
	각 태그들은 상.하위 구조나 병렬구조 등으로 체계화되는데
	이렇게 정리된 체계를 DOM이라고 부른다
	
	이들이 각 태그와의 상호작용을 가능하게 해주면 웹 페이지가 보다
	인터렉티브하게 작동하게 된다
		
	이런 상호작용을 일으키게 도와주는 방법이 이벤트이다
	Event는 웹 브라우저에서 일어나는 모든 행동들을 이벤트라고 부른다
	
	특정 이벤트가 발생하는 시점에서 함수를 호출하거나 스크립트를 실행하게
	하는 요소를 '이벤트 handler'라고 부른다 */
// 					다루다?
	
	
</script>

</html>

