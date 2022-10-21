<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 여기에서 동의한 값이면 userInsert_04로 동의 안하면 userInsert_01로 -->


	<%
	request.setCharacterEncoding("utf-8");
	String terms=request.getParameter("terms");
	session.setAttribute("TERMS", terms);//내가 지우기 전까지는 안 없어짐
// 	String noterms=request.getParameter("noterms");
// 	session.setAttribute("NOTERMS", noterms);//내가 지우기 전까지는 안 없어짐
	
	if(terms.equals("동의함")){
		response.sendRedirect("userInsert_04.jsp");
		
	}else{
		response.sendRedirect("userInsert_01.jsp");
	}
	
	%>
	
	
	



</body>
</html>