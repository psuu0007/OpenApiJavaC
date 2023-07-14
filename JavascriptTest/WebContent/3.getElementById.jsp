<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
	function spanChange() {
		var val = '';
		val = document.getElementById("span1").innerHTML;
		if (val == "drink") {
			document.getElementById("span1").innerHTML = "tea";
		} else {
			document.getElementById("span1").innerHTML = "drink";
		}
	}
</script>
</head>
<body>
	<form>
		<table border="1">
			<tr>
				<td><span id="span1">drink</span> <!-- 입력되는 영역으로 div와의 차이점이 있음 -->
					<input type="button" value="change" onclick="spanChange();" />
			</tr>
		</table>
	</form>
</body>
</html>