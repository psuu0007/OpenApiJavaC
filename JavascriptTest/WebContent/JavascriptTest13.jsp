<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptTest13</title>
</head>

<body>




</body>

<script type="text/javascript">
	
//	2차원 배열 선언법 
	
	var nameArr = new Array();
	//int[][] nameArr = new Array();
	nameArr[0] = new Array();
	nameArr[1] = new Array();
	nameArr[2] = new Array();
	
// 	nameArr[0][0] = 1;
// 	nameArr[0][1] = 2;
// 	nameArr[1][0] = 3;
// 	nameArr[1][1] = 4;
// 	nameArr[2][0] = 5;
// 	nameArr[2][1] = 6;
	
// 	document.write(nameArr[0][0]);
// 	document.write('<br>');
	
// 	document.write(nameArr[1][0]);
// 	document.write('<br>');
	
// 	document.write(nameArr[2][0]);
// 	document.write('<br>');
// 	입력

	var nameArr = new Array();
	//int[][] nameArr = new Array();
	
	for (var i = 0; i < 3; i++) {
		nameArr[i] = new Array();
	}
	
	
	
//입력
	for (var i = 0; i < 3; i++) {
		for (var j = 0; j < 2; j++) {
			nameArr[i][j] = (i*2)+(j+1);
		}
	}
	
// 	출력
	for (var i = 0; i < nameArr.length; i++) {
		for (var j = 0; j < nameArr[i].length; j++) {
			document.write(nameArr[i][j]);
			document.write('<br>');
		}
	}
</script>

</html>

