<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 운영 정보 공개</title>
</head>
<body>
<div align="center">
	<form id="frm" name="frm" action="opeInfoUpdate" method="post"></form>
	<h3>운영 정보</h3>
	<hr>
	<div>
		${info.oiType} | <input id="oiTitle" type="text" value="${info.oiTitle}" readonly="readonly">
		<hr>
		<textarea id="oiContent" rows="5" cols="33" readonly="readonly">${info.oiContent}</textarea><br>
		첨부파일 | <input type="text" value="${info.oiFile}" readonly="readonly">
	</div>
	<br>
	<div align="center">
		<button type="button" id="btnUpdate">수정</button>
		<button type="button" id="btnDelete">삭제</button>
		<button type="button" onclick="location.href='../introduce/opeInfoList'">목 록</button>
	</div>
</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

	$('#btnUpdate').on("click", function() {
		if ($(this).text() == '수정') {
			$('#oiTitle').prop('readonly', false);
			$('#oiContent').prop('readonly', false);
			$(this).text('완료');
		} else if ($(this).text() == '완료') {
			if (confirm('정말로 수정하시겠습니까?')) {
				$.ajax({
					url: "opeInfoUpdate",
					type: "post",
					dataType: "json",
					data: JSON.stringify({
						oiNo: $('#oiNo').val(),
						oiTitle: $('#oiTitle').val(),
						oiContent: $('#oiContent').val()
					}),
					contentType: 'application/json',
					success: function (data) {
						alert("수정이 완료되었습니다!");
					}
					error: function() {
						alert("수정에 실패했습니다. 다시 시도해주세요.");
					}
				})
			}
		}
	});

</script>


</html>