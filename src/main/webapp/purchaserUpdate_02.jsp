<%@page import="java.nio.file.attribute.FileOwnerAttributeView"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">//자바 스크립트에서는 간단한 내역만 작성하는게 좋음 모든 코드들이 비춰지기 때문에
   function checkMember(){
   
   
      var regExpId = /^[a-z|A-Z]/
      //id는 영문만 받기      
      var regExpName = /^[가-힣]{3}$/
      var regExpTel = /^\d{3}-\d{3,4}-\d{4}$/
      var regExpEmail = /^[가-힣|0-9]/i
      
      //id, 이름, 비밀번호, 전화번호, 이메일에 대한 정규화
      //!!주의!! *을넣어주면 무시하고 넘어가게됨
      var form=document.Member//밑에 form을 가져오기위해 변수같이 선언
      
      var userid=form.userid.value
      var name =form.name.value
      var tel=form.tel.value
      var address=form.address.value
      
      
      if(!regExpId.test(userid)){
         alert("아이디는 영문으로 시작해 주세요")
         form.id.select()
         return
      }
      if(!regExpName.test(name)){
         alert("이름은 한글만으로 입력해주세요")
         form.name.select()
         return
      }
      if(!regExpTel.test(tel)){
         alert("연락처 입력을 확인해주세요")
         form.tel.select()
         return
      }
      if(!regExpEmail.test(address)){
         alert("주소 입력을 확인해주세요")
         form.address.select()
         return
      }
         
     form.submit()//form.submit()으로 해줘서 값이 다음 페이지로 넘어가도록 해줌
   }

</script>

<body>
	<%
	request.setCharacterEncoding("utf-8");//글씨 깨지지 않게 선언
	String userid = request.getParameter("userid");//가져올 유저 id
	String strName = null;
	String strTel = null;
	String strAddress = null;

	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "6548";
	//sql 주소와 아이디 비번으로 접속하겠다

	String query = "select userid, name, tel, address from purchaserinfo where userid= '" + userid + "'";
	//'" + userid+ "'";이거 해줘야 함 select문이면
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//sql 주소와 아이디 비번으로 접속하겠다
		Statement stmt_mysql = conn_mysql.createStatement();

		ResultSet rs = stmt_mysql.executeQuery(query);

		if (rs.next()) {
			userid = rs.getString(1);//값을 가져온 것을 보여줌
			strName = rs.getString(2);//값을 가져온 것을 보여줌
			strTel = rs.getString(3);//값을 가져온 것을 보여줌
			strAddress = rs.getString(4);//값을 가져온 것을 보여줌
		}

		conn_mysql.close();

		session.setAttribute("ID", userid);
		session.setAttribute("NAME", strName);
		session.setAttribute("TEL", strTel);
		session.setAttribute("ADDRESS", strAddress);
		//session으로 값을 저장해서 다른 곳에서도 호출이 가능하도록 해줌 session은 서버에 저장

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<h3>수정 후 확인 버튼을 누르세요!</h3>
	
	<form name="Member" action="purchaserUpdate_03.jsp" method="post">
		사용자 ID: <input type="text" name="userid" size="10" value="<%=userid%>"><br>
		성명: <input type="text" name="name" size="10" value="<%=strName%>"><br>
		전화번호: <input type="text" name="tel" size="10" value="<%=strTel%>"><br>
		주소: <input type="text" name="address" size="10"value="<%=strAddress%>"><br>
		<!-- userid를 넘겨준다 -->
		<input type="button" value="수정" onclick="checkMember()">

	</form>



</body>
</html>