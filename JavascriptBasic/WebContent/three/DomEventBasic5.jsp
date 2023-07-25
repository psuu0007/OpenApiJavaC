<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DomEventBasic5.jsp</title>
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

	document.onmousemove = function(e) {
		var theEvent = e ? e : window.event; // 1. 이벤트 객체 생성
		var myForm = document.form1;

		//2. 이벤트 속성 - 문서 기준으로 좌표를 구함.
		myForm.clt_x.value = "clientX: " + theEvent.clientX;
		myForm.clt_y.value = "clientY: " + theEvent.clientY;

		//3. 이벤트 속성 - 스크린(모니터)기준으로 좌표를 구함.
		myForm.src_x.value = "screenX: " + theEvent.screenX;
		myForm.src_y.value = "screenY: " + theEvent.screenY;

		//4. 이벤트 속성 - 문서 기준으로 스크롤바 높이까지 계산해 좌표를 구함.
		myForm.pg_x.value = "pageX: " + theEvent.pageX;
		myForm.pg_y.value = "pageY: " + theEvent.pageY;
	}
</script>
</head>

<body>
	<form name="form1" action="#">
		<p>
			<input type="text" name="clt_x" id="clt_x" />
		</p>
		<p>
			<input type="text" name="clt_y" id="clt_y" />
		</p>
		<p>
			<input type="text" name="src_x" id="src_x" />
		</p>
		<p>
			<input type="text" name="src_y" id="src_y" />
		</p>
		<p>
			<input type="text" name="pg_x" id="pg_x" />
		</p>
		<p>
			<input type="text" name="pg_y" id="pg_y" />
		</p>
	</form>
</body>
</html>

