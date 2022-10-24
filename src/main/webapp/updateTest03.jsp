<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<%
	String userid=request.getParameter("userid");
	String url_mysql="jdbc:mysql://localhost:3306/wtest?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql="root";
	String pw_mysql="6548";
	//sql 주소와 아이디 비번으로 접속하겠다

	PreparedStatement ps=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql=DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//sql 주소와 아이디 비번으로 접속하겠다
		Statement stmt_mysql=conn_mysql.createStatement();
		
		String query="update wtest set userid=? where id=?";
		
// 		INSERT INTO `customer`.`purchaserinfo` (`userid`, `name`) VALUES ('msoko2', '송명순');

		ps=conn_mysql.prepareStatement(query);//sql 주소와 아이디 비번으로 접속하겠다
		ps.setString(1, userid);//userid에 값을 넣어주겠다
		ps.setString(2, (String)session.getAttribute("ID"));//가져왔던 ID의 값을 설정해주겠다
		ps.executeUpdate();
		
		conn_mysql.close();
		session.setAttribute("NEW", userid);
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("updateTest04.jsp");
%>