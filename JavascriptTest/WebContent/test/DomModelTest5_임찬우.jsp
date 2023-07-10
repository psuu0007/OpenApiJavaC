<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>웹 문서구조</title>

</head>
<body>
<!-- div태그들 중에서 시작해서 body태그에 배경색을 자신이 원하는 색으로 변경하시오 -->

	<div id='firstDiv'>
		<h1>DOM</h1>
		<p>나는 글자크기가 30px이고 배경색이 파란색이다</p>
		
		<ol class='ulTagGroup'>
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
		</ol>
	</div>
	
	<div id='secondDiv'>
		<h1>DOM2 나는 글자들이 가운데 정렬이다</h1>
		<p>두번째? 첫번째?</p>
		
		<ul class='ulTagGroup'>
			<li>1이곳의 li들은 글자들이 하</li>
			<li>2하하</li>
			<li>3하하하</li>
			<li>4하하하하 변경되도록 한다 원래 글자는 1,2,3,4였다</li>
		</ul>
	</div>
	
</body>

<script type="text/javascript">

	//div의 부모 = body의 배경색 변경
	var objParent = document.getElementById("firstDiv").parentNode;
	
	objParent.style.backgroundColor = "green";
	
	// id firstDiv (p)자식 글자 크기 30px, 배경 파란색
	var objList1 = document.getElementById("firstDiv").children;

// 		alert(objulList[i].textContent);
	var myObj = objList1[1];
		
	myObj.style.fontSize = "30px";
	myObj.style.backgroundColor = "blue";

	// id secondDiv의 (h1)자식 글자 정렬 가운데
	var objMyList2 = document.getElementById("secondDiv").children;
// 		alert(objMyList2[i].textContent);

	myObj = objMyList2[0];
	myObj.style.textAlign = "center";

	// ulTagGroup 두번째  class의 (li)자식 글자 변경
	var objMyList3 
	= document.getElementsByClassName("ulTagGroup")[1].children;
	
	for (var i = 0; i < objMyList3.length; i++) {
// 		alert(objMyList3[i].textContent);
		objMyList3[i].textContent = "하"
		for (var j = 0; j < i; j++) {
 			objMyList3[i].textContent 
 			= objMyList3[i].textContent + "하"
 		}
	}

	
</script>

</html>