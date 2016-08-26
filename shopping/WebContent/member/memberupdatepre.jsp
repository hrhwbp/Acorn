<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정을 위한 암호입력</title>
</head>
<body>

<table style="text-align: center; width: 70%; margin: center;">
<form action = "memberpwcheck.jsp" id = "pwCheckForm" method = "post">
	<tr>
		<td>현재 사용하는 비밀번호를 입력해주세요</td>
	</tr>
	<tr>
		<td>
		<input type="password" name = "passwd">
		<input type="submit" id = "btnCheck" value = "확인">
		</td>
	</tr>
	<tr>
		<td>[<a href="javascript:history.back()">뒤로가기</a>][<a href="../guest/guest_index.jsp">메인으로</a>]</td>
	</tr>
</form>
</table>
</body>
</html>