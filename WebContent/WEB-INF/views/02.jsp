<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>연산</h1>
	
	<p>
	
		\${5 + 2 } --> ${5 + 2 }<br>	<!-- 페이지상에 7로 출력 		\${5+2 } = 앞에 \ 붙이면 그냥 저거 그대로 출력됨-->
		\${5 - 2 } --> ${5 - 2 }<br>
		\${5 * 2 } --> ${5 * 2 }<br>
		<br><br>
		
		<!-- 나누기 -->
		\${5 / 2 } --> ${5 / 2 }<br>
		<!--\${5 div 2 } --> <!--${5 div 2 }<br>		<!-- 나누기는 div로 표기 할 수도 있음. / <<-얘랑 똑같음 -->
		<br><br>
		
		<!-- 몫 표현 -->
		\${5 % 2 } --> ${5 % 2 }<br>
		\${5 mod 2 } --> ${5 mod 2 }<br>	<!-- 다른표현으로는 mod 가 있는데 안쓸듯;; -->
		<br><br>
		
		
		<!-- 부등호 -->
		\${5 > 2 } --> ${5 > 2 }<br>	<!-- true false  이런 형태로 나옴 -->
		\${5 gt 2 } --> ${5 gt 2 }<br>	<!-- 다른표현 -->
		<br><br>
		
		\${5 < 2 } --> ${5 < 2 }<br>
		\${5 lt 2 } --> ${5 lt 2 }<br>	<!-- 다른표현 -->
		<br><br>
		
		
		\${5 >= 2 } --> ${5 >= 2 }<br>
		\${5 ge 2 } --> ${5 ge 2 }<br>	<!-- 그레이트이퀄? -->
		<br><br>
		
		\${5 <= 2 } --> ${5 <= 2 }<br>
		\${5 le 2 } --> ${5 le 2 }<br>	<!-- 다른표현 -->
		<br><br>
		
		\${5 == 2 } --> ${5 == 2 }<br>
		\${5 eq 2 } --> ${5 eq 2 }<br>	<!-- 다른표현 -->
		<br><br>
		
		\${5 != 2 } --> ${5 != 2 }<br>
		<!--  \${5 ne 2 } --> <!--  ${5 ne 2 }<br>	<!-- 다른표현 -->
		<br><br>
		
		
<%-- 		\${5 >= 2 ? 5:2 } --> ${5 >= 2 ? 5:2 }	<!-- 5가 2보다 크냐고 묻는 조건식임.  a? b:c 이런거 --> --%>
		<br><br>
		
		
<%-- 		\${(5>2) || (2>10) } --> ${(5>2) || (2>10) }	<!-- true --> --%>
<%-- 		\${(5>2) && (2>10) } --> ${(5>2) && (2>10) } --%>
<%-- 		\${{5>2} && {2>10} } --> ${{5>2} && {2>10} }	<!-- {} 사용 잘해야함. --> --%>
<%-- 		\${5>2} && {2>10}  --> ${5>2} && ${2>10} --%>
<!-- 		<br><br> -->
		 
		\${empty str } --> ${empty str }	<!-- 비어있냐는 뜻 -->
		<br><br>
		
		
		<%
			String val = (String)request.getAttribute("reqVal");	//복잡함. 그래서 표현 방식을 바꿈. 밑에 있음
		%>
		<%= val %>
		<br><br>
		
		${reqVal }	<!--  reqVal 바로 출력 가능 -->
	</p>

</body>
</html>