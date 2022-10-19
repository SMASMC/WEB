<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>Addition</h1>
	<%



		int sum=0;

		for(int i=1;i<=100;i++){
			sum=i+sum;
			if(i<4){
				out.println(i+"+");
			}
			else if(i==5){
				out.println("......+");
			}
			else if(i>98&&i!=100){
				out.println(i+"+");
			}
			else if(i==100){
				out.println(i);
			}
		}
		out.println("="+sum);
%>



</body>
</html>