<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>우선순위</title>
</head>

<body>
	
	CSS(Cascading Style Sheets)
	우선순위가 있는 스타일 시트라는 뜻
	
	하나의 태그에 여러가지 방법으로 동일한 속성의 스타일을 적용하는 경우
	우선순위에 따라서 적용될 스타일이 결정된다는 뜻이다
	속성을 적용하다보면 하나의 태그에 본의 아니게 같은 속성이 겹쳐 적용될 때가 있다
	
	단편적인 경우에는 이런 경우가 그다지 발생하지 않으므로
	cascading에 대해 깊게 생각하지 않아도 될지 몰라도
	완성도 있는 HTML 페이지를 만들기 위해 이에 대한 이해는 필수다
	
	@케스케이딩(우선순위)를 결정하는 요소
	1. 중요도
	저작자 !important > 저작자 CSS -> 사용자 CSS > 브라우저 CSS
	
	2. 선택자에 따른 명시도
	선택자의 종류에 따라 명시도의 차이가 있다
	명시도는 더 구체적이라는 뜻이다
	직접 선택자 / 간접 선택자
	
	style > id > class > 태그
	
	
<!-- 	레벨? 깊이? 단계? -->
	3.깊이가 깊을수록 명시도가 높다
	
	
	4.코드 순서
	선택자의 종류와 깊이가 같을 때 우선순위의 결정 방식은 코드의 순서이다
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>