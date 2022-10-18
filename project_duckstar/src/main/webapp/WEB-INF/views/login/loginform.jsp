<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Duckstagram</title>

<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<div align="center">
		<form method="post" action="loginPro.jsp">
			<table border="1" width="300">
				<tr>
					<td align="center">
						<img src="resources/img/loginlogo.png"width="300">
						<input type="text" placeholder="이메일 또는 전화번호" style="width: 300px; height: 50px; font-size: 20px">
						<br><br>
						<input type="password" placeholder="비밀번호" style="width: 300px; height: 50px; font-size: 20px">
						<br><br> 
						<input type="submit" value="로그인" class="input_button" style="width: 200px; height: 50px; font-size: 20px" />
					</td>
				</tr>
			</table>
		</form>
		<!-- 네이버아이디로로그인 버튼 노출 영역 -->
		<div id="naver_id_login"></div>
		<!-- //네이버아이디로로그인 버튼 노출 영역 -->
		<script type="text/javascript">
			var naver_id_login = new naver_id_login("hhaGhE8lOBl0ySbgR2AS","http://localhost:8088/duckstargram/naver_callback.do");
			var state = naver_id_login.getUniqState();
			naver_id_login.setButton("white", 2, 40);
			naver_id_login.setDomain("http://localhost:8088/duckstargram/loginform.do");
			naver_id_login.setState(state);
			naver_id_login.init_naver_id_login();
		</script>
	</div>
</body>
</html>