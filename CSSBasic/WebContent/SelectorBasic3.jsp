<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SelectorBasic3.jsp</title>
	
	<style type="text/css">
		.colorGroup1{
			background-color: lime;
			font-size: 30px;
			border: 10px dashed red;
		}
		
		
	</style>
</head>

<body>

<!-- 	class 선택자 -->
<!-- 	class로 붙인 이름을 가져다 쓰는 선택자 -->
<!-- 		.을 통해 class 값을 구분한다	 -->


	<div class='colorGroup1'>
		장마
	</div>
	
	<div>
		장마2
	</div>
	
	<p id='foodpTag' class='colorGroup1'>
		배고프다 음식 내놔
	</p>
	
	<p class='colorGroup1'>
		배고프다 음식 내놔2
	</p>
</body>
</html>