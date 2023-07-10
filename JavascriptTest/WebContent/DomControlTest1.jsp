<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DomControlTest1</title>
</head>

<body>
	<h1>The Element Object</h1>
	<h2>The cloneNode() Method</h2>


	<div id="demo" style="border: 1px solid black; background-color: pink">
		<p style="color: red;">A p element</p>
		<p style="color: green;">A p element</p>
		<p style="color: blue;">A p element</p>
	</div>

	<hr />


</body>

<script type="text/javascript">
	var demoObj = document.getElementById("demo");
	var cloneDemoObj = demoObj.cloneNode(true);
	
	document.body.appendChild(cloneDemoObj);
</script>

</html>