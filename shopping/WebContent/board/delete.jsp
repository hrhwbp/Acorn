<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");
String spage = request.getParameter("page");

%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel = "stylesheet" type = "text/css" href = "../css/board.css">
<script type="text/javascript">
function check(){
	if(frm.pass.value ==""){
		frm.pass.focus();
		alert("비밀번호를 입력하시오")
		return;
	}
	
	if(confirm("정말 삭제할까요?")) frm.submit();
}

</script>
</head>
<body>
<h2>***글삭제***</h2>
<form action = "deleteok.jsp" name = "frm" method = "post">
<input type="hidden" name = "num" value="<%=num %>"/>
<input type="hidden" name = "page" value="<%=spage %>"/>
비밀번호 입력 : <input type = "password" name = "pass"><p>
<input type = "button" onclick = "location.href='javascript:history.back()'" value = "뒤로가기">
<input type = "button" onclick = "check()" value = "삭제확인">
<input type = "button" onclick = "location.href='boardlist.jsp?page=<%=spage %>'" value = "목록보기">
</form>
</body>
</html>