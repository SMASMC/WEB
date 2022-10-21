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
	String title=URLDecoder.decode(request.getParameter("result"),"utf-8");
	//	String button=request.getParameter("input");//초기화면대체를 가져옴
	
%>
	<%=title %>





</body>
</html>