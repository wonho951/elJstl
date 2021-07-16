<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>데이터형</h1>

	<p>	<!--  실습 01  -->
		<!--	servlet에서 넘어온 값  = request.attribute(),  request.getParameter() 	<!--얘네-->
		<!--	들을 표현할 때 사용한다. java보다 간결하다. 	-->
		
		정수형: ${10 }<br>	<!-- 나중에 값이 들어있는 변수를 넣는게 맞음. -->
		실수형: ${7.5 }<br>
		문자열: ${"정우성" }<br>	<!-- "" 안붙이면 '변수' 로 알아먹음. 그냥 문자 출력 하려면 "" 처럼 해야함. -->
		논리형: ${true }<br>
		null: ${null }<br>		<!-- null은 웹페이지 상에서는 공백으로 표현된다. -->
	</p>
</body>
</html>