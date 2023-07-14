<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptArrayTest1</title>

</head>

<body>



</body>

<script type="text/javascript">

	var danArr = new Array();
	var numArr = new Array();
	var mulArr = new Array();
	
	for (var i = 0; i < 8; i++) {
		danArr[i] = i+2;
	}
	
	for (var i = 0; i < 9; i++) {
		numArr[i] = i+1;
	}
	
	for (var i = 0; i < danArr.length; i++) {
		for (var j = 0; j < numArr.length; j++) {
			mulArr[i*9 + j] = danArr[i] * numArr[j];
		}
	}
	
	for (var i = 0; i < danArr.length; i++) {
		for (var j = 0; j < numArr.length; j++) {
			document.write(danArr[i] + "*" 
				+ numArr[j] + "=" + mulArr[i*9 + j]);
			document.write('<br>');
		}
		document.write('<hr>');
	}
// 	2차원 배열 수업하자
</script>

</html>

