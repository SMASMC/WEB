<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자를 입력하세요</title>
</head>
<body>

	이름을 입력하고 확인 버튼을 누르세요.
	<br>
	<br>
	<form action="Sumtest_03.jsp" method="get">
	<!-- post로 할 경우 입력한 글자가 가려져서 읽혀지지 않음 -->
		숫자1: <input type="text" name="Num1">
		숫자2: <input type="text" name="Num2">
				<input type="submit" value="더하기">
		
	</form>



</body>
</html>