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

	<div id="validationCheck" style="border: 1px solid black;">
		<form action="#">
	  		<label for="fname">First name:</label>
	  		<br>
			<input type="text" id="fname" name="fname">
			<br>
			<label for="lname">Last name:</label>
			<br>
			<input type="text" id="lname" name="lname">
			<br>
			<br>
			<input type="button" value="실행버튼">
		</form>
	</div>

</body>

<script type="text/javascript">
	var num = 1;
	function nextGallery() {
		num++;
		if (num > 7)
			num = 1;
		document.getElementById("gallery").src 
			= "images/img" + num + ".jpg";
		return false
	}

	function prevGallery() {
		num--;
		if (num < 1)
			num = 7;
		document.getElementById("gallery").src 
			= "images/img" + num + ".jpg";
		return false
	}
</script>

</html>

