<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기</title>
<!-- <link rel="stylesheet" type="text/css" href="./css/admin.css" />
<link rel="stylesheet" type="text/css" href="./css/member.css" /> -->
<script src="./js/jquery.js"></script>
<script>
 function check(){
	 if($.trim($("#name").val())==""){
		 alert("이름을 입력하세요!");
		 $("#name").val("").focus();
		 return false;
	 }
	 if($.trim($("#email").val())==""){
		 alert("이메일을 입력하세요!");
		 $("#email").val("").focus();
		 return false;
	 }
 }
</script>
</head>
<body>
	<c:if test="${empty pwdok}"> 
		<h2>아이디 찾기</h2>
  		<form method="post" action="find_id_sql.do" onsubmit="return check()">  
   			<table>
    			<tr>
					<th>회원이름</th>
     				<td><input name="name" id="name" size="14"/></td>
    			</tr>
				<tr>
     				<th>이메일</th>
     				<td><input name="email" id="email" size="14"/></td>
   				</tr>
			</table>
    		<input type="submit" value="찾기"/>
    		<input type="reset" value="취소" onclick="$('#name').focus();"/>
			<!-- close()메서드로 공지창을 닫는다. self.close()는 자바스크립트이다. -->
    		<input type="button" value="닫기" class="input_button" onclick="self.close();" />
		</form>
	</c:if>
  
  
<c:if test="${!empty pwdok}">
	<h2>아이디 찾기 결과</h2>
	<table>
		<tr>
			<th>검색한 비번:</th>
			<td>${pwdok}</td>
		</tr>
	</table>
	<!-- close()메서드로 공지창을 닫는다. self.close()는 자바스크립트이다. -->
	<input type="button" value="닫기" onclick="self.close();" />
</c:if> 
  
</body>
</html>