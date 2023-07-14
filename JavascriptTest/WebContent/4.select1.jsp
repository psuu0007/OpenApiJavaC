<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>


<script type="text/javascript">
	function selTest() {
		var obj = document.getElementById("selList");
		var idx = obj.options.selectedIndex; //option들 중에 선택 된 항목의 인덱스 번호를 가져온다

		alert(obj.options[idx].value); //option에 몇번째의 값을 가지고 온다
	}
</script>
</head>
<body>
	<form>
		<select id="selList" onchange="selTest();" size="1">
			<!-- 셀렉박스 내용 변경 시 선택한 value를 경고창으로 출력하시오 -->
			<option value="http://www.naver.com">네이버</option>
			<option value="http://www.daum.net">다음</option>
			<option value="http://www.gmail.com">G메일</option>
		</select>
	</form>
</body>
</html>