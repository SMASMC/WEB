<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.BufferedReader"%>
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
	BufferedReader reader = null;//BufferedReader는 class이다

	try {
		String filePath = application.getRealPath("file.txt");//파일 위치
		reader = new BufferedReader(new FileReader(filePath));
		while (true) {
			String str = reader.readLine();//한줄을 읽어오고 차단
			if (str == null) {//읽을 것이 없을 경우 즉, 다읽었을 경우
		break;
			}
			out.println(str + "<br>");
		}

	} catch (FileNotFoundException fnfe) {
		out.println("파일이 존재하지 않습니다.");
	} catch (IOException ioe) {
		out.println("파일을 읽을 수 없습니다.");//파일을 읽을 때 버퍼를 막아놓고 읽는다.
	} finally {//try에서 정상적으로 될경우와 catch에서 오류가 발생하든 finally로 와서 작업을 하도록 넘겨옴
		try {
			reader.close();//읽는 것을 닫아줘야 함
		} catch (Exception e) {

		}

	}
	%>



</body>
</html>