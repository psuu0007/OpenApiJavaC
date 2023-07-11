<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptStringTest9-1</title>
</head>

<body>

	<div id='printTag' style="border: 1px solid black;">
	
	</div>


</body>

<script type="text/javascript">
	var fixStr = '자바를 자바라';
	
	var divObj = document.getElementById('printTag');
	//출력 자바를 잡아라
//1번째방법
// 	var fixStr1 = fixStr.replace("자바라", "잡아라");
// 	document.write(fixStr1);
//2번째방법
// 	var fixStr1 = fixStr.slice(0, 4);
// 	divObj.innerHTML = fixStr1.concat(" 잡아라"); 
//3번째방법
	var fixStrsplit = fixStr.split(" ");
	fixStrsplit[1] = fixStrsplit[1].replace('자바',' 잡아');
	divObj.innerHTML = fixStrsplit[0].concat(fixStrsplit[1]);

		

</script>


</html>

