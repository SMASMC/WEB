<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 메인 -->
	<form action="cart_02.jsp"method="post">
		<!-- 	post라고 하면 주소록에 나의 데이터 전송을 안보이게 할 수 있음 -->
		<!-- 	get은 주소록에 데이터가 날아가는 것을 보여줌 -->
		수량: <input type="text" name="quantity"><br><br>

		크기: <input type="radio" name="size" value="big">대
		<input type="radio" name="size" value="middle" checked="checked">중
		<input type="radio" name="size" value="small">소
		<br><br>
		색상: <select name="colour">
			<option>카키</option>
			<option>베이지</option>
			<option>브라운</option>
<!-- 			value로 들어감 -->
		</select><br><br>
		<input type="submit" name="button" value="저장">
		<!-- 	위에 있는 것을 제출하다 submit -->

	</form>
</body>
</html>