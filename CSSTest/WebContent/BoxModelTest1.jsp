<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>BoxModelTest1.jsp</title>
   <style type="text/css">
      div {
      	background-color: white;
        border: 1px solid black;
        width: 900px;
        height: 300px;
        text-align: left;
        padding: 15px;
        margin: 5px;
      }
      
</style>
</head>

<body>
<!-- 	rootDiv태그의 높이를 3개의 div가 다 들어갈 수 있도록 설정하고 -->
<!--    내부의 3개 div의 크기와 높이를 적절히 rootDiv에 맞게 설정하시오 -->
<!--    내부 div의 각 높이는 300px이다 -->
<!--    padding과 마진을 적절히 적용하시오 -->
<!-- 	모든 태그의 경계선은 1px로 기본값으로 설정한다 -->

   <div id='rootDiv' style="width: 1000px; 
   		height: 1000px; background-color: gray">
      <div>
      	Demonstrating the Box Model
      </div>
      <div>
         This text is the content of the box. 
      </div>
      
      <div>
      	Demonstrating the Box Model
      </div>
   </div>
   
</body>
</html>