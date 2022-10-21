<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 저장 결과</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	String quantity=request.getParameter("quantity");//수량을 가져옴
	String size=request.getParameter("size");//크기를 가져옴
	String colour=request.getParameter("colour");//색상을 가져옴
	
	String fileName="file.txt";//만들어지는 파일명
	
	PrintWriter writer=null;//파일 만들어 주는 역할을 함
	
	try{
		String filePath=application.getRealPath(fileName);//파일 위치
		
		
		writer=new PrintWriter(filePath);
		writer.println("수량:"+quantity);//연 파일에 글씨를 작성해주는 역할을 함
		writer.println("크기:"+size);//연 파일에 글씨를 작성해주는 역할을 함
		writer.println("색상:"+colour);//연 파일에 글씨를 작성해주는 역할을 함
		
		String result=URLEncoder.encode("저장되었습니다.","utf-8");//글자가 %글자로 바뀜
		response.sendRedirect("cart_03.jsp?result="+result+"&quantity="+quantity+"&size="+size+"&colour="+colour);
	}catch(IOException ioe){
		String result=URLEncoder.encode("파일에 데이터를 쓸 수 없습니다.","utf-8");//글자가 %글자로 바뀜
		response.sendRedirect("cart_03.jsp?result="+result+"&quantity="+quantity+"&size="+size+"&colour="+colour);
	}finally{
		try{
			writer.close();
		}catch(Exception e){
			
		}
	}
	
%>

</body>
</html>