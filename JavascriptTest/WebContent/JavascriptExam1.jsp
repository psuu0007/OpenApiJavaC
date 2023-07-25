<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JavascriptExam1</title>
	<style type="text/css">
		#pwInput{
			color: gray;
		}
	</style>
	<script type="text/javascript">
	
		window.onload = function() {
			
			var pwObj = document.getElementById('pwInput');
			var pwStr = '비밀번호를 입력해주세요';
			
			pwObj.addEventListener('click', function() {
				if(pwObj.value == pwStr){
					pwObj.setSelectionRange(0, 0);
					pwObj.style.color = "gray";
				}
			});
			
// 			pwObj.addEventListener('focus', function() {
// 				pwObj.setSelectionRange(0,0);
// 				if(pwObj.value == pwStr){
// 					pwObj.setSelectionRange(0, 0);
// 				}
// 				pwObj.style.color = "black";
// 			});
			
			pwObj.addEventListener('blur', function() {
				if(pwObj.value == ''){
					pwObj.value = pwStr;
				}
				if(pwObj.value == pwStr){
					pwObj.style.color = "gray";
				}
			});
			
			pwObj.addEventListener('keydown', function() {
				if(pwObj.value == pwStr){
					pwObj.value = '';
				}
				pwObj.style.color = "black";
			});
			
			
		}
		
	</script>
</head>

<body>
	
<!-- 	플레이스홀더 구현하기 -->
	
	<input type="text" value="" placeholder="아이디를 입력해주세요">
	
	<hr>
	<hr>
	
	<input id="pwInput" type="text" value="비밀번호를 입력해주세요">
	
</body>
</html>

