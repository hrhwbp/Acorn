<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class = "shop.board.BoardBean"/>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="boardMgr" class ="shop.board.BoardMgr"/>


<%
int maxNum = boardMgr.currentGetNum() + 1;	//현재 있는 글 번호의 최대값 + 1 (새글 번호)
//out.print(maxNum);
bean.setNum(maxNum);
bean.setGnum(maxNum);
bean.setBip(request.getRemoteAddr());		//클라이언트의 ip를 받아온다.
bean.setBdate();
boardMgr.saveData(bean);

response.sendRedirect("boardlist.jsp?page=1");
%>