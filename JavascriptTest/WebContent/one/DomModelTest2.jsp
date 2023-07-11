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
			<li class='myChoiceTag1'>
				getElementById
			</li>
			<li class='myChoiceTag1'>
				getElementsByTagnName
			</li>
		</ul>
		<h2 id="title2">
			근거리 선택자
		</h2>
		<ul id="list">
			<li class='myChoiceTag2'>
				parentNode
			</li>
			<li class='myChoiceTag2'>
				childNodes
			</li>
			<li class='myChoiceTag2'>
				children
			</li>
			<li class='myChoiceTag2'>
				firstChild
			</li>
			<li class='myChoiceTag2'>
				previousSibling
			</li>
			<li class='myChoiceTag2'>
				nextSibling
			</li>
		</ul>
	</div>
</body>

<script type="text/javascript">
// 	모든 li태그들에 class를 작성한다
// 	서로 다른 ul을 통해 li들을 각각 적용한다
// 	첫번째 ul의 li들은 배경색을 분홍색으로 지정한다
// 	두번째 ul의 li들은 경계선을 모두 서로 다른 값으로 지정한다


	var myClassList = document.getElementsByClassName("myChoiceTag1")
// 	var borderList = {'black','red','orange','green','purple','hotpink'};

	for (var i = 0; i < 2; i++) {
		myClassList[i].style.backgroundColor = 'hotpink';
	}
	
	var myClassList = document.getElementsByClassName("myChoiceTag2")
	
	myClassList[0].style.border = '1px solid rgb(255, 20, 20)';
	myClassList[1].style.border = '1px solid rgb(20, 255, 20)';
	myClassList[2].style.border = '1px solid rgb(20, 20, 255)';
	myClassList[3].style.border = '1px solid rgb(20, 80, 20)';
	myClassList[4].style.border = '1px solid rgb(90, 20, 20)';
	myClassList[5].style.border = '1px solid rgb(255, 20, 255)';
	
</script>


</html>