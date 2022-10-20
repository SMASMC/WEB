<%@page import="java.net.URLEncoder"%>
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
	String strAge=request.getParameter("age");//01번에서 text에 입력된 값을 가져옴
	int age=Integer.parseInt(strAge);//가져온 String 값을 int형으로 변형
	String pos=null;
	String url="http://localhost:8080/JSP/responseAge_03.jsp?";
	//url을 편하게 선언하여 가져오려고
	if(age<20){
		pos="불가능";
		pos=URLEncoder.encode(pos,"UTF-8");
		response.sendRedirect(url+"age="+age+"&pos="+pos);
	}
	else {
		pos="가능";
		pos=URLEncoder.encode(pos,"UTF-8");
		response.sendRedirect(url+"age="+age+"&pos="+pos);
		
	}
	
	%>



</body>
</html>