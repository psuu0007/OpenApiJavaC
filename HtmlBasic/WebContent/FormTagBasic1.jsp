<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	
	</style>
</head>

<body>
<!-- 	@폼(Form) -->
	
<!-- 	웹 사이트에서 특정 컨텐츠에 대한 정보를 제공받기 위해서는 회원가입을 해야 하는 -->
<!-- 	경우가 있다 -->
	
<!-- 	회원가입 양식에는 이름, 아이디, 비번등을 입력해야 하며 -->
<!-- 	다양한 항목을 선택하기도 한다 -->
	
<!-- 	이러한 정보입력 양식을 제공하는 태그가 form 태그다 -->
	
<!-- 	<form action="전달할 주소" method="get이나 post"> -->
<!-- 		서식 내용들 -->
<!-- 	</form> -->

	input type 종류
	type			설명
	text			한 줄 입력 상자
					size 속성은 글상자의 가로길이
					maxlength 최대 글자 수
	reset			초기화 버튼
	button			범용 버튼		
	hidden			화면에 표시되지않음
					사용자에게 노출할 필요가 없는 데이터 지정

	<h1>input 요소</h1>
	
	<form action="join.php" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<p>
				아이디 : <input type="text" size="12" maxlength="8" />
			</p>
			<p>
				비밀번호 : <input type="password" size="12" maxlength="8" />
			</p>
			<p>
				메일 수신 여부 : 
				<input type="radio" value="y" name="receive" />
				예
				<input type="radio" value="n" name="receive" />
				아니요
			</p>
			<p>
				관심 분야: 
				<input type="checkbox" value="HTML" name="chk1" />
				HTML 
				<input type="checkbox" value="CSS" name="chk2" />
				CSS 
				<input type="checkbox" value="Javascript" name="chk3" />
				Javascript
			</p>
			<p>
				<input type="submit" value="전송" /> 
				<input type="reset" value="취소" />
				<input type="button" value="확인" /> 
				<input type="image" src="./images/game.jpg" 
					style="width: 30px; height: 30px;" alt="검색" />
			</p>
			<p>
				파일 올리기 : <input type="file" />
			</p>
			<p>
				<input type="hidden" />
			</p>
		</fieldset>
	</form>
</body>
</html>