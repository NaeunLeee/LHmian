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
		<input type="file" name="uploadFile">
		<button type="button" id="uploadBtn">파일 첨부</button>
		<ul id="uploaded"></ul>
	</div>
	<br>
	<div align="center">
		<button type="button" id="insertBtn">등 록</button>
		<button type="reset">취 소</button>
		<button type="button" onclick="location.href='../admin/admOpeInfoList'">목 록</button>
	</div>
	
</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

$(function() {
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	
	function checkExtension(filename) {
		if (regex.test(filename)) {
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return true;
	};
	
	// 파일 첨부 버튼 이벤트
	$('#uploadBtn').on("click", function() {
		var formData = new FormData(document.frm);
		var inputFile = $('[name="uploadFile"]');
		var files = inputFile[0].files;
		
		for (i=0; i<files.length; i++) {
			if (!checkExtension(files[i].name)) {
				return;
			} else {
				formData.append("uploadFile", files[i]);
			}
		}
		
		$.ajax({
			processData : false,
			contentType : false,
			url : "opeInfoFileAttach",
			data : formData,
			type : 'POST',
			success : function(datas) {
				var li = "";
				var str = "";
				
				for (i=0; i<datas.length; i++) {
					var obj = datas[i];
					var fileCallPath = encodeURIComponent(obj.oiFilepath+"/"+ obj.oiFileid +"_"+obj.oiFilename);
					var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
					
					li += "<li>";
					li += "<span> "+ obj.oiFilename+"</span>";
					li += "</li>";
					
					str += "<input type='hidden' name='oiFilename' value='" + obj.oiFilename + "'>";
					str += "<input type='hidden' name='oiFileid' value='" + obj.oiFileid + "'>";
					str += "<input type='hidden' name='oiFilepath' value='" + obj.oiFilepath + "'>";
					
				}
				$('#uploaded').html(li);
				$('#frm').append(str);
			}
		});
		
	});
	
	// 등록 버튼 이벤트
	$('#insertBtn').on("click", function() {
		$('#frm').submit();
	});
	
});

</script>

</html>