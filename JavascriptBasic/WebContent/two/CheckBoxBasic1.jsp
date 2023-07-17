<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>CheckBoxBasic1.jsp</title>
	<style type="text/css">
		div{
			border: 1px solid black;
			margin-bottom: 20px;
		}
	</style>
</head>

<body>
	<div>
		<form action="#">
			<input type="checkbox" id="html" name="fav_language"
			 value="HTML">html
		  <input type="checkbox" id="css" name="fav_language" 
			value="CSS" checked="checked">css
		  <input type="checkbox" id="javascript" name="fav_language" 
			value="JavaScript">JavaScript
			<input type="checkbox" name="fav_language" 
				value='자바'>java?
			<input type="checkbox" id="age1" name="age" value="30">30
			<input type="checkbox" id="age1" name="age" value="30">30
			<input type="checkbox" id="age1" name="age" value="30">30
		  <br>  
		</form>
	</div>
	
	<div>
		<p>Please select your age:</p>
		<input type="checkbox" id="age1" name="age" value="30">30
		<input type="checkbox" id="age2" name="age" value="60">60
		<input type="checkbox" id="age3" name="age" value="100">100
		<input type="submit" value="Submit">
	</div>
</body>

<script type="text/javascript">

</script>

</html>