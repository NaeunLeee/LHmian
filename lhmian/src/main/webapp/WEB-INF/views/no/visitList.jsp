<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<style>
.visitList {
	margin: 30px;
	padding: 10px;
	height: 500px;
}

table {
	width: 900px;
}

textarea {
	width: 900px;
}

.insert {
	float: right;
}

.vContent, .vUpdate{
	display : none;
}
</style>
<div class="visitList">
	<button class="write">방명록작성</button>
	<br> <br>
	<div>
		<table border="1">
			<tr>
				<th>방명록번호</th>
				<th>세대정보</th>
				<th>방명록내용</th>
				<th>방명록작성일</th>
				<th>방명록수정일</th>
				<th>방명록작성자</th>
				<th>방명록작성세대</th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr onclick="update('${list.visitNo}', '${list.visitContent}', '${list.writerInfo}')">
					<td>${list.visitNo}</td>
					<td>${list.houseInfo}</td>
					<td>${list.visitContent}</td>
					<td>${list.visitDate}</td>
					<td>${list.visitUpdate}</td>
					<td>${list.visitWriter}</td>
					<td>${list.writerInfo}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<div class="vContent">
		<textarea id="visitContent" placeholder="우리는 서로 이웃입니다. 가는 말이 고와야 오는 말이 곱습니다."></textarea>
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
	//세대정보 가져오기(주소에서)
	var house = window.location.href;
	house = house.substr(-7);
	
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	
	$('#visitUpdate').on('focus', function() {
		$(this).select();
	})
	//작성버튼을 누르면 등록창이 나옴
	$('.write').on('click', function() {
		$('.vContent').show();
		
		//수정창이 열려있다면 숨겨준다
		if($('.vUpdate').css("display") == 'block' ) {
		$('.vUpdate').hide();
		}
		
		//등록버튼을 누르면 작동
		$('.insert').on('click', function() {
			if (confirm('방명록을 등록하시겠습니까?\n한번 등록한 방명록은 삭제할 수 없습니다.')) {
				$.ajax({
					url : "visitInsert",
					method : "post",
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : {
						visitContent : $('#visitContent').val(),
						houseInfo : house
					},
					success : function() {
						alert(" 방명록이 등록되었습니다.");
						location.reload();
					}
				});
			};
		});
	});
	
	function update(num, content, name) {
		if (confirm('수정하시겠습니까?')) {
			$('.vUpdate').show();
			console.log(content);
			$('#visitUpdate').val( content);
			//등록창이 열려있다면 숨겨준다
			if($('.vContent').css("display") == 'block' ) {
			$('.vContent').hide();
			}
		}	
		
		
		//수정버튼을 누르면 작동
		$('.update').on('click', function() {
			if (confirm('방명록을 수정하시겠습니까?')) {
				$.ajax({
					url : "visitUpdate",
					method : "post",
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : {
						visitContent : $('#visitUpdate').val(),
						writerInfo : name
					},
					success : function() {
						alert(" 방명록이 등록되었습니다.");
						location.reload();
					}
				});
			};
		});
	};
</script>