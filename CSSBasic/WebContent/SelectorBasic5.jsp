<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SelectorBasic5.jsp</title>
	
	<style type="text/css">
		li p{
			color: blue;
			font-size: 30px;
			border: 7px solid;
			border-bottom-color: orange;
			border-right-color: purple;
			width: 70px;
		}
		
	</style>
</head>

<body>

<!-- 	하위 선택자 -->
<!-- 	나의 영역에서 자손들을 선택할 수 있다 -->
<!-- 	공백으로 구분	 -->
	
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