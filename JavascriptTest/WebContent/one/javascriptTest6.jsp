<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>javascriptTest5</title>
	
	
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
		총점: ???        평균: ???
		총점: 100               평균: 33.33(소수 3번째 자리에서 내림처리)
		총점: 120               평균: 33.33(소수 3번째 자리에서 내림처리)
		총점: 120               평균: 40.00(소수 3번째 자리에서 내림처리)
	</div>
	
	
	
	<br>
	<div style="border: 1px solid black;">
		<button id='runBtn'>
			나 누루면 총점 나옴
		</button>
		<button id='runBtn'>
			나 누루면 평균 나옴
		</button>
	</div>
</body>

<!-- 총 input 3개를 통해서 국영수 점수를 입력받는다 -->
<!-- 각 버튼을 누루면 -->
<!-- 총점과 평균을 구하시오 -->

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


