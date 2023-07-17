<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>select 활용</title>
<style type="text/css">
	table, tr, td{
		border: 1px solid black;
	}
</style>
<script type="text/javascript">
// 	<img src = ./imgs/iu.png>
	function selimg() {
		var selObj = document.getElementById('sel');
		var spanObj = document.getElementById('im');
		var imgStr = '';
		
		switch (selObj.selectedIndex) {
		case 0:
			imgStr = 'iu';
			break;
			
		case 1:
			imgStr = 'kmk';
		break;
		
		case 2:
			imgStr = 'yh';
		break;

		default:
			break;
		}
		
		spanObj.innerHTML = '<img src = ./imgs/' + imgStr
			+ '.png width="100px" height= "100px">';
	}
	
	function selStar() {
		var selStarStr = '';
		var selObj = document.getElementById('sel');
		
		for (var i = 0; i < sel.options.length; i++) {
			if(sel.options[i].selected){
				selStarStr = selStarStr + 
					selObj.options[i].value + ', ';
				}
		}
		alert(selStarStr);
		
	}
	
	
</script>
</head>
<body>
	<table>
		<tr>
			<td style="width:50px;">
				<select id="sel" size="4" multiple>
					<option value="아이유">1)아이유</option>
					<option value="강민경">2)강민경</option>
					<option value="윤하">3)윤하</option>
				</select>
			</td>
			<td style="width:100px;">
				<span id="im">
					<!-- 여기에 선택한 연예인의 이미지를 출력한다 -->
				</span>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button"
					value="좋아하는 연예인은?(이미지)"
					onclick="selimg();">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="좋아하는 연예인은?(중복가능)" onclick="selStar();">
				<!-- 버튼 클릭시 다중 선택한 연예인의 이름을 알림창으로 한번만 출력한다 -->
			</td>
		</tr>
	</table>
</body>
</html>