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


	String title, result;//성인이란 글자(title)
	int age=Integer.parseInt(request.getParameter("age"));



	if(age>20){
		title=URLEncoder.encode("성인","utf-8");//성인이란글자가 %글자로 바뀜
		result=URLEncoder.encode("가능","utf-8");
		
	}else{
		title=URLEncoder.encode("미성년자","utf-8");
		result=URLEncoder.encode("불가능","utf-8");
		
	}
	response.sendRedirect("responseAge_07.jsp?age="+age+"&title="+title+"&result="+result);
%>



</body>
</html>