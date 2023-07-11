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
// 	THANK YOU very much
	
	var pringTagObj = document.getElementById('printTag');
	
	var fixStrSplit = fixStr.split(" ");
	
	var fixStrSplit1 = fixStrSplit[0].toUpperCase();
	var fixStrSplit2 = fixStrSplit[1].replace('psu','you')
		.toUpperCase();
	var fixStrSplit3 = fixStrSplit[2].toLowerCase();
	var fixStrSplit4 = fixStrSplit[3].toLowerCase() + "!!";
	
	var changedFixStr = fixStrSplit1 + ' ' + fixStrSplit2 + ' ' 
						+ fixStrSplit3 + ' ' + fixStrSplit4;
						
	pringTagObj.innerHTML = changedFixStr;						
	
// 	출력: THANK YOU very much!!		
						
		
	
	
	
</script>

</html>

