<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="vo.UserVo" %>

<%
	UserVo authuser = (UserVo)session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<div id="header" class="clearfix">
	<h1>
		<a href="/mysite/main">MySite</a>
	</h1>

	<%
	if (authuser != null) { //로그인 성공이라면
	%>
		<ul>
			<li><%=authuser.getName()%> 님 안녕하세요^^</li>
			<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
	<%
	} else {
	%>
		<ul>
			<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>
	<%
	}
	%>
</div>
<!-- //header -->
	
	
	
	
	-----------------------------------<br><br>
	
<div id="header" class="clearfix">
	<h1>
		<a href="/mysite/main">MySite</a>
	</h1>
	
	<c:choose>
		<c:when test= "${!empty authUser }">	<!-- authUser가 null이 아니라면 이라는 뜻 -->
			<ul>
				<li>${authUser.name } 님 안녕하세요^^</li>
				<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
				<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
			</ul>
		</c:when>
		
		<c:otherwise>
			<ul>
				<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
				<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
			</ul>
		</c:otherwise>
	</c:choose>

</div>
<!-- //header -->
	
	
	
	
</body>
</html>