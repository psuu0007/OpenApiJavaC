<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>CSS 개념</title>

<style>
	table, th, td {
 	  border: 1px solid black; 
	}
</style>

</head>

<body>

 	CSS는 내부 스타일, 인라인 스타일, 외부 스타일이라는 종류가 있다 
	기본적으로는 내부 스타일이고 스타일 중 가장 높은 
	우선순위를 가진 것이 인라인 스타일이다 (인라인 스타일은 꼭 필요한 경우에만 사용)

	<table style="width: 300px;">
		<tr>
			<th>Firstname</th>
			<th>Lastname</th>
			<th>Age</th>
		</tr>
		<tr>
			<td>Jill</td>
			<td>Smith</td>
			<td>50</td>
		</tr>
		<tr>
			<td>Eve</td>
			<td>Jackson</td>
			<td>94</td>
		</tr>
		<tr>
			<td>John</td>
			<td>Doe</td>
			<td>80</td>
		</tr>
	</table>

</body>
</html>


