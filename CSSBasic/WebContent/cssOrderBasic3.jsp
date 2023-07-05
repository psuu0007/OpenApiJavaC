<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>cssOrderBasic3.jsp</title>

	<style type="text/css">
		div{
			color: blue;
		}	
		
		div ol{
			color: purple;
		}
		
		div ol .cl_first, .cl_second{
			color: green;
		}
		
		div ol .cl_first{
			color: #FF0063;
		}
		
	</style>

</head>



<body>
<!-- 같은 레벨, 구체성이라면 코드 순서가 결정 -->
	<div>
		<ol>
			<li id='id_first' class='cl_first'>first</li>
			<li id='id_second' class='cl_second'>second</li>
			<li id='id_third' class='cl_third'>third</li>
		</ol>
	</div>
	
</body>
</html>