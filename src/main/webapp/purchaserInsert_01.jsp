<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			return false
		}
		if(!regExpName.test(name)){
			alert("이름은 한글만으로 입력해주세요")
			form.name.select()
			return false
		}
		if(!regExpTel.test(tel)){
			alert("연락처 입력을 확인해주세요")
			form.tel.select()
			return false
		}
		if(!regExpEmail.test(address)){
			alert("주소 입력을 확인해주세요")
			form.address.select()
			return false
		}
		
			
		form.submit()//form.submit()으로 해줘서 값이 다음 페이지로 넘어가도록 해줌
	}

</script>


<body>
	<h3>아래의 항목을 입력후 확인 버튼을 누르세요!</h3>

	<form name="Member" action="purchaserInsert_02.jsp" method="post">
		사용자ID:<input type="text" name="userid"size="10"><br>
		이름:<input type="text" name="name"size="10"><br>
		전화번호:<input type="text" name="tel"size="15"><br>
		주소:<input type="text" name="address"size="20"><br>
		<!-- id는 영문만 성명은 한글만 전화번호는 자릿수 체크 주소는 한글과 숫자만 -->
		<input type="button"value="OK"onclick="checkMember()">
	
	</form>



</body>
</html>