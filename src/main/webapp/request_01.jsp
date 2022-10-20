<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 입력</title>
</head>
<body>

	이름을 입력하고 확인 버튼을 누르세요.
	<br>
	<br>
	<form action="request_02.jsp" method="get">
	<!-- post로 할 경우 입력한 글자가 가려져서 읽혀지지 않음 -->
		이름: <input type="text" name="yourname">
				<input type="submit" value="확인">
		
	</form>
	<%
	String name="James";
	
	%>
	
	<a href="http://localhost:8080/JSP/request_02.jsp?yourname=<%=name%>">Test</a>
<!-- 	하이퍼링크를 눌렀을 경우 자동으로 값을 넘겨주는 기능을 함. -->
</body>
</html>