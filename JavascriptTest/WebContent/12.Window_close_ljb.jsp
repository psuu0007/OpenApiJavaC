<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
	<style type="text/css">
	img {
		width: 300px;
		height: 300px;
	}
	
	#rootContainer {
	    margin: auto;
	    width: 50%;
	    border: 3px solid green;
	    padding: 10px;
	}
	</style>
	
	<script type="text/javascript">
		
		var today = new Date();
		var nowMonth = today.getMonth() + 1;    //현재 월  (0~11)
		var nowDate = today.getDate();            //현재 일
		var nowYear = today.getYear() + 1900;
		var dateStr = nowMonth + '/' + nowDate + '/' + nowYear;
		
		function dateshow() {
			alert(today);
			var childObj = document.getElementById('childInfo');
			childObj.setAttribute('placeholder', dateStr);

		}
		
		function sendParent() {
			var childObj = document.getElementById('childInfo');
			
			var parentObj = window.opener.document
				.getElementById('parentInfo');
			
			parentObj.innerHTML = childObj.value;
			window.close();
		}
		
		window.onload = function() {
			var childObj = document.getElementById('childInfo');
			
			function onFocusFnc() {
				alert('1234');
				childObj.setAttribute('placeholder', dateStr);
			}
			childObj.addEventListener('onfocus', onFocusFnc());
		}
	</script>
</head>
<body>
	<div id='rootContainer'>
		<img src="./images/img7.jpg">
		<form>
			<input type="button" value="부모창 정보 전달" 
				onclick="sendParent();">
			<input type="text" id='childInfo' 
				value="부모창으로 정보 전달">
		</form>
	</div>
</body>
</html>