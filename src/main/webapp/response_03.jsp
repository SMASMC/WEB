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
	String sitename = request.getParameter("sitename");
		if(sitename.equals("naver")||sitename.equals("네이버")){
		response.sendRedirect("https://www.naver.com");
		}
		else if(sitename.equals("daum")||sitename.equals("다음")){
		response.sendRedirect("https://www.daum.com");
		}
		else if(sitename.equals("구글")||sitename.equals("google")){
		response.sendRedirect("https://www.google.com");
		}
		else {
		response.sendRedirect("https://www.yahoo.com");
		}

	
	%>



</body>
</html>