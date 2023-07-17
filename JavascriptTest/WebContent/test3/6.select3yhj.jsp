<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>6.select3</title>


<style type="text/css">
	
	table, tr, td {
		border: 1px solid black;
	}
	
/* 	 img { */
/*             width: 100px; */
/*             height: 100px; */
/*         } */
	
</style>
<script type="text/javascript">
	
// 	function selimg() {    
// 	  var selObjListVal = 
// 		  document.getElementById("sel")
// 		  	.options[document.getElementById("sel").
// 		  selectedIndex].value;
// 	  var img = "";
	 
// 	  if ( selObjListVal != "1" ){
// 	    img += "<img src='./images/"+selObjListVal
// 	    	+".jpg' style='width: 200px; height: 200px;'>";    
// 	    document.getElementById("im").innerHTML = img;
// 	  }else{
// 		  img += "<img src='./images/"+ "1"
// 	    	+".jpg' style='width: 200px; height: 200px;'>";    
// 	    document.getElementById("im").innerHTML = img;
// 	  }
// 	}
	
	
	function selimg(){
		var imgfiles = [
			"./images/emmaS.jpg", 
			"./images/emmaW.jpg",
			"./images/maDong.jpg"
			];
// 		alert(imgfiles[0]);
	    var selObjList = document.getElementById("sel");
	    var imSpanObj = document.getElementById("im");
	   
	    var imgHtmlStr = '';
	    	
	    if(selObjList.value == 'emmaS'){
	    	imgHtmlStr = 
	    		'<img alt="" src="' + imgfiles[0] + '">';
	    }else if(selObjList.value == 'emmaW'){
	    	imgHtmlStr = 
	    		'<img alt="" src="' + imgfiles[1] + '">';
	    }if(selObjList.value == 'maDong'){
	    	imgHtmlStr = 
	    		'<img alt="" src="' + imgfiles[2] + '">';
	    }
	    
	    imSpanObj.innerHTML = imgHtmlStr; 
	}
	
	function selStar(){
		 var selObjListIndex = document.getElementById("sel");
// 		 alert(selObjListIndex.length);
		 alert(selObjListIndex.innerHTML);
// 		 alert(selected.selObjListIndex.innerHTML);

	}
</script>
</head>
<body>
	
	<table>
		<tr>
			<td style="width: 50px;">
				<select id="sel" size="4" multiple>
					<option value="emmaS">1)엠마스톤</option>
					<option value="emmaW">2엠마왓슨)</option>
					<option value="maDong">3)마동석</option>
				</select>
			</td>
			<td style="width: 100px;">
				<span id="im">
					
				</span>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="button" value="좋아하는 연예인은?(이미지)"
				onclick="selimg();">
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="button" value="좋아하는 연예인은?(중복가능)"
				onclick="selStar();"> 
			<!-- 버튼 클릭시 다중 선택한 연예인의 이름을 알림창으로 한번만 출력한다 -->
			</td>
		</tr>
	</table>
	
	
</body>
</html>