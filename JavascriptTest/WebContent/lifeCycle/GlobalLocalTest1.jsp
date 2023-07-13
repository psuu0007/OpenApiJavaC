<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>GlobalLocalTest1</title>
<script type="text/javascript">

	var globalNum = 10;
	globalNum2 = 20;
	var test = '전역 변수는 과연 선언하기 전에 사용할 수 있을가?';
	alert(test);
	
	function numbering() {
		globalNum3 = 30;
		var localNum = 40;
		
		document.write('globalNum= ' + globalNum + "<br>");
		document.write('globalNum2= ' + globalNum2 + "<br>");
		document.write('globalNum3= ' + globalNum3 + "<br>");
		document.write('localNum= ' + localNum + "<br>");
		
	}
	
	numbering();
</script>

</head>

<body>


</body>

<script type="text/javascript">
	numbering();
	
	
	
	function numberingOtherFnc() {
		document.write('와 아무대서나 선언하면 위아래 상관없네' + "<br>");
		
	}
	
	numberingOtherFnc();
</script>

</html>