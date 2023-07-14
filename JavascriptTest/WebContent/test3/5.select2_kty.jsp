<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>


<script type="text/javascript">
	
	function addTest() {
		var selList = document.getElementById('selList');
		var val = selList.options[selList.selectedIndex].value; 
		//선택한 옵션의 값
		var text = selList.options[selList.selectedIndex]
			.innerHTML; //선택한 옵션의 텍스트?
		
		selList.options[selList.length] 
			= new Option(text, val); // 옵션 마지막 리스트에 새 옵션 추가
	}
	
	function removeTest() {
		var selList = document.getElementById('selList');
		
		selList.options[selList.selectedIndex] = null;
	}
	
</script>
</head>
<body>
	<form>
		<select id="selList">
			<option value="http://www.naver.com">네이버</option>
			<option value="http://www.daum.net">다음</option>
			<option value="http://www.gmail.com">G메일</option>
		</select>
		<!-- 추가 버튼 클릭 시 자신의 이름과 별명을 셀렉 박스에 추가하시오 -->
		<input type="button" value="추가" onclick="addTest();">
		<!-- 삭제 버튼 클릭 시 셀렉 박스에서 선택한 내용을 삭제하시오 -->
		<input type="button" value="삭제" onclick="removeTest();">
	</form>
</body>
</html>