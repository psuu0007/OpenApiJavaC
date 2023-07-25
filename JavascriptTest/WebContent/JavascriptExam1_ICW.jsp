<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>
		JavascriptExam1.jsp
	</title>
	
	<script type="text/javascript"> 
		var inputObj = null;
		window.onload = function() {
			inputObj = document.getElementById("id_input");
			
			inputObj.setAttribute("value", "비밀번호를 입력해주세요");
			inputObj.setAttribute("style", "color: gray;");
		}	
	
		function inputFnc() {
			if (inputObj.value == "비밀번호를 입력해주세요") {
				inputObj.setAttribute("style", "color: black;");
				inputObj.value = "";
//	 			var bodyObj = document.getElementById("id_body");
				event.stopPropagation();
			}
			
		}
			
		function bodyTouch() {
			
			if (inputObj.value == "") {
				inputObj.value = "비밀번호를 입력해주세요";
// 				inputObj.setAttribute("value", "비밀번호를 입력해주세요");
				inputObj.setAttribute("style", "color: gray;");
			}
			
		}
		
	</script>
	
</head>
<body id="id_body" onclick="bodyTouch();">
	플레이스 홀더 구현하기
	<input type="text" value="" placeholder="아이디를 입력해주세요">
	
	<hr>	
	<hr>
	
	<input type="text" id="id_input" 
		onclick="inputFnc();" value="">
</body>

</html>
