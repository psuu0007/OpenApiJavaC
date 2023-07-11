<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>javascriptBasic5</title>
	
	
</head>

<body>

	<div style="border: 1px solid black;">
		<div>
			<span>첫번째 값</span><input type="text" id="firstNum" value="">
		</div>
		<div>
			<span>두번째 값</span><input type="text" id="secondNum" value="">
		</div>
	</div>
	<br>
	
	<div id='resultTag' style="border: 1px solid red;">
		결과
	</div>
	
	<br>
	<div style="border: 1px solid black;">
		<button id='runBtn' onclick="twoNumberCalcFnc();">
			나 누루면 작동됨
		</button>
	</div>
</body>

<script type="text/javascript">
// method
// 함수
	function twoNumberCalcFnc(){
		var firstNumObj = document.getElementById('firstNum');
		var secondNumObj = document.getElementById('secondNum');
		
// 		alert('1번째 경고창: ' + firstNumObj);
// 		alert('2번째 경고창: ' + secondNumObj);
		
// 		alert('3번째 경고창: ' + firstNumObj.value);
// 		alert('4번째 경고창: ' + (firstNumObj.value + secondNumObj.value));
		
		var firstNum = Number(firstNumObj.value);
		var secondNum = parseInt(secondNumObj.value);
		
		var sumResultNum = firstNum + secondNum;
		
// 		alert('결과: ' + sumResultNum);
		
		var resultTagObj = document.getElementById('resultTag');
		
// 		resultTagObj.textContent = '<p>' + sumResultNum + '</p>';
		
		resultTagObj.innerHTML = '<p>' + sumResultNum + '</p>';
		
	}
	
</script>

</html>


