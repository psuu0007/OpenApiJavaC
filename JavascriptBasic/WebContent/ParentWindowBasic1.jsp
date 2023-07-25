<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ParentWindowBasic1</title>
	
<!-- 	window객체는 모든 객체의 최상위 객체이다 -->
<!-- 	새 창을 생성하는 역할등을 한다 -->
<!-- 	팝업 기능? -->

	<script type="text/javascript">
		var optionStr = '';
		
		optionStr = 'width=500px, height=800px, left=200px';
		optionStr += ', top=20px, scrollbars=yes, toolbar=yes';
		optionStr += ', location=yes';
		
// 		새 창으로 문서를 열 때 사용
// 		open('경로', 'window 이름', '옵션들')
		
		
		
			
// 		window.open("https://www.naver.com/" 
// 				,"naver", optionStr);

		function popUpFnc() {
			window.open("./ChildWindowBasic1.jsp" 
					,"myWin", optionStr);
		}
	</script>

</head>

<body>
	<h1 onclick="popUpFnc();">오프너페이지</h1>
	
	
	
</body>
</html>

