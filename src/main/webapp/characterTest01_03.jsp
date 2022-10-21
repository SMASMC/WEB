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
	String food=request.getParameter("animal");//characterTest01_02에 있던 animal을 가져옴
	session.setAttribute("ANIMAL", food);//내가 지우기 전까지는 안 없어짐

%>

	당신은 <%=session.getAttribute("FOOD") %>와(과)<!-- 첫번째 있던 FOOD를 가져올 수 있음 session에 들어가는 값을 동일시 해야 팀플이 가능 -->
	<%=session.getAttribute("ANIMAL")%>을 좋아하는 성격입니다. <br>
	<%session.invalidate(); %><!-- session에 쌓인 것을 삭제해 주는 역할 -->


</body>
</html>