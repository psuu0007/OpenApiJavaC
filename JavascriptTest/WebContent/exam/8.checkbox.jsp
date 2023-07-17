<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>checkbox</title>
<!-- checkbox는 체크가 되면 true를 반환한다      -->
<script type="text/javascript">
	function likeSong() {
		var obj = document.getElementsByName("rain");
		var str = "";
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked) {
				str += obj[i].value + ",";
			}
		}
		str = str.substring(0, str.length-1);
		
		if(str != ''){
			alert(str);
		}else{
			alert('노래를 선택해주세요');
		}
		
	}
	function allSel(bool) {
		var obj = document.getElementsByName("rain");
		for (var i = 0; i < obj.length; i++) {
			document.forms[0].rain[i].checked = bool; 
			//폼에서 체크박스의 rain의 체크를 true로 저장
			//form[](폼으로 싸고).이름[]:배열로 받아요
		}
	}
</script>
<style type="text/css">
table ,tr, td{ 
 	border: 1px solid;
 	padding: 5px;
 	border-spacing: 0px;
 	
 } 
</style>
</head>
<body>
	<form>
		<table>
			<tr>
				<td>비오는 날 들으면 죽여주는 노래?</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" 
						onclick="allSel(this.checked);">전체선택<br>
					<!-- this는 자신의 값을 반환 -->
					<input type="checkbox" name="rain" 
						value="비오는 날의 수채화">비오는 날의 수채화<br>
					<input type="checkbox" name="rain" 
						value="사랑은 비를 타고">사랑은 비를 타고<br>
					<input type="checkbox" name="rain" 
						value="rainism">rainism<br>
					<input type="checkbox" name="rain" 
						value="비와당신">비와당신<br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="노래목록!!" 
						onclick="likeSong();">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>