<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 | 운영 정보 등록</title>
</head>
<body>
<div align="center">
	<form id="frm" name="frm" action="admOpeInfoInsert" method="post">
		<div>
			<select name="oiType">
				<option value="관리규약">관리규약</option>
				<option value="재무제표">재무제표</option>
				<option value="안전관리">안전관리</option>
			</select>
			&nbsp;&nbsp;
			<input type="text" name="oiTitle" placeholder="제목을 입력하세요.">
			<hr>
		</div>
		<div>
			<textarea rows="20" cols="50" name="oiContent"></textarea>
		</div>
	</form>
	<div>
		<input type="file" name="oiFile" multiple="multiple">
		<button type="button" id="uploadBtn">업로드</button>
	</div>
	<div align="center">
		<button type="submit">등 록</button>
		<button type="reset">취 소</button>
		<button type="button" onclick="location.href='../introduce/opeInfoList'">목 록</button>
	</div>
	
</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

$(function() {
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB
	
	function checkExtension(fineName, fileSize) {
		if (fileSize >= maxSize) {
			alert("파일 사이즈 초과");
			return false;
		}
		if (regex.test(fileName)) {
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return true;
	};
	
	$('#uploadBtn').on("click", function() {
		var formData = new FormData(document.frm);
		var inputFiles = $('[name="oiFile"]');
		var files = inputFiles[0].files;
		
		for (i=0; i<files.length; i++) {
			if (!checkExtension(files[i].name, files[i].size)) {
				return;
			} else {
				formData.append("oiFile", files[i]);
			}
		}
		
		$.ajax({
			processData : false,
			contentType : false,
			url : "admOpeInfoInsert",
			data : formData,
			type : 'POST',
			success : function(result){
				alert("업로드 성공")
			}
		});
		
	});
	
});

</script>

</html>