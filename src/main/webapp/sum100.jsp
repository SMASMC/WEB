<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1부터 100까지의 합은 <%=request.getAttribute("result") %><br>
	1부터 100까지의 합은 ${result}    <br><!-- 프론트에서는 이런식의 표현을 원함 -->

</body>
</html>