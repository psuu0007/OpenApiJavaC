<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptBasic9</title>
</head>

<body>




</body>

<script type="text/javascript">
// parse
	//<![CDATA[
	var theText = "web js hi ciy";
	document.write(theText.bold() + "<br />");
	document.write(theText.link("http://www.naver.com") + "<br />");
	document.write(theText.length + "<br />");
	document.write(theText.toLowerCase() + "<br />");
	document.write(theText.toUpperCase() + "<br />");
	document.write(theText.indexOf("i") + "<br />");
	document.write(theText.lastIndexOf("i") + "<br />");
	document.write(theText.charAt(5) + "<br />");
	document.write(theText.substring(4, 6) + "<br />");
	document.write(theText.substr(10, 3) + "<br />");
	document.write(theText.replace("web", "bye") + "<br />");
	document.write(theText.slice(7, 9) + "<br />");
	document.write(theText.concat(" good") + "<br />");
	document.write(theText.split(" ") + "<br />");

	//]]>
</script>

</html>

