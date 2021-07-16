<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %> 

<%
	UserVo authuser = (UserVo)session.getAttribute("authUser");	//authUser 값을 꺼내오셈.  형변환 해줘야함
%>

	<div id="header" class="clearfix">
		<h1>
			<a href="/mysite/main">MySite</a>
		</h1>

		<% if(authuser != null){	//로그인 성공이라면 %>
			<ul>
				<li><%=authuser.getName() %> 님 안녕하세요^^</li>
				<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
				<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
			</ul>			
		<% } else { %>
				<ul>
					<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
					<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
				</ul>
		<%} %>
	</div>
	<!-- //header -->
	
	
	
	<!-- -------------------------------------------------------------- -->
	
	
	
	<!-- 위 식 간단하게 표현할거. -->
	<div id="header" class="clearfix">
		<h1>
			<a href="/mysite/main">MySite</a>
		</h1>

		<% if(authuser != null){	//로그인 성공이라면 %>
			<ul>
				<li>${sessionScope.authUser.name } 님 안녕하세요^^</li>	<!-- 이거 간단하게 표현할거임ㅇㅇ  / 위치를 알이야 어떤 스코픈지 사용 가능   param은 꼭 써줘야하지만 어트리뷰트와 세션스코프는 생략 가능-->
				<!-- Scope 생략하고 쓰면 작은 영역부터 찾아서 이름 같은거 찾아옴. 남의 코드 봤을때 생략되있는거 보고 어디껀지 파악하기 힘듦. -->
				<li><a href="" class="btn_s">로그아웃</a></li>
				<li><a href="" class="btn_s">회원정보수정</a></li>
			</ul>			
		<% } else { %>
				<ul>
					<li><a href="" class="btn_s">로그인</a></li>
					<li><a href="" class="btn_s">회원가입</a></li>
				</ul>
		<%} %>
	</div>
	<!-- //header -->