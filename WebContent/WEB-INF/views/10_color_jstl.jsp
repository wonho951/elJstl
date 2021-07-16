<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	<!-- 꼭있어야함. 위에 랭귀지보다 위에 있음 안됨 -->


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 기존 자바코드임 -->


	<%
	if( "1".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: red">빨강</span>
	<%
	} else if( "2".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: green">녹색</span>
	<%
	} else if( "3".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: blue">파랑</span>
	<%
	}
	%>
	
	<br>
	-------------------------------------------------------
	<br>
	
	<!-- html 태그처럼 시작과 끝에 씀 -->
	<!-- jstl에는 else가 없음. if밖에 없음. -->
	<!-- 태생이 쓰기 쉬우려고 만든거임. -->
	
	<c:if test="${param.color == 1 }">
		<span style="color: red">빨강</span>
	</c:if>
	
	<c:if test="${param.color == 2 }">
		<span style="color: green">녹색</span>
	</c:if>
	
	<c:if test="${param.color == 3 }">
		<span style="color: blue">파랑</span>
	</c:if>
	
	
</body>
</html>