<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




	<h1>미성년자</h1>
	<br>
	<%
	request.setCharacterEncoding("utf-8");
	String rText = request.getParameter("encText");

	String text = URLDecoder.decode(rText, "UTF-8");
	%>
	<%=rText%>
	<p>
		<a href="responseAge_01.jsp">처음으로 이동</a>
	</p>



</body>
</html>