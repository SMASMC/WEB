<%@page import="java.util.GregorianCalendar"%>
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
	GregorianCalendar now=new GregorianCalendar();
	
	String date=String.format("%TF", now);//%TF: yyyy-mm-dd로 표기
	String time=String.format("%TT", now);//%TF: yyyy-mm-dd로 표기

%>
	오늘 날짜: <%=date %><br>
	현재 시각: <%=time %><br>
	
	<%=String.format("%TY년 %Tm월 %Td일", now, now, now) %><br><!-- //TM은 분으로 나오고, Tm은 달이 나옴 -->
	<%=String.format("%TH시 %TM분 %TS초", now, now, now) %><br>
</body>
</html>