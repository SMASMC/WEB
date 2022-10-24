<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<body>

	<h4>아이디를 수정 후 확인 버튼을 누르세요</h4>
<%
	
	String id=request.getParameter("id");
	String strUserid=null;

	
	String url_mysql="jdbc:mysql://localhost:3306/wtest?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql="root";
	String pw_mysql="6548";
	//sql 주소와 아이디 비번으로 접속하겠다
	
	String query="select userid from wtest where id= "+id;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql=DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//sql 주소와 아이디 비번으로 접속하겠다
		Statement stmt_mysql=conn_mysql.createStatement();
		
		ResultSet rs=stmt_mysql.executeQuery(query);
		
		if(rs.next()){
			strUserid=rs.getString(1);//값을 가져온 것을 보여줌
		}
		
		conn_mysql.close();
		
		session.setAttribute("ID", id);
		session.setAttribute("OLD", strUserid);
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>


<form action="updateTest03.jsp" method="post">
사용자 ID: <input type="text" name="userid" size="10"value="<%=strUserid %>"><!-- userid를 넘겨준다 -->
	<input type="submit"value="수정">

</form>

</body>
</html>