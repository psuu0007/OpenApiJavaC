<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>CSS도 알려주자</title>


<script type="text/javascript">
	function addTest() {
		var selectObj = document.getElementById("selList");
		var optionObj = document.createElement('option');
		
		optionObj.text = '어둠';
		optionObj.value = '성욱';
		selectObj.options.add(optionObj);
	}
	
	function removeTest() {
		var selectObj = document.getElementById("selList");
		if(selectObj.selectedIndex >= 0){
			selectObj.options.remove(selectObj.selectedIndex);
		}
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