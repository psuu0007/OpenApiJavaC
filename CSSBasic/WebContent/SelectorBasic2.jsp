<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SelectorBasic2.jsp</title>
	
	<style type="text/css">
		#divRain{
			background-color: lime;
			font-size: 30px;
		}
		
		#foodpTag{
			border: 1px solid black;
		}
	</style>
</head>

<body>

<!-- 	id 선택자 -->
<!-- 	id로 붙인 이름을 가져다 쓰는 선택자 -->
<!-- 		#을 통해 id를 구분한다	 -->

	<div id="divRain">
		장마
	</div>
	
	<div>
		장마2
	</div>
	
	<p id='foodpTag'>
		배고프다 음식 내놔
	</p>
	
	<p>
		배고프다 음식 내놔2
	</p>
</body>
</html>