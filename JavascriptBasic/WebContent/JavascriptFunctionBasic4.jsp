<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptFunctionBasic4.jsp</title>
</head>

<body>

	<input type="button" value="버튼1" 
		onclick="amazingGreetFnc('반갑습니다!!');">
	
	<input type="button" value="버튼2" 
		onclick="amazingGreetFnc('반가워요 머리 박습니다');">
</body>

<script type="text/javascript">
	
	function amazingGreetFnc(args){
		alert('매개변수 활용: ' + args);
		
		return args + ' 리턴값 활용?';
	}
	
// 	함수 명명규칙
// 	의미있는 이름을 적고 끝에는 fnc를 적는다
	var resultStr = '';
	
	resultStr = amazingGreetFnc('아 그렇네, 여기든 저기든 그냥 똑같다');
	
	document.write(resultStr);
	
</script>

</html>

