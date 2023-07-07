<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>웹 문서구조2</title>

</head>
<body>
	<div>
		<h1>선택자</h1>
		<h2 id="title">
			원거리 선택자
		</h2>
		<ul>
			<li class='myChoiceTag'>
				getElementById
			</li>
			<li>
				getElementsByTagnName
			</li>
		</ul>
		<h2 id="title2">
			근거리 선택자
		</h2>
		<ul id="list">
			<li class='myChoiceTag'>
				parentNode
			</li>
			<li>
				childNodes
			</li>
			<li>
				children
			</li>
			<li>
				firstChild
			</li>
			<li>
				previousSibling
			</li>
			<li class='myChoiceTag'>
				nextSibling
			</li>
		</ul>
	</div>
</body>

<script type="text/javascript">

// 	tag선택자
// 	document.getElementsByTagName('태그명');
	
	var myUlList = document.getElementsByTagName('ul');
	
	var myObj = myUlList[0].getElementsByTagName('li')[1];
	
	myObj.style.border = '1px solid black';
	
	
	
	
</script>

</html>