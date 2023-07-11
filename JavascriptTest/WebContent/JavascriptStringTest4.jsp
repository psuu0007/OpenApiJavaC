<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptStringTest4.jsp</title>
</head>

<body>

	<div id='printTag' style='border: 1px solid black;'>
		
	</div>


</body>

<script type="text/javascript">
	var fixStr = 'thank psu Very MUCH';
	
// 	출력: THANK YOU very much!!
	
// 	슬라이스와 substring의 차이 알게됨
// 	슬라이스는 배열을 분리하는 것
	
// 	substring은 문자열을 분리하는 것

	var strList = ['aaa', 'bbb', 'ccc', 'ddd'];
	
	var str = 'aaabbbcccddd'.substring(2, 4);
	
	alert(str);
	
	var strArr = strList.slice(2, 4);
	
	for (var i = 0; i < strArr.length; i++) {
		alert(strArr[i]);
	}
	
</script>

</html>

