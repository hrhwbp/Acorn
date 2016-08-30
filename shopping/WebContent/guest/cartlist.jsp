<%@page import="shop.product.ProductBean"%>
<%@page import="shop.order.OrderBean"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="cartMgr" class = "shop.order.CartMgr" scope="session"/>
<jsp:useBean id="productMgr" class = "shop.product.ProductMgr"/>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
<link href = "../css/style.css" rel = "stylesheet" type = "text/css">
<script type="text/javascript" src = "../js/script.js"></script>
</head>
<body>
** 장바구니 목록 ** <p>
<%@ include file="guest_top.jsp" %>

<table style="width: 80%">
	<tr style="background-color: silver;">
		<th>주문상품</th><th>가격(소계)</th><th>수량</th><th>수정/삭제</th><th>상품조회</th>
	</tr>
	<%
	int totalPrice = 0;
	Hashtable hCart = cartMgr.getCartList();
		if(hCart.size() == 0){
	%>		
	<tr><td>장바구니가 비었습니다.</td></tr>
	<%			
		}else{
			Enumeration enu = hCart.keys();
			while(enu.hasMoreElements()){
				OrderBean order = (OrderBean)hCart.get(enu.nextElement());
				ProductBean product = productMgr.getProduct(order.getProduct_no());
				int price = Integer.parseInt(product.getPrice());
				int quantity = Integer.parseInt(order.getQuantity());
				int subTotal = price * quantity; //소계
				totalPrice += subTotal;	//총계
	%>
	<form action = "cartproc.jsp" method = "post">
		<input type = "hidden" name = "flag">
		<input type = "hidden" name = "product_no" value = "<%=product.getNo() %>">
		<tr style="text-align: center;">
			<td><%=product.getName() %></td>
			<td><%=subTotal %></td>
			<td><input style="text-align: center;" type="text" name = "quantity" size = "5" value= "<%=quantity%>"></td>
			<td>
				<input type="button" value="수정" style="background-color: aqua;" onclick="cartUpdate(this.form)">
				<input type="button" value="삭제" style="background-color: aqua;" onclick="cartDelete(this.form)">
			</td>
			<td><a href = "javascript:productDetail('<%=product.getNo()%>')">상세보기</a></td>
		</tr>
	</form>
	<%
			}
	%>
		<tr>
			<td colspan="5" style="text-align: left;">
				<br><br><b>총 가격 : <%=totalPrice %>원 &nbsp;&nbsp;&nbsp;</b>
				<b><a href = "orderproc.jsp"> [ 결 제 하 기 ]</a></b>
			</td>
		</tr>
	<%
		}
	%>
</table>

<%@ include file="guest_bottom.jsp" %>

<form action="productdetail_g.jsp" name = "detailFrm">
	<input type="hidden" name = "no">
</form>
</body>
</html>



