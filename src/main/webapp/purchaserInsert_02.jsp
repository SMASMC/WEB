<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- 입력만 하기 때문에 보여지는 Page는 없음 -->

<%
	request.setCharacterEncoding("utf-8");//글씨 깨지지 않게 선언 먼저선언을 해줘야 파일형식이 어떻게 저장되는지 선언을 해줌
	String userid=request.getParameter("userid");
	String name=request.getParameter("name");
	String tel=request.getParameter("tel");
	String address=request.getParameter("address");

	String url_mysql="jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	//port번호/table명?서버주소위치
	String id_mysql="root";
	String pw_mysql="6548";
	//sql 주소와 아이디 비번으로 접속하겠다

	PreparedStatement ps=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql=DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//sql 주소와 아이디 비번으로 접속하겠다
		Statement stmt_mysql=conn_mysql.createStatement();
		
		String query="insert into purchaserinfo (userid, name, tel, address, insertdate) values (?,?,?,?,now())";
		
		ps=conn_mysql.prepareStatement(query);//sql 주소와 아이디 비번으로 접속하겠다
		ps.setString(1, userid);//userid에 값을 넣어주겠다
		ps.setString(2, name);//userid에 값을 넣어주겠다
		ps.setString(3, tel);//userid에 값을 넣어주겠다
		ps.setString(4, address);//userid에 값을 넣어주겠다
		ps.executeUpdate();
		
		conn_mysql.close();//mysql을 닫겠다
		
		session.setAttribute("NEWID", userid);
		session.setAttribute("NEWNAME", name);
		session.setAttribute("NEWTEL", tel);
		session.setAttribute("NEWADRESS", address);
		//session으로 값을 저장해서 다른 곳에서도 호출이 가능하도록 해줌 session은 서버에 저장
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("purchaserInsert_03.jsp");
%>