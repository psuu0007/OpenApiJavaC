<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JavascriptBasic9</title>
</head>

<body id='root'>

	<div id='printTag' style='border: 1px solid black;'>
		
	</div>


</body>

<script type="text/javascript">
	var fixStr = '자바를 자바라';
	
	var afterStr = fixStr.replace("자바", "db");
	afterStr = afterStr.replace("자바", "db");
// 	var textFixStr = document.createTextNode(afterStr);
// 	strObj.appendChild(textFixStr);
	
	var strObj = document.getElementById('printTag');

	strObj.innerHTML = afterStr;
	
	
	document.getElementById('root').innerHTML = '<p>신기스</p>';
	
// 	fixStr에 주어진 문자열은 절대 변경하지 않는다
	
// 	div에 변경될 문자열을 출력한다
	
// 	변경될 문자열: db를 db라
	
</script>

</html>

