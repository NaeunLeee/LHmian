<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	.container {
		width: 85%;
	}
	.tr_1 {
	   cursor: pointer;
	   text-align: center;
	}
	
	th {
	   text-align: center;
	   background-color: #EEEEEE;
	}
	
	.tr_1:hover {
	   background-color: #f5f5f5;
	}
	
	table {
	   background-color: white;
	}
	.pagination>li>a {
	   color: black;
	}
	
	.form-control {
	   display: inline-block;
	}
	
	.nav-tabs.nav-justified>li>a {
		margin: 0px 1px 0px;
		background-color: #f5f5f5;
	}
	.nav-tabs.nav-justified>li>a:hover {
		background-color: #C8C6C6;
	}
	.nav-tabs.nav-justified>li>.active {
		background-color: #C8C6C6;
	}
</style>

<!-- 10/11 전체수정: 이나은 -->
<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(http://placehold.it/1500x1000);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner">
						<div class="overlay">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class=" clearfix"></div>
</div>
<section class="sec-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white">
				<div class="pages-sidebar-item">
					<h5 class="uppercase pages-sidebar-item-title">관리자</h5>
					<ul class="pages-sidebar-links">
						<li><a href="feeList">관리비</a></li>
						<li><a href="#">에너지 사용량</a></li>
						<li><a class="active" href="#">회원 관리</a></li>
						<li><a href="admOpeInfoList">게시글 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-6 col-xs-12">
				<div></div><br><br>
				<div class="sec-title-container less-padding-3 text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">회원 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">LHmian의 모든 회원을 조회합니다.</p>
				</div>
				<div style="float: left; margin-left: 50px;">
					<form id="actionForm" action="admMemberList" method="get">
						<select name="type" class="form-control" style="width: 100px; ">
							<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
							<option value="N" ${pageMaker.cri.type=='N' ? 'selected' : ""}>이름</option>
							<option value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>동호수</option>
							<option value="A" ${pageMaker.cri.type=='A' ? 'selected' : ""}>휴대폰번호</option>
						</select> 
						<input name="keyword" class="form-control" style="width: 200px;" value="${pageMaker.cri.keyword}"> 
						<button type="submit" class="btn btn-dark">검색</button>&nbsp;&nbsp;
						
						관리비미납&nbsp;<input type="checkbox" id="notpaid" name="notpaid">&nbsp;&nbsp;
						입주민대표&nbsp;<input type="checkbox" id="leader" name="leader">
						
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}"><br>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
				</div>
				<div>
					<button class="btn btn-border light" onclick="deleteMember()" type="button" id="btnDelete" style="float:right; margin-right:20px; padding: 4px 13px;">회원삭제</button>
					<button class="btn btn-border light" type="button" id="sendMessage" style="float:right; margin-right:20px; padding: 4px 13px;">문자보내기</button>
				</div>
				<div class="text-box white padding-4 col-10">
					<form id="frm"> <!-- 0928 form 추가 -->
						<table class="ui celled table" id="memberTable">
							<thead>
								<tr style="text-align: center;">
									<th><input type="checkbox" name="chkAll" id="chkAll"></th>
									<th>이름</th>
									<th>권한</th>
									<th>구분</th>
									<th>동호수</th>
									<th>휴대폰번호</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<c:forEach var="member" items="${list}">
									<tr class="move tr_1">
										<td><input type="checkbox" name="chk" id="${member.id}" value="${member.id}"></td>
										<td>${member.name}</td>
										<td>
											<c:set var="donghosu" value="${member.houseInfo}"/>
											<c:if test="${member.position eq 'LEADER'}">${fn:substring(donghosu, 0, 3)}동 대표</c:if>
											<c:if test="${member.position eq 'FOLLOWER'}">일반</c:if>
										</td>
										<td id="test"> 
											<c:if test="${member.author eq 'OWNER'}"> 세대주</c:if>
											<c:if test="${member.author eq 'MEMBER'}"> 세대원</c:if>
										</td>
										<td>${member.houseInfo}</td>
										<td id="phone">${member.phone}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
					<br>
					<!-- 폼 -->
					<div id="pageButton" align="center">
						<ul class="pagination hover-orange">
							<c:if test="${pageMaker.prev == true}">
								<li>
									<a href="${pageMaker.startPage-1}">
										<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
									</a>
								</li>
							</c:if>
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
								<li><a href="${num}">${num}</a></li>
							</c:forEach>
							<c:if test="${pageMaker.next == true}">
								<li>
									<a href="${pageMaker.endPage+1}">
										<span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
									</a>
								</li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
</div>
</section>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";

/* 	var actionForm = $("#actionForm")
	$(".move").on("click", function(e) {
		e.preventDefault(); //a의 원래 기능 막고
		var noticeNo = $(this).attr("href")
		actionForm.append('<input type="hidden" name="id" value="'+ id +'">')
		actionForm.attr("action", "admMemberList");
		actionForm.submit();
	}); */

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
			alert("선택된 회원이 없습니다.");
		}

		else {
			if (confirm(cnt + '명의 회원을 삭제하시겠습니까?')) {
				$.ajax({
					type : "POST",
					url : "deleteUser",
					data : /* JSON.stringify({
						arr : arr
					}) */$("#frm").serialize(),
					traditional : true,
					dataType : "json",
					//contentType : "application/json",
					beforeSend: function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
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
	}
	 
	 
/* 	 $(document).ready(function() {
		 
		 var test = "${member.phone}";
		 var testPhone = test.replae(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
		  
		 $("#phone").text(testPhone);
		 }); */
</script>