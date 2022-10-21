<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	덧셈: <%=request.getAttribute("ADD") %><br>
	뺄셈: <%=request.getAttribute("SUB") %><br>
	곱셈: <%=request.getAttribute("MUL") %><br>
	나눗셈: <%=request.getAttribute("DIV") %><br>
	test: <%=request.getAttribute("TEST") %><br>
	
	
<!-- getAttribute로 setAttrubute를 가져오게 됨 -->
<!-- URL에서 forward_02가 호출되는 것처럼 보이지만 실질적으로는 forward_03이 호출되어 작업하게 됨 -->


</body>
</html>