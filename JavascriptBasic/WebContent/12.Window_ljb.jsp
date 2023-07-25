<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>window_open()</title>
	<style type="text/css">
		img {
			width: 500px;
			height: 500px;
		}
	</style>

	<script type="text/javascript">
		function mover() {
			window.open("./12.Window_close_ljb.jsp", "Win", 
					'width=700px, height=700px');
		}
	</script>
</head>

<body onLoad="alert('이미지에 마우스를 올려보세요')">
	<img src="./images/img2.jpg" onmouseover="mover();">
	
	<div id='parentInfo'>
		현재 월/일/년도가 이곳에 나오도록 하시오.
		ex) 11/28/2016
	</div>
</body>
</html>