<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptBasic5</title>

<style type="text/css">
	img{
		width: 50px;
		height: 50px;
	}
</style>
</head>

<body>

	<button id="btn" onclick="btn();">나 누르면 현재 날짜에 해당하는 이미지 변경하기</button>
	<!-- 	버튼 누르면 내가 설정한 날짜가 화요일이면 -->
	<!-- 	화요일의 이미지 크기와 높이가 200px로 변경 -->
	<!-- 	다음에 토요일 값 변경하고 버튼 누르면 -->
	<!-- 	토요일의 이미지 크기와 높이가 200px로 변경하는 기능을 구현하시오 -->

	<div id='weekClac'>
		<img alt="일" src='./images/s1.png'>
		<img alt="월" src="./images/m1.png">
		<img alt="화" src="./images/t1.png">
		<img alt="수" src="./images/w1.png">
		<img alt="목" src="./images/th1.png">
		<img alt="금" src="./images/f1.png">
		<img alt="토" src="./images/s2.png">
	</div>
	
</body>

<script type="text/javascript">
	
	function btn(){
		var divList = document.getElementById('weekClac').children;
		var randNum = Math.floor(Math.random()*7);
// 		var today = new Date();
// 		var nowDay = today.getDay();
// 		divList[nowDay].setAttribute('style', 'width: 200px; height: 200px');

// 		document.write("<img src='" + divList[randNum].src + "'>");
		document.write("<img src=" + divList[randNum].src + ">");

		
		document.getElementsByTagName('img')[0]
			.setAttribute('style', 'width: 200px; height: 200px');
		
	}
	
	
	
// 	document.write("<h1>현재날짜/시간 정보</h1>")
// 	var today = new Date();
// 	var nowMonth = today.getMonth() + 1; //현재 월  (0~11)
// 	var nowDate = today.getDate(); //현재 일
// 	var nowDay = today.getDay(); //현재 요일 (0:일요일~6:토요일)
// 	var nowHours = today.getHours(); //현재 시간
// 	var nowMinutes = today.getMinutes(); //현재 분
// 	var nowSeconds = today.getSeconds(); //현재 초
// 	var nowTime = today.getTime(); //1970년1월1일부터 밀리초 경과된 시간

// 	document.write("월: " + nowMonth + "<br />");
// 	document.write("일: " + nowDate + "<br />");
// 	document.write("요일: " + nowDay + "<br />");
// 	document.write("시: " + nowHours + "<br />");
// 	document.write("분: " + nowMinutes + "<br />");
// 	document.write("초: " + nowSeconds + "<br />");
// 	document.write("경과시간: " + nowTime + "<br />");

// 	document.write("<h1>날짜 바꾸기</h1>")
// 	today.setMonth(11); //월을 12월로 지정
// 	today.setDate(25); //일을 25일로 지정

// 	document.write("월: " + nowMonth + "<br />");
// 	document.write("일: " + nowDate + "<br />");
	
	
</script>

</html>

