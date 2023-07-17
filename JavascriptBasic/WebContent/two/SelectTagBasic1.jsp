<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<form action="/action_page.php">
		<label for="cars">Choose a car:</label> 
		
		<select name="cars" id="cars" size="1">
			<option value="volvo">Volvo</option>
			<option value="saab">Saab</option>
			<option value="opel">Opel</option>
			<option value="audi">Audi</option>
			<option value="hy" selected="selected">아반떼</option>
		</select> 
		
		<br>
		<br> <input type="submit" value="Submit">
	</form>
</body>

<script type="text/javascript">
	
</script>

</html>