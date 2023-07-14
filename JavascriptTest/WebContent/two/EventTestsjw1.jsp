<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EventBasic2</title>
	<style type="text/css">
   		img{
   			width: 100px;
   			height:100px;
   		}
   	</style>	
</head>

<body>

	
	<div id='myTag'>
		
		<img onmouseover="bigImg()" onmouseout="normalImg()" 
			src = "./images/tuseday.png" alt="다미">
	</div>
	
	
	
</body>

<script type="text/javascript">
	var divObj = document.getElementById('myTag');
	var imgObj = divObj.children[0];
	
	function bigImg() {
		
// 		imgObj.style.height = "300px"; 
// 		imgObj.style.width = "300px";
		imgObj.style.height = parseInt(imgObj.style.height)*1.1+"px";
		imgObj.style.width = parseInt(imgObj.style.width)*1.1+"px";
	}
	
	function normalImg() {
			
		imgObj.style.height = "100px";
		imgObj.style.width = "100px";
	}
// 이미지 태그가 존재한다
// 크기 높이는 동일하며 100정도한다
// 마우스가 올라가면 약 10퍼크게
// 마우스가 내려가면 다시온래크기로 돌아가게 하라
</script>
</html>