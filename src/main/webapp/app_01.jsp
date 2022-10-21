<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장 변수</title>
</head>
<body>
<%
	String appPath=application.getContextPath();//파일이 들어있는 폴더 위치를 찾아서 보여줌.
	String filePath=application.getRealPath("input.txt");//파일이 들어있는 상세 위치 C드라이브에서 부터 보여줌
%>
<%=appPath %><br>
<%=filePath %>

</body>
</html>