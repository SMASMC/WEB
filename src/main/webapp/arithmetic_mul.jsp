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


	
	<% 
	String num1=request.getParameter("num1");
	String num2=request.getParameter("num2");
	String title=URLDecoder.decode(request.getParameter("title"),"utf-8");
	//	String button=request.getParameter("input");//초기화면대체를 가져옴
	
%>
	<form action="arithmetic_main.jsp">
	첫번째 수:<%=num1 %><br>
	두번째 수:<%=num2 %><br>
	<%=num1 %><%=title %><%=num2 %>=<br>
			<input type="submit" value="초기화면">
<!-- 			<input type="submit" value="button"> 값안에 ""안에 넣어줘서 변경해보기-->
	</form>


</body>
</html>