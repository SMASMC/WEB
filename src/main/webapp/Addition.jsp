<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>

		<h1>Addition</h1>
<%
		int a=2;
		int b=20;
		int addition=a+b;	
		int subt=a-b;	
		int mul=a*b;	
		double div=(double)a/b;	
		int rem=a%b;
		
		for(int i=1;i<=9;i++){
		out.println(a+"*"+i+"="+(a*i)+"<br>");
		out.println("===================="+"<br>");
		}
		
%>
<br>
<br>
<%=a %>+<%=b %>=<%=addition %><br>
<%=a %>-<%=b %>=<%=subt %><br>
<%=a %>*<%=b %>=<%=mul%><br>
<%=a %>/<%=b %>=<%=div%><br>
<%=a %>%<%=b %>=<%=rem%><br>
<%-- 		<%=은 원하는 함수를 출력하는 역할을 함 %> --%>
</body>
</html>