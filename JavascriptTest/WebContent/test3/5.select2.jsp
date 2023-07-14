<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>


<script type="text/javascript">
// 	function addTest1(){
// 		var selectObj = document.getElementById('selList');
// 		var tempObj = selectObj.options[selectObj
// 			.selectedIndex].cloneNode(true);
// 		selectObj.appendChild(tempObj);
// 	}
	
	function addTest(){
		var selectObj = document.getElementById('selList');
		var optionObj = document.createElement('option');
		var textObj = document.createTextNode("손진원");
		optionObj.setAttribute('value', '쟐쟐'); 
		optionObj.appendChild(textObj);
		selectObj.appendChild(optionObj);
	}
	function removeTest(){
		var selectObj = document.getElementById('selList');
		selectObj.options.remove(selectObj.selectedIndex);
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
		<input type="button" value="복제" onclick="addTest1();">
	</form>
</body>
</html>