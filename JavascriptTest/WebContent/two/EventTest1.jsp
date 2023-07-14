<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EventBasic2</title>
</head>

<body>
	
	<div id='myTag'>
		<img src="./images/racoonMan.jpg" onmousemove="bigImgFnc();" 
			onmouseout="nomalImgFnc();" alt="너굴맨" >
<!-- 		이미지 태그가 존재한다 -->
<!-- 		크기 높이는 동일하며 100정도한다. -->
<!-- 		마우스가 올라가면 약 10% 크게 -->
<!-- 		마우스가 내려가면 다시 원래 크기로 돌아가게 한다. -->
	</div>
	
</body>

<script type="text/javascript">
	
	var myTagObj = document.getElementById('myTag');
	
	var imgObjList = myTagObj.getElementsByTagName('img');
	
 	function bigImgFnc() {
		imgObjList[0].setAttribute('style', 
			'width: 640px; height: 316px;');
 	}
	
	function nomalImgFnc() {
		imgObjList[0].setAttribute('style', 
			'width: 320px; height: 158px;');
	}

</script>

</html>