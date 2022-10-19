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
	int sum = 0;
	int sum2 = 0;

	for (int i = 1; i <= 100; i++) {
		sum = i + sum;
	}
	out.println("1부터 100까지의 합=" + sum + "<br>");
	for (int j = 101; j <= 200; j++) {
		sum2 = j + sum2;
	}
	out.println("1부터 200까지의 합=" + (sum2 + sum) + "<br>");

	out.println("5부터 100까지의 합=" + ((100 * (100 + 1) / 2) - (5 * (5 + 1) / 2)) + "<br>");
	out.println("1부터 200까지의 합=" + 200 * (200 + 1) / 2 + "<br>");
	%>

</body>
</html>