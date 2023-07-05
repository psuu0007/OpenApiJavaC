<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>cssOrderTest2.jsp</title>

	<style type="text/css">
		div {
			color: blue;
		}

		div ol {
			color: red;
		}
		
		div ol .cl_first, #id_parent div ol .cl_second {
			color: green;
		}
		
		div ol #id_second {
			color: orange;
		}
		
		.cl_parent div ol .cl_second{
			color: purple;
		}
	</style>
</head>
<body>
	
<div id='id_parent' class="cl_parent">	
	<div>
		<ol>
			<li id='id_first' class='cl_first'>first</li>			
			<li id='id_second' class='cl_second'>second</li>	
			<li id='id_third' class='cl_third'>third</li>		
			<li id='id_fourth' class='cl_fourth'>fourth</li>	
		</ol>
	</div>
</div>
</body>
</html>