<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPTest_01</title>
</head>
<body>

<form action="#" method="post">
		<table>

			<!-- 	post라고 하면 주소록에 나의 데이터 전송을 안보이게 할 수 있음 -->
			<!-- 	get은 주소록에 데이터가 날아가는 것을 보여줌 -->
<!-- 			tr은 테이블 한줄 td는 테이블 한칸 -->
			
			<tr>
				<td>이름:</td>
				<td><input type="text" name="userName"><br></td>
			</tr>
			<tr>
				<td>아이디:</td>
				<td> <input type="text" name="userId">
				</td>
			</tr>
			<tr>
				<td>패스워드:</td>
				<td>
				<input type="password" name="userPassword">
				<br>
				</td>
				</tr>
				<!-- 		password는 작성한 텍스트를 가려줌 -->
			
			<tr>
				<td>취미:</td> 
				<td><input type="checkbox" name="lang" value="Reading"checked="checked">독서 
					<input type="checkbox" name="lang"value="Cooking"checked="checked">요리
					<input type="checkbox"name="lang" value="Jogging"checked="checked" >조깅
					<input type="checkbox" name="lang" value="swimming">수영<br>
				</td>
			</tr>
			<tr>
				<td>전공 :</td> 
				<td><input type="radio" name="Major" value="Kor">국어, 
				<input type="radio" name="Major"value="Eng" >영어
				<input type="radio" name="Major"value="Digin" checked="checked">디자인<br>
				</td>
			</tr>
			<tr>
				<td>Protocol:</td> 
				<td><select>
						<option>http</option>
						<option>https</option>
						<option>pop</option>
				
				</select><br> 
				<!-- 	위에 있는 것을 제출하다 submit -->
				<input type="submit" name="okBtn" value="전송"> 
				<input type="submit" name="okBtn" value="취소">
				</td>
				
			</tr>


		</table>
	</form>



</body>
</html>


