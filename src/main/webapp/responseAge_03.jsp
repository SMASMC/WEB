<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주류판매 가능여부</title>
</head>
<body>

	<%
	
	request.setCharacterEncoding("utf-8");//utf-8로 encoding한다는 것을 명시
	String getNum1=request.getParameter("age");// age값을 불러온다.
	String getNum2=request.getParameter("pos");// pos값을 불러온다.
	String getNum3=request.getParameter("minzza");// minzza값을 불러온다.
	
	%>
		<h1><%=getNum3 %></h1><!-- 저장한 minzza값을 호출해준다-->
	<br>
	당신의 나이는 <%=getNum1 %>이므로 주류 구매가 <%=getNum2 %>합니다.<br>
		<a href="responseAge_01.jsp">처음으로 이동</a>



</body>
</html>