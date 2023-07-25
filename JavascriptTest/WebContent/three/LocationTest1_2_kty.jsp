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
	
		var aTagObj = document.getElementById('aTag');
		aTagObj.setAttribute("style", "cursor: pointer");
		aTagObj.addEventListener('click', function(e) {
			e.preventDefault();
// 			history.back(); // 뒤로가기
			location.href = 'LocationTest1_1_kty.jsp';
	});
		
	var btnTagObj = document.getElementById('btnTag');
		
	btnTagObj.addEventListener('click', function(e) {
		location.href = 'LocationTest1_1_kty.jsp';
	});
		
}
</script>
</head>

<body>
<!-- 	<p id='btnTag'>여기가 다른 페이지</p> -->
	<p id='btnTag' 
		style='text-decoration: underline; color: purple;'>
		여기가 다른 페이지
	</p>
	
	<div style="border: 1px solid black;">
		<a id="aTag" href="https://www.naver.com/">
			나 누르면 이전 페이지로 돌아감
		</a>
	</div>
	
</body>
</html>

