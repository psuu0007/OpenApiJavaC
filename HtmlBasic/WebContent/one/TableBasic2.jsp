<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1-19</title>
</head>

<body>

<!-- 	열 합치기 -->
<!-- 	<td colspan='열 합치기 개수'></td> -->
<!-- 	행 합치기 -->
<!-- 	<td rowspan='행 합치기 개수'></td> -->

	<h1>표 만들기</h1>
	<h2>셀 합치기</h2>
	
	<table border="1px">
		<tr>
			<td colspan="3">공연요금</td>
		</tr>
		<tr>
			<td>구분</td>
			<td>S석</td>
			<td>VIP</td>
		</tr>
		<tr>
			<td>성인</td>
			<td>30,000원</td>
			<td>50,000원</td>
		</tr>
		<tr>
			<td>청소년</td>
			<td>40,000원</td>
			<td>60,000원</td>
		</tr>
		<tr>
			<td>소인</td>
			<td colspan="2">미취학 아동 일반 요금의 50%</td>
		</tr>
		<tr>
			<td rowspan="2">공연시간</td>
			<td>1회</td>
			<td>13:00시 - 15:00시</td>
		</tr>
		<tr>
			<td>2회</td>
			<td>17:00시 - 19:00시</td>
		</tr>
	</table>


</body>
</html>






