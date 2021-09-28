<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분실물 수정</title>
</head>
<body>
	<div id="modalUpdate">
		<form method="post" action="admLostUpdate" enctype="multipart/form-data">
			<table>
				<tr>
					<th>분실물번호</th>
					<td>${LostItem.lostNo}</td>
				</tr>
				<tr>
					<th>분실물내용</th>
					<td><input name="lostContent" placeholder="분실물 내용을 작성하세요." value="${LostItem.lostContent}"></td>
				</tr>
				<tr>
					<th>등록날짜</th>
					<td>${LostItem.lostDate}</td>
				</tr>
				<tr>
					<th>분실물파일</th>
					<td><input type="file" name="lostImg" value="${LostItem.lostFile}"></td>
				</tr>
				<tr>
					<th>수령여부</th>
					<td>${LostItem.lostStatus}</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>