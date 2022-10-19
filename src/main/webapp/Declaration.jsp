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
	int i=10;
	String str="I have a dream.";
	
	out.println("i="+i+"<br>");
	
	for(int j=2;j<=5;j++){
		out.println(j+"+"+"1"+"="+sum(j,1)+"<br>");
	}

%>

<%!
// 선언자는 <%!로 선언해준다. 메소드 같은 역할을 해줌.
	public int sum(int a,int b){
	
	int mul=a+b;
	return mul;
}
	int i=1;
	public int mul(){
		i*=2;
		return i;
	}
//2*1 2
//2*2 4
//2*2*2 8
//2*2*2*2 16
//2*2*2*2*2 32

%>
2^1=<%=sum(2,1) %><br>
2^2=<%=sum(2,2) %><br>
2^3=<%=sum(2,3) %><br>
2^4=<%=sum(2,4) %><br>
2^5=<%=sum(2,5) %><br>

2^1=<%=mul() %><br>
2^2=<%=mul() %><br>
2^3=<%=mul() %><br>
2^4=<%=mul() %><br>
2^5=<%=mul() %><br>




</body>
</html>