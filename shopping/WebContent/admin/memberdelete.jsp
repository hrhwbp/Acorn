<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="memberBean" class = "shop.member.MemberBean"/>
<jsp:setProperty property="*" name="memberBean"/>
<jsp:useBean id="memberMgr" class = "shop.member.MemberMgr"/>
<% 
String id = request.getParameter("id");
boolean b = memberMgr.memberDelete(id); 
%>

<%
if(b){
%>
	<script>
	alert("(관리자)회원정보가 삭제되었습니다!");
	location.href= "membermanager.jsp";
	</script>
<%}else{%>
	<script>alert("회원정보 삭제 실패! 관리자에게 문의해주세요");
	history.back();
	</script>
<%
}
%>
</body>
</html>