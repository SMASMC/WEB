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

	String name=request.getParameter("name");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	String fileName="file.txt";//만들어지는 파일명
	
	
	PrintWriter writer=null;//파일 만들어 주는 역할을 함
	
	try{
		String filePath=application.getRealPath(fileName);//파일 위치
		
		
		writer=new PrintWriter(filePath);
		writer.println("제목:"+title);//연 파일에 글씨를 작성해주는 역할을 함
		writer.println("글쓴이:"+name);//연 파일에 글씨를 작성해주는 역할을 함
		writer.println(content);//연 파일에 내용을 작성해주는 역할
		
		String result=URLEncoder.encode("저장되었습니다.","utf-8");//글자가 %글자로 바뀜
		response.sendRedirect("writeFile_03.jsp?result="+result);
	}catch(IOException ioe){
		String result=URLEncoder.encode("파일에 데이터를 쓸 수 없습니다.","utf-8");//글자가 %글자로 바뀜
		response.sendRedirect("writeFile_03.jsp?result="+result);
	}finally{
		try{
			writer.close();
		}catch(Exception e){
			
		}
	}
	
%>

</body>
</html>