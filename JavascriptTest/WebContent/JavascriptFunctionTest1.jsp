<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>new document</title>
</head>
<body>


	<h2>Text field</h2>
	<p>The 
		<strong>input type="text"</strong> 
		defines a one-line text input field:
	</p>

	<div id="validationCheck" style='border: 1px solid black'>
		<form action="/action_page.php">
			<label for="fnum">First num:</label>
			<br> 
			<input type="text" id="fnum" name="fnum" value="">
			<br>
			<label for="lnum">Last num:</label>
			<br> 
			<input type="text" id="lnum" name="lnum">
			<br>
			<br> 
			<input type="button" value="실행버튼" onclick="inputValueValidationCheckFnc();">
		</form>
	</div>
</body>

<script type="text/javascript">
	
	function inputValueValidationCheckFnc() {
		var fnumObj = document.getElementById('fnum');
		var lnumObj = document.getElementById('lnum');
		
		console.log('fnumObj.value: ' + fnumObj.value);
		console.log('lnumObj.value: ' + lnumObj.value);
		
		var userFirstNum = fnumObj.value;
		var userLastNum = lnumObj.value;
		
		userFirstNum = Number(userFirstNum);
		userLastNum = Number(userLastNum);
		
		var result;
		
		if (Number.isInteger(userFirstNum) == true && Number.isInteger(userLastNum) == true) {
			result = userFirstNum + userLastNum;
		} else if(Number.isInteger(userFirstNum) == false && Number.isInteger(userLastNum) == false) {
			result = 'First num과 Last num에 입력한 값이 숫자가 아닙니다.\n다시 입력해주십시오.';
		} else if(Number.isInteger(userFirstNum) == false) {
			result = 'First num에 입력한 값이 숫자가 아닙니다.\n다시 입력해주십시오.';
		} else if(Number.isInteger(userLastNum) == false) {
			result = 'Last num에 입력한 값이 숫자가 아닙니다.\n다시 입력해주십시오.';
		}
		alert(result);
	}
	
</script>

</html>