<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	사용자 ID: <%=session.getAttribute("NEWID") %>에서<br>
	성명: <%=session.getAttribute("NEWNAME") %><br>
	전화번호: <%=session.getAttribute("NEWTEL") %><br>
	주소: <%=session.getAttribute("NEWADRESS") %><br>
	상기의 정보로 수정되었습니다. 감사합니다.<br>
	<%session.invalidate();%><!-- session닫아줘야 함 -->
<!-- session으로 값을 가져와줌 -->
</body>
</html>