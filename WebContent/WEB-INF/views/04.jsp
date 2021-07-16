<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 어트리뷰트에 값이 있을때 -->

	<h1>requset.getAttribute 값 꺼내쓰기</h1>

	<h2>자바문법</h2>
	<%
		UserVo userVo = (UserVo) request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	name = <%= userVo.getName() %>	<br>
	email = <%= userVo.getEmail() %>	<br>
	password = <%= userVo.getPassword() %>	<br>
	gender = <%= userVo.getGender() %>	<br>
	<br>
	
	num = <%= num %><br>
	str = <%= str %><br>
	<br><br><br>
	
	<h2>el 표현법</h2>
	num = ${requestScope.num }<br>	<!-- el 표현법으로 어트리뷰트안에 있는 값 꺼내오는법 -->
	str = ${requestScope.str }<br>	<!-- 단편적으로 1이라는 값이 들어가 있어서 스코프만 씀.  -->
	<br>
	
	name = ${requestScope.userVo.name } <br> <!--  내부적으로 getName()로 작동함. 실제로는 게터의 getName()가 작동한거임. 게터가 없으면 불러올 수 없음. vo로 묶여있기 때문에 게터로찾아오는거임.-->
	email = ${requestScope.userVo.email }	<br>
	password = ${requestScope.userVo.password }	<br>
	gender = ${requestScope.userVo.gender }	<br>
	
	
	
</body>
</html>