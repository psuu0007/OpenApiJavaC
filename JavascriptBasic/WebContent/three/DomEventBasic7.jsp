<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DomEventBasic7.jsp</title>
<style type="text/css">
</style>

<script type="text/javascript">
	// 	브라우저 객체(BOM: Browser Object Model)
	// 	브라우저 창에 포함된 모든 객체 태그들을 의미한다

	// 	브라우저라는 것도 결국 창(window)안에서 실행되는 프로그램이므로
	// 	최상위 객체인 window 아래에 존재한다

	// 	@브라우저 객체의 종류
	// 	window
	// 		document	문서 객체이며 form등이 존재
	// 		navigator	브라우저에 대한 정보를 제공하는 객체
	// 		location	위치(url)관련 정보를 제공하는 객체
	// 		screen		스크린(모니터)에 대한 정보를 제공하는 객체
	// 		history		인터넷 방문 기록에 대한 정보를 제공하는 객체(가능하면 사용 금지)

	var myAgent = navigator.userAgent.toLowerCase();
	var mobile = [ "iphone", "ipod", "android"
		, "blackberry", "window ce"
		, "nokia", "webos", "opera mini"
		, "sonyericsson", "opera mobi",	"iemobile" ];
	
	for (var i = 0; i < mobile.length; i++) {
		if (myAgent.indexOf(mobile[i]) >= 0) {
			location.href = "https://m.naver.com";
			break;
		}
	}
</script>
</head>

<body>
	<h1>PC버전 페이지</h1>
</body>
</html>

