<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String id = (String)session.getAttribute("idKey");
String passwd = request.getParameter("passwd");
%>
<jsp:useBean id="memberBean" class = "shop.member.MemberBean"/>
<jsp:setProperty property="*" name="memberBean"/>
<jsp:useBean id="memberMgr" class = "shop.member.MemberMgr"/>
<% boolean b = memberMgr.loginCheck(id, passwd); %>
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
	response.sendRedirect("memberupdate.jsp");
}else{	
	out.println("<script>alert('비밀번호가 다릅니다. 다시 시도해주세요')</script>");
	response.setHeader("Refresh", "0;url=memberupdatepre.jsp");
	//out.println("비밀번호가 다릅니다. 다시 시도해주세요");
	//out.println("[<a href = 'memberupdatepre.jsp'>뒤로</a>]");
	//response.sendRedirect("memberupdatepre.jsp");
}
%>
</body>
</html>