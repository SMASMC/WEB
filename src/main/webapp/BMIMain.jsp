<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="BMI_01.jsp" method="get">
	<table border="0">
		<tr><td>키(cm):</td> 
		<td><input type="text" name="cm"size="10"></td></tr><br>
<!-- 		select에 있는 name을 지정해줘야 option value로 값을 지정해 줄 수 있고 넘어갔을 때 -->
<!-- 		값을 전달해 줄 수 있음 -->
		<tr><td>kg: </td>
		<td><input type="text" name="kg"size="10"></td></tr><br>
		
		<tr><td></td><td><input type="submit" value="Calc BMI"></td></tr><br>
		</table>
	</form>
	

</body>
</html>