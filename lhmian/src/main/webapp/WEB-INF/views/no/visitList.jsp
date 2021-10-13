<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
<style>
.visitList {
margin : 30px;
padding : 10px;
height : 500px;
}

table {
width : 900px;
}

textarea {
width : 900px;
}

.insert, .update {
float : right;
}

.vContent, .vUpdate {
display : none;
}
</style>
</head>
<body>
<div class="visitList">
	<button class="write">방명록작성</button>
	<br>
	<br>
	<div>
		<table border="1">
			<tr>
				<th>방명록번호</th>
				<th>방명록내용</th>
				<th>방명록작성일</th>
				<th>방명록수정일</th>
				<th>방명록작성자</th>
				<th>방명록작성세대</th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr onclick="update('${list.visitNo}', '${list.visitContent}')">
					<td>${list.visitNo}</td>
					<td>${list.visitContent}</td>
					<td>${list.visitDate}</td>
					<td>${list.visitUpdate}</td>
					<td>${list.visitWriter}</td>
					<sec:authentication property="principal.NAME" var="sessionName"/> 
						<c:if test = "${list.visitWriter eq sessionName}" >
							<td>${list.writerInfo} / <input type="button" onclick="deleteBtn('${list.visitNo}')" value="삭제"></td>
						</c:if>
						<c:if test = "${list.visitWriter ne sessionName}" >
							<td>${list.writerInfo}</td>
						</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<div class="vContent">
		<textarea id="visitContent"
			placeholder="우리는 서로 이웃입니다. 가는 말이 고와야 오는 말이 곱습니다."></textarea>
			<br>
		<button class="insert">등록</button>
	</div>
	<div class="vUpdate">
		<textarea id="visitUpdate"></textarea>
			<br>
		<button class="update">수정</button>
	</div>
</div>
<script>
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	let currentUrl = window.location.href;
	let equalIndex = currentUrl.indexOf('=');
	console.log(equalIndex);
	let houseInfo = currentUrl.substr(equalIndex+1, equalIndex+7);
	console.log(houseInfo);

	//페이지 로드 시 등록, 수정창은 숨겨놓음
	/* $(document).ready(function() {
		$('.vContent').hide();
		$('.vUpdate').hide();
	}); */

	//작성버튼을 누르면 등록창이 나옴
	$('.write').on('click', function() {
		if($('.vUpdate').is(':visible') == true) {
			$('.vUpdate').hide();
		}
		$('.vContent').show();

		//등록버튼을 누르면 작동
		$('.insert').on('click', function() {
			if (confirm('방명록을 등록하시겠습니까?')) {
				$.ajax({
					url : "visitInsert",
					method : "post",
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : {
						visitContent : $('#visitContent').val(),
						houseInfo : houseInfo
							//${list[0].houseInfo}
					},
					success : function() {
						alert(" 방명록이 등록되었습니다.");
						location.reload();
					}
				});
			}
		});
	});
	
	var num = 0;
	var content = "";
	//tr클릭 시 수정폼 작동
	function update(num, content) {
		if (confirm('수정하시겠습니까?')) {
			if($('.vContent').is(':visible') == true) {
				$('.vContent').hide();
			}
			$('.vUpdate').show();
			$('#num').attr("id", num);
			$('#visitUpdate').attr("placeholder", content);
		}	
		
		//수정버튼 클릭시 작동
		$('.update').on('click', function() {
			let csrfHeaderName = "${_csrf.headerName}";
			let csrfTokenValue = "${_csrf.token}";
			if (confirm('수정을 완료하시겠습니까?')) {
				$.ajax({
					url : "visitUpdate",
					method : "post",
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : {
						visitContent : $('#visitUpdate').val(),
						visitNo : num
					},
					success : function() {
						alert(" 수정이 완료되었습니다.");
						location.reload();
					}
				});
			}
		});
	};
	
	function deleteBtn(n){
		if(confirm('삭제하시겠습니까?')) {
			$("tr").attr('onclick', '').unbind('click');
			$.ajax({
				url : "visitDelete",
				method : "post",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				data : {visitNo : n},
				success : function() {
					alert('삭제되었습니다.');
					location.reload();
				}
			});
		}
	}
	
</script>
</body>
</html>