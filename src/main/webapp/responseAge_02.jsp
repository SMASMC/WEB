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
	String minzza=null;
	String url="http://localhost:8080/JSP/responseAge_03.jsp?" ;
	if(age<20){
		pos="불가능";
		minzza="미성년자";
		minzza=URLEncoder.encode(minzza,"UTF-8");
		pos=URLEncoder.encode(pos,"UTF-8");//encoder로 값을 decoder로 보내는 역할
		response.sendRedirect(url+"age="+age+"&pos="+pos+"&minzza="+minzza);//url에 값을 넣어주는 역할을 함
	}
	else {
		pos="가능";
		minzza="성인";
		minzza=URLEncoder.encode(minzza,"UTF-8");
		pos=URLEncoder.encode(pos,"UTF-8");
		response.sendRedirect(url+"age="+age+"&pos="+pos+"&minzza="+minzza);
	}
	
	%>



</body>
</html>