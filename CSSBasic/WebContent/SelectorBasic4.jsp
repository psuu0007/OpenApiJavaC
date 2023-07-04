<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SelectorBasic4.jsp</title>
	
	<style type="text/css">
		li > p{
			color: red;
			font-size: 30px;
			border: 1px solid black;
		}
		
	</style>
</head>

<body>

<!-- 	자식 선택자 -->
<!-- 	현재 태그 내의 바로 아래 나오는 태그를 가리키는 선택자 -->
<!-- 		>	 -->
	
	<div>
		<h1>달력</h1>
		<ul>
			<li>7월</li>
			<li>
				<p>8월</p>
			</li>
			<li>
				<p>9월</p>
			</li>
		</ul>
	</div>
	
</body>
</html>