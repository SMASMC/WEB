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
	String major = request.getParameter("major");//라디오 박스는 하나만 가져옴
	String num1 = request.getParameter("Num1");
	String num2 = request.getParameter("Num2");
	%>
	<%!public double sachick(String Num1, String Num2, String major) {

		int result = 0;
		int num3 = Integer.parseInt(Num1);
		int num4 = Integer.parseInt(Num2);
		switch (major) {

		case "덧셈":
			result = Integer.parseInt(Num1) + Integer.parseInt(Num2);
			break;
		case "뺄셈":
			result = Integer.parseInt(Num1) - Integer.parseInt(Num2);
			break;
		case "곱셈":
			result = Integer.parseInt(Num1) * Integer.parseInt(Num2);
		case "나눗셈":
			result = Integer.parseInt(Num1) / Integer.parseInt(Num2);
			break;

		}

		return result;
	}%>
	두수의 <%=major %>은 <%=sachick(num1, num2, major) %>입니다.





</body>
</html>