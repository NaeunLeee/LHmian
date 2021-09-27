<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분실물 등록-관리자</title>
</head>
<body>
	<div>
		<form method="post" action="admLostInsert" enctype="multipart/form-data">
			<table>
				<tr>
					<th>분실물내용</th>
					<td><input name="lostContent" placeholder="분실물 내용을 작성하세요."></td>
				</tr>
				<tr>
					<th>분실물파일</th>
					<td><input type="file" name="lostImg"></td>
				</tr>
			</table>
			<button>등록</button>
		</form>
	</div>
</body>
</html>