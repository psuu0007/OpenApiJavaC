<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptStringTest9</title>
</head>

<body>

	<div id='printTag' style="border: 1px solid black;">
	
	</div>

</body>

<script type="text/javascript">
	var fixStr = '문자열 안에서 마지막 문자가 무엇인지 출력하시오(자바를 자바라)';
// 	라 가 출력되게하시오
	var divObj = document.getElementById('printTag');
// 	document.write(fixStr.length); 35확인
//1 번째
// 	divObj.innerHTML = fixStr.charAt(fixStr.length-2);

//2번째
// 	divObj.innerHTML = fixStr
// 		.substring(fixStr.length-2, fixStr.length-1);
//3번째
// 	divObj.innerHTML = fixStr
// 		.slice(fixStr.length-2, fixStr.length-1);
</script>


</html>

