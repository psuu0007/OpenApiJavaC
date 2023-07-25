<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<title>Insert title here</title>
	<script type="text/javascript">
	
		function dateshow() {
			var today = new Date();
			var todayStr = '';
			
			var todayMonth = today.getMonth();
			var todayDate = today.getDate();
			var todayYear = today.getYear();
			
			todayStr = (todayMonth + 1) + '/' + todayDate +
					'/' + (todayYear + 1900);
			
			var childInfoObj = 
				document.getElementById('childInfo');
			childInfoObj.value = todayStr;
		}
			
		
		function sendParent() {
			var childInfoObj 
				= document.getElementById('childInfo').value;
			var parentInfoObj 
				= window.opener.document
				.getElementById('parentInfo');
			
			parentInfoObj.innerHTML = childInfoObj;
		}
	</script>
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
</head>

<body onload=dateshow();>

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