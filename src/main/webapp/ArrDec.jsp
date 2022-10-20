<%@page import="java.util.Arrays"%>
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
int [] iArr={10,20,30};
out.print(iArr+"<br>");//hash코드가 나오게 됨
out.print(Arrays.toString(iArr));//배열 전체를 뽑아줌 대괄호 안으로


%>

</body>
</html>