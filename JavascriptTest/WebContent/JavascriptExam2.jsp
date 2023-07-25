<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
// 	토글
	function myFunction(x) {
		if(x.style.backgroundColor == 'yellow'){
			x.style.background = "white";	
		}else{
			x.style.background = "yellow";
		}
	}
	
	function myReverseFunction(x) {
		x.style.background = "white";
	}
</script>
</head>

<body>
	Enter your name:
	<input type="text" onfocus="myFunction(this)" 
		onblur="myReverseFunction(this)">
		
	<input type="text" onfocus="myFunction(this)" 
		onblur="myFunction(this)">
</body>
</html>