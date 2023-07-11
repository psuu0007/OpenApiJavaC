<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>DomModelBasic4</title>

</head>
<body>
<!-- 	근거리 선택자 -->
<!-- 	특정 태그를 기준으로 상대적인 다른 태그를 선택할 때 사용 -->
	
	<div>akljfjlksfdj</div>
	
	<div id='parentDiv' title="아하 대충 디버깅용 글자">
		<ul id="list">
			<li>parentNode</li>
			<li>childNodes</li><li>children</li><li>firstChild</li>
			<li>previousSibling</li><li>nextSibling</li>
		</ul>
	</div>
</body>

<script type="text/javascript">
	var parentObj = document.getElementById('list').parentNode;

	// 	alert(parentObj.nodeName);
	// 	alert(parentObj.title);

	// 	자식 태그 선택자 childNodes
// 	-> 대체한 코드 
// 	자식 태그 선택자 children

// 	var ulObj = document.getElementById('list');

// 	var childList = ulObj.childNodes;

// 	alert(childList.length);

// 		for (var i = 0; i < childList.length; i++) {
// 			alert(childList[i].textContent);
// 		}
		
// 		------
		
		var ulObj = document.getElementById('list');

		var childList = ulObj.children;

//	 	alert(childList.length);

		for (var i = 0; i < childList.length; i++) {
			alert(childList[i].textContent);
		}
		
		
</script>

</html>