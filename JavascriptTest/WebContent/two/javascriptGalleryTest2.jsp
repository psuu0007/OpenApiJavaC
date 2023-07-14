<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
	<style type="text/css">
		*{
			margin:0;
			padding:0;
		}
		
		img{
			vertical-align:top;
			border:0;
		}
		
		#galleryWrap{
			width:550px;
			margin:0 auto;
			text-align:center;
		}
		
		#galleryWrap img{
			vertical-align:middle;
		}
		
  		a{ 
 			text-decoration: none; 
 		} 
		
	</style>
<body>

	<div id="galleryWrap">
	<h1>이미지 넘기기</h1>
	<p>
		<a href="#prev" onclick="prevGallery();">
			<img src="images/left_btn.png" alt="이전 그림" />
		</a>
		<img src="images/img1.jpg" alt="갤러리 그림"  id="gallery"/>
		<a href="#next" onclick="nextGallery();">
			<img src="images/right_btn.png" alt="다음 그림" />
		</a>
	</p>
	</div>

</body>

<script type="text/javascript">
	var num=6;
	function nextGallery(){
		
		if(num >= 7){
// 			num=7;
			return;
		}
		
		num++;
		document.getElementById("gallery").src
			="images/img"+num+".jpg";
// 		return false;
	}
	
	function prevGallery(){
		num--;
		if(num<1){
			num=1;
// 			return;
		}
		document.getElementById("gallery").src
			="images/img"+num+".jpg";
// 			return false
	}
	//]]>
</script>

</html>