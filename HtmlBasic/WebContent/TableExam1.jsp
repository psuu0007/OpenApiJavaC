<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>

	<h1>표 만들기</h1>
	<h2>데이터 테이블</h2>
	<table border="1" width="100%" summary="상하반기 태블릿 PC와 스마트폰 판매현황">
		<caption>태블릿 PC와 스마트폰 판매현황</caption>
		<colgroup>
			<col width="20%" />
			<col width="20%" />
			<col width="60%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">구분</th>
				<th scope="col">태블릿 PC</th>
				<th scope="col">스마트폰</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th scope="row">총판매수</th>
				<td>5만대</td>
				<td>16만대</td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<th scope="row">상반기 판매수</th>
				<td>2만대</td>
				<td>5만대</td>
			</tr>
			<tr>
				<th scope="row">하반기 판매수</th>
				<td>3만대</td>
				<td>11만대</td>
			</tr>
		</tbody>
	</table>
</body>
</html>