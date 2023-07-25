<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ChildWindowBasic1</title>
	<style type="text/css">
		*{ 
			margin:0; padding:0;
		}
	</style>
	<script type="text/javascript">
		
		function closeWinFnc() {
			window.close();
		}
	
	</script>

</head>

<body>
	<p>
		<img src="images/popup.jpg" alt="이달에 새로나온책"
		 usemap="#pop"/>
	</p>
	<map name="pop" id="pop">
    	<area shape="rect" coords="228,371,294,399" 
    		href="#" alt="창닫기"/>
	</map>
	
	<div onclick="closeWinFnc();">팝업창 닫기(자식창 닫기)</div>
	
</body>
</html>

