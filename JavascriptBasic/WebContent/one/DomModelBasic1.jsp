<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>웹 문서구조</title>

</head>
<body>

<!-- 	할당? -->
<!-- = -->
<!-- p태그 폰트 크기 30px으로 할당(변경)해라 -->

<!-- 	불러오기? -->
<!-- testDiv의 태그의 배경색이 머냐? -->

<!-- 	출력? -->
	<div id='rootDiv'>
		<h1 id='childH1' style="background: #111111; color: black;">
			DOM
		</h1>
		<p id='childP' style="background: #555555; color: black;">
			문서의 각 요소(객체)들을 구조화한 것입니다.
		</p>
		<div id='testDiv' style="background: #777777; color: black;">
			난 내용이 중요해
		</div>
	</div>

</body>

<script type="text/javascript">
// 	var childPObj = document.getElementById('childP');
	
// 	alert(childPObj.id);
// 	childPObj.style.fontSize = '30px';
	
// 	var testDivObj = document.getElementById('testDiv');
	
// 	alert(testDivObj.id);
	
// 	alert(testDivObj.style.backgroundColor);
	
// 	var colorStr = testDivObj.style.backgroundColor;
	
// 	document.write(colorStr);

	var rootDivObj = document.getElementById('rootDiv');
	
	var rootDivChildList = rootDivObj.children;

// 	alert(rootDivChildList.length);
	
// 	alert(rootDivChildList[0].style.backgroundColor);
	
	
	
	for (var i = 0; i < rootDivChildList.length; i++) {
// 		alert(rootDivChildList[i].id);
		
		var myTagBackgroundColorStr = rootDivChildList[i].style.backgroundColor;
		
//	 	alert(myTagBackgroundColorStr);
//	 	document.write(myTagBackgroundColorStr);
//	 	"rgb(17, 17, 17)"
//	 	alert(myTagBackgroundColorStr);
		
		var rgbValueNum = 0;
		rgbValueNum = Number(myTagBackgroundColorStr.substring(4, 6));
		
// 		alert(rgbValueNum + 10);
		
		rgbValueNum = rgbValueNum + ((i+1) * 80);
		
		var myBackgroundColorVal = '';
		myBackgroundColorVal = 'rgb(' + rgbValueNum + ', ' 
			+ rgbValueNum + ', ' + rgbValueNum + ')';
				
		rootDivChildList[i].style.backgroundColor = myBackgroundColorVal;
		
	}
	
</script>

</html>