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
// 		다 true면 부모순으로 출력
		var rootDivObj = document.getElementById('rootDiv');
		rootDivObj.addEventListener('click', rootDivFunc);

		var parentDivObj = document.getElementById('parentDiv');
		parentDivObj.addEventListener('click', parentDivFunc);

		var parentDivObj2 = document.getElementById('parentDiv2');
		parentDivObj2.addEventListener('click', parentDivFunc);


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
	
</script>
</head>

<body>
	rootDiv
	<div id='rootDiv' title="난 최상위 Div야">
		parentDiv
		<div id='parentDiv' title='난 첫번째 부모DIv야'>
			<a>나 클릭하면 구글 페이지가 뜸</a>
		</div>
		
		parentDiv2
		<div id='parentDiv2' title="난 두번째 부모 Div야">
			<a href="https://www.naver.com/">
				나 클릭하면 네이버 페이지가 뜸 근데 나는 경고창만 뜨고
				페이지는 이동되면 안됨
			</a>
		</div>
	</div>
</body>
</html>