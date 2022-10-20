<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더하기 결과</title>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	String num1 = request.getParameter("Num1");
	String num2 = request.getParameter("Num2");
	String []major={"덧셈","뺄셈","곱셈","나눗셈"};
	String str=Arrays.toString(major);
	int result = 0;
	if(str.contains("덧셈")){//contains의미
		result=Integer.parseInt(num1) + Integer.parseInt(num2);
		out.println("덧셈결과는"+result+"입니다"+"<br>");
	}
	if(str.contains("뺄셈")){
		result=Integer.parseInt(num1) - Integer.parseInt(num2);
		out.println("뺄셈결과는"+result+"입니다"+"<br>");
	}
	if(str.contains("곱셈")){
		result=Integer.parseInt(num1) * Integer.parseInt(num2);
		out.println("덧셈결과는"+result+"입니다"+"<br>");
	}
	if(str.contains("나눗셈")){
		result=Integer.parseInt(num1) / Integer.parseInt(num2);
		out.println("나눗셈결과는"+(double)result+"입니다"+"<br>");
	}
	%>




</body>
</html>