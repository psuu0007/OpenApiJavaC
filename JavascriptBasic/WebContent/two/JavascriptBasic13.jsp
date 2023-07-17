<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptBasic13</title>
</head>

<body>




</body>

<script type="text/javascript">
// 	2차원 배열 선언법2
// 	var nameArr = [
// 		[1, 2], [3, 4], [5, 6]
// 	];
	
	var nameArr = new Array();
// 	int[][] numList = new int[3][2]; 
	nameArr[0] = new Array();
	nameArr[1] = new Array();
	nameArr[2] = new Array();
	
	nameArr[0][0] = 1;
	nameArr[0][1] = 2;
	nameArr[1][0] = 3;
	nameArr[1][1] = 4;
	nameArr[2][0] = 5;
	nameArr[2][1] = 6;
	
	document.write(nameArr[0][0]);
	document.write('<br>');
	
	document.write(nameArr[1][0]);
	document.write('<br>');
	
	document.write(nameArr[2][0]);
	document.write('<br>');
</script>

</html>

