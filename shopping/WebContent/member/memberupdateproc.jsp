<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="memberBean" class = "shop.member.MemberBean"/>
<jsp:setProperty property="*" name="memberBean"/>
<jsp:useBean id="memberMgr" class = "shop.member.MemberMgr"/>
<% 
String id = (String)session.getAttribute("idKey");
boolean b = memberMgr.memberUpdate(memberBean, id); 
%>

<%
if(b){
%>
	<script>
	alert("회원정보가 수정되었습니다!");
	location.href= "../guest/guest_index.jsp";
	</script>
<%}else{%>
	<script>alert("회원정보 수정 실패! 관리자에게 문의해주세요");
	history.back();
	</script>
<%
}
%>
</body>
</html>