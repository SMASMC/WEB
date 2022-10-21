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
<!-- 저장결과화면 -->
	<form action="cart_04.jsp"method="post">
<h1>상품 선택 저장 결과</h1><br>
	<% 
	String title=URLDecoder.decode(request.getParameter("result"),"utf-8");
	//	String button=request.getParameter("input");//초기화면대체를 가져옴
	
%>
	<%=title %><br><br>
	
	<input type="submit" name="button" value="저장 결과 불러오기">
	</form>
</body>
</html>