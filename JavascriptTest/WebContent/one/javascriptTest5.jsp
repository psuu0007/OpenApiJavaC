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
			<span>국어 점수</span><input type="text" id="korScore" value="">
		</div>
		<div>
			<span>영어 점수</span><input type="text" id="engScore" value="">
		</div>
		<div>
			<span>수학 점수</span><input type="text" id="mathScore" value="">
		</div>
	</div>
	<br>
	
	<div id='sumTag' style="border: 1px solid red;">
		총점: ??? 
	</div>
	
	<div id='avgTag' style="border: 1px solid red;">
		평균: ???(소수점 2자리 까지) 
	</div>
	
	
	<br>
	<div style="border: 1px solid black;">
		<button id='runSumBtn' onclick='sumFnc();'>
			나 누루면 총점 나옴
		</button>
		<button id='runAvgBtn' onclick="avgFnc();">
			나 누루면 평균 나옴
		</button>
	</div>
</body>

<!-- 총 input 3개를 통해서 국영수 점수를 입력받는다 -->
<!-- 각 버튼을 누루면 -->
<!-- 총점과 평균을 구하시오 -->

<script type="text/javascript">

	function sumFnc(){
		
		var korScoreObj = document.getElementById('korScore');
		var engScoreObj = document.getElementById('engScore');
		var mathScoreObj = document.getElementById('mathScore');
		
		var korScore = Number(korScoreObj.value);
		var engScore = Number(engScoreObj.value);
		var mathScore = Number(mathScoreObj.value);
		
		var sumResultNum = korScore + engScore + mathScore;
		
		var sumTagObj = document.getElementById('sumTag');
		
		sumTagObj.innerHTML = '<p>' + sumResultNum + '</p>';
		
		return sumResultNum;
	}
	
	function avgFnc() {
		
		
		var sumResultNum = sumFnc();
		
		var avgResultNum = (Math.floor((sumResultNum/3) * 100)) / 100;
		
		var avgTagObj = document.getElementById('avgTag');
		
		avgTagObj.innerHTML = '<p>' + avgResultNum + '</p>';
	}
	
</script>

</html>


