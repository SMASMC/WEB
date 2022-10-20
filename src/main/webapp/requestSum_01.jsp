<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>




	<h1>계산을 위한 숫자를 입력하세요.</h1>
	<form action="requestSum_03.jsp" method="get">
		숫자 1: <select name="Num1">
<!-- 		select에 있는 name을 지정해줘야 option value로 값을 지정해 줄 수 있고 넘어갔을 때 -->
<!-- 		값을 전달해 줄 수 있음 -->
			<%for(int i=0;i<=100;i++){%>
			<option value="<%=i%>"><%=i%></option>
			<% }%>
		</select><br> 
		숫자 2: <select name="Num2">
			<%for(int j=0;j<=100;j++){%>
			<option value="<%=j%>"><%=j%></option>
			<% }%>
		</select><br> 

		계산방법 : <input type="radio" name="major" value="덧셈" checked="checked">덧셈<br>
		<input type="radio" name="major" value="뺄셈">뺄셈<br> <input
			type="radio" name="major" value="곱셈">곱셈<br> <input
			type="radio" name="major" value="나눗셈">나누기<br> <input
			type="submit" value="계산">
	</form>


</body>
</html>