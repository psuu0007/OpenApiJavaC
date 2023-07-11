<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptBasic9</title>
</head>

<body>

	<div id='printTag' style='border: 1px solid black;'>
		
	</div>


</body>

<script type="text/javascript">
	var fixStr = '자바를 자바라';
	
	var printTagObj = document.getElementById('printTag');
	
	var changeFixStr = fixStr.replaceAll('자바', 'db');
	
// 	printTagObj.innerHTML = '원본: ' + fixStr;
	printTagObj.innerHTML = '변경: ' + changeFixStr;
	
</script>

</html>

