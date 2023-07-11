<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>javascriptTest9</title>
</head>

<body>

	<div id='printTag' style="border: 1px solid black;">
	
	</div>

</body>

<script type="text/javascript">
	var fixStr = '자바를 자바라';
	
// 	출력: 자바를 잡아라
// 	욕설
// 	이력서
// 	자바랄
	var divTag = document.getElementById('printTag');
	
	var fixStrList = fixStr.split(" ");
	var fixStrObj = fixStrList[1]
		.replace(fixStrList[1].substring(0, 2), " 잡아");
	
	var fixStr2 = fixStrList[0] + fixStrObj;
	
	divTag.innerHTML = fixStr2;
	
</script>

</html>


