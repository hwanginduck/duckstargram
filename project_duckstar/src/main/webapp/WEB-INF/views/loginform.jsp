<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Duckstagram</title>
</head>
<body>
	<div align="center">
		<form method="post" action="loginPro.jsp">
			<table border="1" width="300">
				<tr>
					<td align="center">
						<img src="resources/img/loginlogo.png" width="300">
						<input type="text" placeholder="이메일 또는 전화번호"
							style="width:300px; height:50px; font-size: 20px"><br><br>
						<input type="password" placeholder="비밀번호"
							style="width:300px; height:50px; font-size: 20px"><br><br>
						<input type="submit" value="로그인" class="input_button"
							style="width:200px; height:50px; font-size: 20px"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>