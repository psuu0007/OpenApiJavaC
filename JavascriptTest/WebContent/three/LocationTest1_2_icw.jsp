<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LocationTest1_2.jsp</title>
<style type="text/css">
</style>

<script type="text/javascript">
	window.onload = function() {
		var backPage = document.referrer;
		var backWebPageObj = document.getElementById("backWebPage");
		
// 		backWepPageObj.removeAttribute("href");
		
		backWebPageObj.addEventListener("click"
				, function() {
			event.preventDefault();
			location.href = backPage;
		})
	};
</script>
</head>

<body>
	<p>
		여기가 다른 페이지
	</p>
	<div style="border: 1px solid black;">
		<a href="https://www.msn.com/" id="backWebPage">나 누르면 이전 페이지로 돌아감</a>
	</div>
	
</body>
</html>

