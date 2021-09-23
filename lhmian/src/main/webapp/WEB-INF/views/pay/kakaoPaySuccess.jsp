<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	$(function () {
		self.close();
		
	})
</script>
<body>

	<h2>결제 정보</h2>
	<table>
		<tr>
			<td>주문번호</td>
			<td>${info.partner_order_id}</td>
		</tr>
		<tr>
			<td>결제일시</td>
			<td>${info.approved_at}</td>
		</tr>
		<tr>
			<td>상품명</td>
			<td>${info.item_name}</td>
		</tr>
		<tr>
			<td>결제금액</td>
			<td>${info.amount.total}</td>
		</tr>
		<tr>
			<td>결제방법</td>
			<td>${info.payment_method_type}</td>
		</tr>
	</table>

</body>
</html>