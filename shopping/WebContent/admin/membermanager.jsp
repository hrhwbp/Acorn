<%@page import="shop.member.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberMgr" class = "shop.member.MemberMgr"/>


<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<link href = "../css/style.css" rel = "stylesheet" type = "text/css">
<script type="text/javascript" src = "../js/script.js"></script>
<title>회원관리</title>
</head>
<body>
** 관리자 전체 회원관리 **<br>
<%@ include file = "admin_top.jsp" %>
<table style="width: 80%; text-align: center;">
	<tr>
		<th>아이디</th><th>회원명</th><th>비밀번호</th><th>이메일</th><th>전화번호</th><th>주소</th><th>수정</th><th>삭제</th>		
	</tr>
	<%
	ArrayList<MemberBean> list = memberMgr.getMemberAll();
	for(MemberBean m:list){
	%>
	<tr>
		<td><%=m.getId() %></td>
		<td><%=m.getName() %></td>
		<td><%=m.getPasswd() %></td>
		<td><%=m.getEmail() %></td>
		<td><%=m.getPhone() %></td>
		<td><%=m.getAddress() %></td>
		<td><a href = "javascript:memUpdate('<%=m.getId() %>')">수정</a></td>
		<td><a href = "javascript:memDelete('<%=m.getId() %>')">삭제</a></td>
	</tr>
	<%
	}
	%>
<%@ include file = "admin_bottom.jsp" %>
</table>
<form action="memberupdate2.jsp" name = "updateFrm" method = "post">
	<input type="hidden" name = "id">
</form>
<form action="memberdelete.jsp" name = "deleteFrm" method = "post">
	<input type="hidden" name = "id">
</form>
</body>
</html>