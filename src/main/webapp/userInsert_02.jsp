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
	String id=request.getParameter("id");
	session.setAttribute("ID", id);//내가 지우기 전까지는 안 없어짐
	String password=request.getParameter("password");
	session.setAttribute("PASSWORD", password);//내가 지우기 전까지는 안 없어짐
	String name=request.getParameter("name");
	session.setAttribute("NAME", name);//내가 지우기 전까지는 안 없어짐
	
	%>
<!-- userInsert_01에서 값을 지정하고 넘겼으니까
여기에서 session을 호출해줘야 다음페이지에서 넘어갈 수 있도록 해준다. -->
	<form action="userInsert_03.jsp" method="post">
	<h1>약관</h1><br>
	 ------------------------------------<br>
	 1. 회원 정보는 웹사이트의 운영을 위해서만 사용 됩니다.<br>
	 2. 웹사이트의 정상 운영을 방해하는 회원은 탈퇴 처리 합니다.<br>
	 ------------------------------------<br>
	 위의 약관에 동의 하십니까?<br>

	<input type="radio" name="terms" value="동의함" checked="checked">동의 함
	<input type="radio" name="terms"value="동의하지않음">동의 하지 않음<br>
	
	<input type="submit" name="button" value="확인">
</form>


</body>
</html>