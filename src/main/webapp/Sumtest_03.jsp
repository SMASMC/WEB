<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! 
	public int sum(String Num1,String Num2){
	
	int mul=Integer.parseInt(Num1)+Integer.parseInt(Num2);
	return mul;
	
}

%>
<%= sum(request.getParameter("Num1"),request.getParameter("Num2")) %>




</body>
</html>