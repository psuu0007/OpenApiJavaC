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

// 원거리 선택자
// id선택자

// 	선택대상.getElementById("아이디명");	
// 	대상 객체를 리턴한다
	
	var myObj = document.getElementById('title');
	
	myObj.style.color = '#FF0063';
// 	myObj.style.border = "1px solid black";

// 	class선택자
// 	document.getElementsByClassName('클래스명')
	
	var myObjList = document.getElementsByClassName('myChoiceTag');
	
	var myChoiceObj = myObjList[0];
	
	myChoiceObj.style.border = '1px solid black';
	
	myChoiceObj = myObjList[1];
	
	myChoiceObj.style.border = '2px solid red';
	
	
	
	
</script>

</html>