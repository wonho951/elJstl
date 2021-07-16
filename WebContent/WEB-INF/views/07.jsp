<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("nameP", "page name");	// 가장좁은 page 범위에 name라는 이름 넣어둠
	request.setAttribute("nameR", "request name");	// request 범위에 name라는 이름 넣어둠
	session.setAttribute("nameS", "session name");	// session 범위에 name라는 이름 넣어둠
	application.setAttribute("name", "application name");	//application 범위에 name라는 이름 넣어둠
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 내장객체(Scope) 생략시 우선순위 실험 -->
	
	<h1>범주 우선순위</h1>
	
	
	<h2>자바코드</h2>
	<!-- 얘네는 자기꺼 콕 찝어서 불렀으니 헷갈릴게 없음 -->
	page name = <%= pageContext.getAttribute("name") %> <br>
	request name = <%= request.getAttribute("name") %> <br>
	session name = <%= session.getAttribute("name") %> <br>
	application name = <%= application.getAttribute("name") %> <br>
	
	
	<h2>el표현</h2>
	<!-- 정석 표현법 -->
	page name = ${pageScope.name } <br>				<!-- 실무에서 잘 안쓴다. 태생이 생략하려고 한거기때문에 잘 안씀 ㅇㅇ 용도에 따라 이름 잘 지으면 이름도 많이 안겹침 -->
	request name = ${requestScope.name } <br>
	session name = ${sessionScope.name } <br>
	application name = ${applicationScope.name } <br>
	<br><br>
	
	<!-- 생략 표현법 -->
	page name = ${name } <br>	<!-- page의 name을 바꿨을때는 리퀘스트의 name 가져온다. 가장 좁은 영역부터 순서대로 뒤지면서 맞는 이름을 찾아온다. application의 이름은 못가져 오는듯? 왜 못가져오지-->
	
	
</body>
</html>