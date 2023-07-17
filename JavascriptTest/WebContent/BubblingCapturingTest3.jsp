<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
#rootDiv {
	border: 5px solid red;
	padding: 30px;
}

#parentDiv {
	border: 5px solid green;
	padding: 30px;
}

#childBtn{
	border: 5px solid black;
	padding: 30px;
}

#parentDiv2 {
	border: 5px solid green;
	padding: 30px;
	margin-top: 10px;
}

#childBtn2 {
	border: 5px solid black;
	padding: 30px;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		// true가 먼저 수행되고 나머지는 자식순으로 출력
		var rootDivObj = document.getElementById('rootDiv');
		rootDivObj.addEventListener('click', rootDivFunc);

		var parentDivObj = document.getElementById('parentDiv');
		parentDivObj.addEventListener('click', parentDivFunc, true);

		var childBtnObj = document.getElementById('childBtn');
		childBtnObj.addEventListener('click', childBtnFunc);

		var parentDivObj2 = document.getElementById('parentDiv2');
		parentDivObj2.addEventListener('click', parentDivFunc);

		var childBtnObj2 = document.getElementById('childBtn2');
		childBtnObj2.addEventListener('click', childBtnFunc, true);

	};

	function rootDivFunc() {
		alert('rootDiv');
		alert(this.nodeName);
		alert(event.target.nodeName);
	}
	function parentDivFunc() {
		alert('parentDiv');
		alert(this.nodeName);
		alert(event.target.nodeName);
	}
	function childBtnFunc() {
		alert("childBtn");
		alert(this.nodeName);
		alert(event.target.nodeName);
	}
</script>
</head>

<body>
	rootDiv
	<div id='rootDiv' title="난 최상위 Div야">
		parentDiv
		<div id='parentDiv' title='난 첫번째 부모DIv야'>
			<button id="childBtn" title='난 첫번째 부모의 자식Button이야'>버튼1</button>
		</div>
		
		parentDiv2
		<div id='parentDiv2' title="난 두번째 부모 Div야">
			<button id="childBtn2" title="난 두번째 부모의 자식Button이야">버튼2</button>
		</div>
	</div>
</body>
</html>