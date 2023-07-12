<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptBasic10</title>
</head>

<body>




</body>

<script type="text/javascript">
// 	배열 선언법1
	var nameArr = [1, 2, 3, 4, 10, 'sad'];
	
	for (var i = 0; i < nameArr.length; i++) {
		document.write(nameArr[i]);
		document.write('<br>');
	}
	
	document.write('<hr>');
// 	nameArr.sort();
	nameArr.push('오호라');
	nameArr[7] = 999;
	nameArr[2] = 999;
	nameArr[nameArr.length] = -999;
	
	for (var i = 0; i < nameArr.length; i++) {
		document.write(nameArr[i]);
		document.write('<br>');
	}
	
</script>

</html>

