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
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));

	request.setAttribute("ADD", num1 + num2);//속성들을 보내주는 것
	request.setAttribute("SUB", num1 - num2);//속성들을 보내주는 것
	request.setAttribute("MUL", num1 * num2);//속성들을 보내주는 것
	request.setAttribute("DIV", (double) num1 / num2);//속성들을 보내주는 것
	request.setAttribute("TEST", "대한민국");//encoding으로 굳이 값을 URL로 저장하지 않아도 값을 넘겨줄 수 있음

	RequestDispatcher dispatcher = request.getRequestDispatcher("forward_03.jsp");
	dispatcher.forward(request, response);//모듈안에 데이터를 만들어서 같이 날려줌
	%>

</body>
</html>