<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	
	<h2>Text field</h2>
	<p>
		The <strong>input type="text"</strong>
		defines a one-line text input field:
	</p>
	
	<div id='validationCheck' style='border: 1px solid black;'>
		<form action="/action_page.php">
			<label for="fname">First name:</label>
			<br>
			<input type="text" id="fname" name="fname">
			<br>
			<label for="lname">Last name:</label>
			<br>
			<input type="text" id="lname" name="lname">
			<br>
			<br>
			<input type="button" value="실행버튼"
				onclick='inputValueValidationCheckFnc();'>
		</form>
	</div>
	
</body>

<script type="text/javascript">

	function inputValueValidationCheckFnc(){
		var fnameObj = document.getElementById('fname');
		var lnameObj = document.getElementById('lname');
		
		var fnameObjNumber = Number(fnameObj.value);
		var lnameObjNumber = Number(lnameObj.value);
		
		if(Number.isInteger(fnameObjNumber) == true){
			if(Number.isInteger(lnameObjNumber) == true){
				alert(fnameObjNumber + lnameObjNumber);
			}else{
				alert('두 번째 입력이 숫자가 아닙니다.');
			}
		}else{
			alert('첫 번째 입력이 숫자가 아닙니다.');
		}
		
	}
	
</script>

</html>