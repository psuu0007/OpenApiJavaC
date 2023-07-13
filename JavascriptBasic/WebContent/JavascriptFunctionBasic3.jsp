<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptFunctionBasic3.jsp</title>
</head>

<body>

	<h2>Text field</h2>
	<p>
		The <strong>input type="text"</strong> 
		defines a one-line text input field:
	</p>

	<label for="fname">First name:</label>
	<br>
	<input type="text" id="fname" name="fname" value="">
	
	<input type="button" value="실행버튼" 
		onclick="inputValueValidationCheckFnc();">

</body>

<script type="text/javascript">
	function inputValueValidationCheckFnc(){
		var fnameObj = document.getElementById('fname');
		
		console.log('fnameObj.value: ' + fnameObj.value);
		
		var userNum = fnameObj.value;
		
		userNum = Number(userNum);
		
		if(Number.isInteger(userNum) == true){
			alert(userNum + 10);
		}else{
			alert(userNum);
			alert('이 숫자가 아닙니다\n숫자를 다시 입력해주세요');
		}
		
	}
</script>

</html>

