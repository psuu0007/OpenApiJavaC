<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>회원정보</title>
</head>
<body>
	<h1>회원정보 수정</h1>
	<form action='./update' method='post'>
		번호: <input type='text' name='mNo' value='' readonly='readonly'><br> 
		이름: <input type='text' name='name' value=''><br>
		이메일: <input type='text' name='email' value=''><br>
		가입일: <br>
		<input type='submit' value='저장'>
		<input type='button' value='취소'>
	</form>
</body>
</html>