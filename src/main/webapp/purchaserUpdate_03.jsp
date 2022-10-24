<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<%

	request.setCharacterEncoding("utf-8");//글씨 깨지지 않게 선언
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
		
		String query="update purchaserinfo set name=?, tel=?, address=? where userid=?";
		

		ps=conn_mysql.prepareStatement(query);//sql 주소와 아이디 비번으로 접속하겠다
		ps.setString(1, name);//name에 값을 넣어주겠다.
		ps.setString(2, tel);//tel에 값을 넣어주겠다.
		ps.setString(3, address);//address에 값을 넣어주겠다.
		ps.setString(4, (String)session.getAttribute("ID"));//가져왔던 ID의 값을 설정해주겠다
		
		ps.executeUpdate();
		
		conn_mysql.close();
		session.setAttribute("NEW", userid);
		session.setAttribute("NEWNAME", name);
		session.setAttribute("NEWTEL", tel);
		session.setAttribute("NEWADRESS", address);
		//session으로 값을 저장해서 다른 곳에서도 호출이 가능하도록 해줌 session은 서버에 저장
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("purchaserUpdate_04.jsp");
%>