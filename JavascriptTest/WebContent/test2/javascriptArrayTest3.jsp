<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>javascriptArrayTest3</title>
</head>

<body>
	
	
	
</body>

<script type="text/javascript">
	var nameArr = new Array();
	
// 	구구단을 배열을 통해 구하시오

// 	배열 3개를 쓴다
	
// 	2 * 1 = 2
	
// 	1. 2~9까지 들어있는 배열
// 	2. 1 ~9까지 들어있는 배열
// 	3. 2*1 ~ 2*9까지 들어있는 배열

// 	행 열 숫자
	var rowNumber = 3;
	var colNumber = 7;
	
// 	1차원배열
	var numberArray = new Array(rowNumber);

// 	2차원배열
	for (var i = 0; i < rowNumber; i++) {
		numberArray[i] = new Array(colNumber);
	}
	
// 	배열에 입력
	for (var i = 0; i < rowNumber; i++) {
	    for (var j = 0; j < colNumber; j++) {
	    	numberArray[i][j] = i * colNumber + j;
		}
	}
	
// 	배열출력
	for (var i = 0; i < rowNumber; i++) {
	    for (var j = 0; j < colNumber; j++) {
	    	document.write(numberArray[i][j] + '\t');
		}
	    	document.write('<br>');
	}
	
</script>

</html>