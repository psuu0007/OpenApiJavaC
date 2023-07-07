<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>imgTagBasic2</title>
</head>

<body>
<!-- 	절대경로와 상대경로? -->
	
<!-- 	상대경로?(Relative Path) -->
<!-- 	상대 경로는 현재 파일의 위치를 기준으로 연결하려는 파일의 상대적인 경로를 적는 것을 의미합니다. -->

	<h1>
		<img src="images/icox_logo.gif" width="100px" height="58px" alt="아이콕스" />
	</h1>
	<p>
		<img src="./images/icox_logo.gif" width="100px" height="58px" 
			alt="아이콕스" />
	</p>
	
	<img src="./학교.png" alt="학교"/>
	
	<div>
		<img src="game.jpg"/>
	</div>
	
	
</body>
</html>