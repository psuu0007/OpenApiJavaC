<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ParentWindowTest2</title>
	
<!-- 	window객체는 모든 객체의 최상위 객체이다 -->
<!-- 	새 창을 생성하는 역할등을 한다 -->
<!-- 	팝업 기능? -->

	<style type="text/css">
		#temp{
			background: #FF0064;
		}
	</style>
	<script type="text/javascript">
		var optionStr = '';
		
		optionStr = 'width=500px, height=800px, left=200px';
		optionStr += ', top=20px, scrollbars=yes, toolbar=yes';
		optionStr += ', location=yes';
		
		function childWinCallFnc() {
			window.open("./ChildWindowBasic2.jsp" 
					,"myWin", optionStr);
		}
	</script>

</head>

<body>
	<h1>내가 parent다</h1>
	
	<div>
		<input type="text" id='userInput' value="">
		
		<input type="button" id='temp'
		 onmouseleave="childWinCallFnc();" value="오픈업!">
	</div>
	
</body>
</html>

