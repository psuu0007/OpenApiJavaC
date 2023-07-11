<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptStringTest2.jsp</title>
</head>

<body>

	<div id='printTag' style='border: 1px solid black;'>
		
	</div>


</body>

<script type="text/javascript">
	var fixStr = '자바를 자바라';
	
// 	var afterStr = fixStr.replace(" 자바", " 잡아");

// 	var afterStr = fixStr.replaceAll('자바', '잡아');
// 	afterStr = afterStr.replace('잡아', '자바');

// 	var afterStr = fixStr.substring(0, 4) + '잡아'
// 					+ fixStr.substring(6, 7);
// 	'자바를 '+ + 잡아 + '라'
	var afterStr = fixStr.substring(0, 4) 
		+ fixStr.substring(4, 6).replace('자바', '잡아')
		+ fixStr.substring(6, 7);
	
// 	유효성 검사
// 	is? 
	
	var strObj = document.getElementById('printTag');

	strObj.innerHTML = afterStr;
// 	출력: 자바를 잡아라

	
</script>

</html>

