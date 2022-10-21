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
	request.setCharacterEncoding("utf-8");
	String food=request.getParameter("food");
	session.setAttribute("FOOD", food);//내가 지우기 전까지는 안 없어짐

%>



	<h1>좋아하는 동물?</h1>
	<form action="characterTest01_03.jsp">
	<input type="text" name="animal">
	<br>
	<br>
	<input type="submit" value="OK">

</form>
</body>
</html>