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

<!-- 				<input type="submit" value="입력"> -->
	<%
	int num1=Integer.parseInt(request.getParameter("num1"));//첫번째 수를 가져옴
	int num2=Integer.parseInt(request.getParameter("num2"));//두번째 수를 가져옴
	String button=request.getParameter("input");
	int result=0;
	
	String title=URLEncoder.encode("-","utf-8");//성인이란글자가 %글자로 바뀜
	int count=0;
	
	if(title.equals(URLEncoder.encode("-","utf-8"))){
		
		
		count++;
	}
	response.sendRedirect("arithmetic_mul.jsp?num1="+num1+"&num2="+num2+"&title="+title);
	%>



</body>
</html>