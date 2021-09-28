<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div align="center">
<form id="frm"> <!-- 0928 form 추가 -->
	<table border="1" id="memberTable">
		<thead>
			<tr>
				<th><input type="checkbox" name="chkAll" id="chkAll"></th>
				<th>아이디</th>
				<th>동호수/주소</th>
				<th>휴대폰번호</th>
				<th>구분</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${list}">
				<tr>
					<td><input type="checkbox" name="chk" id="${member.id}"
						value="${member.id}"></td>
					<td>${member.id}</td>
					<td><a class="move" href="${member.id}">${member.houseInfo}</a></td>
					<td>${member.phone}</td>
					<td>${member.author}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	</form>
	<br> <br>
	<!-- 폼 -->
	<form id="actionForm" action="admMemberList" method="get">
		<select name="type">
			<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
			<option value="T" ${pageMaker.cri.type=='T' ? 'selected' : ""}>아이디</option>
			<option value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>동호수</option>
			<option value="A" ${pageMaker.cri.type=='A' ? 'selected' : ""}>휴대폰번호</option>
		</select> <input name="keyword" value="${pageMaker.cri.keyword}"> <input
			type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-default">검색</button>
	</form>

	<div id="pageButton">
		
			<c:if test="${pageMaker.prev}">
				<a href="${pageMaker.startPage-1}">이전</a>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="num">
				<a href="${num}">${num}</a>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<a href="${pageMaker.endPage+1}">다음</a>
			</c:if>
	</div>
</div>
<button onclick="deleteMember()" type="button" id="btnDelete">회원삭제</button>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var actionForm = $("#actionForm")
	$(".move").on("click", function(e) {
		e.preventDefault(); //a의 원래 기능 막고
		var noticeNo = $(this).attr("href")
		actionForm.append('<input type="hidden" name="id" value="'+ id +'">')
		actionForm.attr("action", "admMemberList");
		actionForm.submit();
	});

	$("#pageButton a").on("click", function(e) { //페이지 번호 눌렀을 때. pagebutton 안써주면 헤더, 푸터에 걸린 a태그도 다 링크 걸림
		e.preventDefault(); //a, submit
		var p = $(this).attr("href")
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});

	$(document).ready(function() {
		$("#chkAll").click(function() {
			if ($("#chkAll").is(":checked"))
				$("input[name=chk]").prop("checked", true);
			else
				$("input[name=chk]").prop("checked", false);
		});

		$("input[name=chk]").click(function() {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;

			if (total != checked)
				$("#chkAll").prop("checked", false);
			else
				$("#chkAll").prop("checked", true);
		});
	});

	
	 //선택삭제 기능 09.28 광호 + 한솔 
	 
	function deleteMember() {
		var cnt = $("input[name='chk']:checked").length;
		var arr = new Array();
		$("input[name='chk']:checked").each(function() {
			arr.push($(this).attr('id'));
		});

		console.log(arr);

		if (cnt == 0) {
			alert("선택된 글이 없습니다.");
		}

		else {
			$.ajax({
				type : "POST",
				url : "deleteUser",
				data : /* JSON.stringify({
					arr : arr
				}) */$("#frm").serialize(),
				traditional : true,
				dataType : "json",
				//contentType : "application/json",
				success : function(result) {
					if (result == true) {
						alert("삭제완료");
						location.reload();
					}
				},
				error : function() {
					alert("서버통신 오류");
					console.log(arr);
				}
			});
		}
	}
</script>