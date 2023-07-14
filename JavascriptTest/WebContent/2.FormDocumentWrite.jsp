<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<style type="text/css">
	table {
		border-collapse: collapse;
		height: 60px;
	}
	
	table, tr, td {
		border: 1px solid black;
	}
	
	
</style>

<script type="text/javascript">
	function age(get) {
// 		alert(get);
		var doc = document.forms[0].st.value; 
		//여러개의 form중에 첫번째 form을 의미한다.
		
		var str = "제 나이는 " + doc + "입니다.";
// 		alert(str);
		var obj = document.getElementById("spanTest"); 
		//html의 id로 객체를 가져온다.
		obj.innerHTML = str; //obj의 위치에 str을 출력한다.
		
// 		alert(obj.innerHTML);
	}
</script>
</head>
<body>
	<form>
		<table>
			<tr>
				<td>
					<input type="text" name="st">
					<input type="button" value="당신의 나이는?" 
					onclick="age();">
				</td>
			</tr>
			<tr>
				<td>
					<span id="spanTest"></span>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>