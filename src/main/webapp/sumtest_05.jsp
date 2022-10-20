<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>

<%!
	public String optionNum(int num){
	String str="";
	for(int i=0;i<=num;i++){
		str+="<option value= "+i+">"+i+"</option>";
	}
	
	return str;
}
%>


	<h1>계산을 위한 숫자를 입력하세요.</h1>
	<form action="requestSum_03.jsp" method="get">
		숫자 1: <select name="Num1">
		<%out.println(optionNum(200));
		%>
			
		</select><br> 
		숫자 2: <select name="Num2">
		<%out.println(optionNum(200));
		%>
		</select><br> 

		계산방법 : <input type="radio" name="major" value="덧셈" checked="checked">덧셈<br>
		<input type="radio" name="major" value="뺄셈">뺄셈<br> <input
			type="radio" name="major" value="곱셈">곱셈<br> <input
			type="radio" name="major" value="나눗셈">나누기<br> <input
			type="submit" value="계산">
	</form>


</body>
</html>