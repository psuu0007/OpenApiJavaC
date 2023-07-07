<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FormTagBasic3</title>
<style type="text/css">
</style>
</head>

<body>

<!-- 	@label 태그 -->
<!-- 	접근성 높은 서식을 만들수 있게 도와줌 -->

<!-- @그룹핑(Grouping) -->
<!-- 그룹핑 태그에는 div, span태그가 있다 -->
<!-- div는 블록 태그들을 묶는데 사용된다 -->
<!-- span은 인라인 태그를 그룹화하는데 사용된다 -->


	<h1>label 요소</h1>
	<form action="join.php" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<table border="1" width="100%" summary="회원가입에 필요한 개인정보 입력">
				<caption>회원가입 서식 작성</caption>
				<colgroup>
					<col width="30%" />
					<col width="70%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">
							<label for="name">이름</label>
						</th>
						<td><input type="text" id="name" /></td>
					</tr>
					<tr>
						<th scope="row"><label for="id">아이디</label></th>
						<td><input type="text" id="id" /></td>
					</tr>
					<tr>
						<th scope="row"><label for="pw">비밀번호</label></th>
						<td><input type="password" id="pw" /></td>
					</tr>
					<tr>
						<th scope="row"><label for="r_pw">비밀번호확인</label></th>
						<td><input type="password" id="r_pw" /></td>
					</tr>
					<tr>
						<th scope="row">
							<label for="jumin_num">
							주민번호
							</label>
						</th>
						<td>
							<input type="text" id="jumin_num" 
								title="주민번호 앞 6자리" />
							-
							<input type="text" title="주민번호 뒤 7자리" />
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="email">이메일</label></th>
						<td>
							<input type="text" id="email" 
								title="이메일 아이디" />
								@
							<input type="text" title="이메일 주소" />
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="hp">핸드폰</label></th>
						<td><input type="text" id="hp" /></td>
					</tr>
				</tbody>
			</table>
			<p>
				<input type="submit" value="전송" />
				<input type="reset" value="취소" />
			</p>
		</fieldset>
	</form>
</body>
</html>