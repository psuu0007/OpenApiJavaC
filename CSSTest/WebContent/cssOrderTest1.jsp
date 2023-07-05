<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>cssOrderTest1.jsp</title>

	<style type="text/css">
		li{
			color: blue;
		}	
		
		.cl_first, .cl_second{
			color: yellow;
		}
		
		#id_second, #id_fourth{
			color: pink;
		}
		
		ol{
			background-color: black;
		}
		
	</style>
</head>
<body>
	
	<ol>
		<li id='id_first' class='cl_first'>first</li>
		<li id='id_second' class='cl_second'>second</li>
		<li id='id_third' class='cl_third'>third</li>
		<li id='id_fourth' class='cl_fourth' 
			style="background-color: white">fourth</li>
	</ol>
</body>
</html>