<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DomControlTest4_Exam.jsp</title>
</head>

<body>
	
	<div>
		<ul id='theList'>
			<li>리스트2</li>
			<li>리스트3</li>
			<li>리스트1</li>
			<li>리스트4</li>
		</ul>
	</div>
	
	<h1>문서 객체 조작</h1>
	
	<div id='secondDiv'>
	
	</div>
	
	
	
</body>

<script type="text/javascript">
	var theList = document.getElementById('theList');
	var liList = theList.getElementsByTagName('li');
	var secondDivObj = document.getElementById('secondDiv'); //secondDivObj 생성
	
	secondDivObj.style.border = '1px solid black'; //secondDiv 선 적용
	
	var copyLiObj = liList[2].cloneNode(true); //3번째 li인덱스 카피
	
	theList.insertBefore(copyLiObj, liList[0]); //0번째 li인덱스에 인설트
	
	theList.removeChild(liList[3]); //3번째 li인덱스 삭제
	
	var copyUlObj = theList.cloneNode(true); //theList의 Ul 카피
	
	copyUlObj.removeAttribute('id'); //copyUlObj의 id Attribute 제거
	
	secondDivObj.appendChild(copyUlObj); //secondDiv에 카피한 리스트 삽입
	
	theList.removeChild(liList[3]); //theList의 3번째 인덱스를 한번 더 삭제함으로써 3개가 남음
	
	var secondUlObjList = secondDivObj.children; //secondDiv의 Ul을 담을 ObjList 생성
	var secondLiObjList = secondUlObjList[0].children; //li를 담을 List 생성
	
	secondUlObjList[0].style.backgroundColor = 'black'; //Ul의 배경색 검정색으로 설정
	
	//반복문으로 Li태그에 선과 글자색 흰색을 적용
	for (var i = 0; i < secondLiObjList.length; i++) {
		secondLiObjList[i].style.border = '1px solid black';
	 	secondLiObjList[i].style.color = 'white';
	}
	
</script>

</html>

