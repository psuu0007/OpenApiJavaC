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
						
	var divObj = document.getElementById('printTag');
	var fixStrList = fixStr.split(" ");
	document.write(fixStrList);
 	
	divObj.innerHTML = fixStrList[0].toUpperCase()+" "
		+fixStrList[1].replace('psu','you').toUpperCase()+" "
		+fixStrList[2].toLowerCase()+" "
		+fixStrList[3].toLowerCase()+'!!';
	
</script>

</html>

