<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SelectorBasic1.jsp</title>
	<style type="text/css">
		div {
			color: yellow; 
			background: purple;	
		}
		
		p {
			font-size: 20;	
		}
		
		#pm{
			border: 1px solid;
			width: 300px; 
		height: 100px;
		border-color: black;
		}
		
		#div2{
		border: 1px solid;
		width: 500px; 
		height: 200px;
		border-color: blue;
		}
		
	</style>
	
</head>

<body>
	
	<div>
		장마
	</div>
	
	<div>
		모든 div는 기본적으로 글자색이 노란색야
	</div>
	
	<p>
		모든 p태그는 글자 크기가 20이야
	</p>
	
	<p>
		<b>난 글자가 굵은 스타일이야</b>
	</p>
	
	<div id='div2'>
		여기 태그는 높이 200, 넓이 500인데 경계선 색이 파란색이야
		<p id='pm'>음 이 태그는 경계선이 있고 높이 100, 넓이 300이야</p>
	</div>
</body>
</html>