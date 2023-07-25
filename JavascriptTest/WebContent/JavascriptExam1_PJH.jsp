<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JavascriptExam1</title>
	
	<script type="text/javascript">
	
		function onFocusFnc() {
			
	        var secondInputObj 
	        	= document.getElementById('secondInput');
	        
	        if (secondInputObj.value == '비밀번호를 입력하세요') {
	            secondInputObj.value = '';
	        }
	    }
	    
	    function onBlurFnc() {
	    	
	        var secondInputObj = 
	        	document.getElementById('secondInput');
	        
	        if (secondInputObj.value == '') {
	            secondInputObj.value = '비밀번호를 입력하세요';
	        }
	    }
		
	</script>
</head>

<body>
	
<!-- 	플레이스홀더 구현하기 -->
	
	<input type="text" value="" placeholder="아이디를 입력해주세요">
	
	<hr>
	<hr>
	
	<input type="text" value="비밀번호를 입력하세요" id="secondInput"
		onfocus="onFocusFnc()" onblur="onBlurFnc()">
	
</body>
</html>