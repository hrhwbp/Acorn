<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="memberBean" class = "shop.member.MemberBean"/>
<jsp:setProperty property="*" name="memberBean"/>
<jsp:useBean id="memberMgr" class = "shop.member.MemberMgr"/>
<% boolean b = memberMgr.memberInsert(memberBean); %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

</script>
</head>
<body>
<%
if(b){
	out.println("<script>alert('회원정보가 수정되었습니다!')</script>");
	response.sendRedirect("guest_index.jsp");
}else{
	out.println("<b>회원정보 수정 실패! 관리자에게 문의해주세요</b><br>");
	out.println("<a href = 'memberupdate.jsp'>수정 재시도</a>");
}
%>
</body>
</html>