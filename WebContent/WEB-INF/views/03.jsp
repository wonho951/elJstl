<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 파라미터에 값이 있을때 -->

	<h1>파라미터</h1>
	<!-- localhost:8088/elJstl/03?id=you&pw=1234&name=재석&num1=100&num2=200 	요청을 이렇게 하겠다는 뜻-->
	
	<h2>자바문법: parameter값 꺼내쓰기</h2>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	<!-- 기존 쓰던 방식 -->
	id = <%= id %>	 <br>
	pw = <%= pw %>	 <br>
	name = <%= name %>	 <br>
	num1 = <%= num1 %>	 <br>
	num2 = <%= num2 %>	 <br>
	<br>
	<br>
	
	<h2>el: parameter값 꺼내쓰기</h2>	<!-- 위치만 알고 있으면 훨씬 편하게 쓸 수 있음. -->
	<br>
	<!-- 파라미터에서 바로 꺼내기 -->
	id = ${param.id }	 <br>
	pw = ${param.pw }	 <br>
	name = ${param.name }	 <br>
	num1 = ${param.num1 }	 <br>
	num2 = ${param.num2 }	 <br>
	<br><br>
	
	<p>
		
	</p>
</body>
</html>