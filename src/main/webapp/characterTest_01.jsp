<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격 테스트</title>
</head>
<body>

	<form action="characterTest_01" method="post">
		<h1>성격 테스트</h1>
		당신의 성격을 테스트합니다. 데이터를 입력한 후 확인 버튼을 눌러주세요.<br>
		이름은? : <input type="text" name="username"><br>

		좋아하는 색은?: <input type="radio" name="colour" value="yellow" >노랑
		<input type="radio" name="colour" value="red" checked="checked">빨강
		<input type="radio" name="colour" value="blue">파랑<br>
		
		국적: <select name="animal">
			<option>거북이</option>
			<option>말티즈</option>
			<option>토이푸들</option>
			</select><br>
		
		좋아하는 음식은? <input type="checkbox" name="food" value="짜장면">짜장면
		<input type="checkbox" name="food" value="짬뽕" checked="checked">짬뽕
		<input type="checkbox" name="food" value="탕수육" checked="checked">탕수육<br>
 		<input type="submit" name="button" value="확인">
		<!-- 	위에 있는 것을 제출하다 submit -->

	</form>


</body>
</html>