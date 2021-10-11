<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.semanticui.min.css">
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.semanticui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>

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
						<li><a href="#">관리비</a></li>
						<li><a href="#">에너지 사용량</a></li>
						<li><a class="active" href="#">회원 관리</a></li>
						<li><a href="#">게시글 관리</a></li>
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
			
				<div class="text-box white padding-4 col-10">
					<form id="frm"> <!-- 0928 form 추가 -->
						<table class="ui celled table" id="memberTable">
							<thead>
								<tr style="text-align: center;">
									<th><input type="checkbox" name="chkAll" id="chkAll"></th>
									<th>아이디</th>
									<th>동호수</th>
									<th>휴대폰번호</th>
									<th>권한</th>
									<th>구분</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="member" items="${list}">
									<tr class="move tr_1">
										<td><input type="checkbox" name="chk" id="${member.id}" value="${member.id}"></td>
										<td>${member.id}</td>
										<td>${member.houseInfo}</td>
										<td id="phone">${member.phone}</td>
										<td>
											<c:set var="donghosu" value="${member.houseInfo}"/>
											<c:if test="${member.position eq 'LEADER'}">${fn:substring(donghosu, 0, 3)}동 대표</c:if>
											<c:if test="${member.position eq 'FOLLOWER'}">일반</c:if>
										</td>
										<td id="test"> 
											<c:if test="${member.author eq 'OWNER'}"> 세대주</c:if>
											<c:if test="${member.author eq 'MEMBER'}"> 세대원</c:if>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
					<button class="btn btn-border light" onclick="deleteMember()" type="button" id="btnDelete" style="float:right; margin-right:20px; padding: 4px 13px;">회원삭제</button>
					<br>
					<!-- 폼 -->
				</div>
			</div>
		</div>
</div>
</section>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	// Korean
	const lang_kor = {
		"decimal" : "",
		"emptyTable" : "데이터가 없습니다.",
		"info" : "_START_ - _END_ 건 (총 _TOTAL_ 건)",
		"infoEmpty" : "0명",
		"infoFiltered" : "(전체 _MAX_ 건 중 검색결과)",
		"infoPostFix" : "",
		"thousands" : ",",
		"lengthMenu" : "_MENU_ 건씩 보기",
		"loadingRecords" : "로딩중...",
		"processing" : "처리중...",
		"search" : "검색 : ",
		"zeroRecords" : "검색된 데이터가 없습니다.",
		"paginate" : {
			"first" : "첫 페이지",
			"last" : "마지막 페이지",
			"next" : "다음",
			"previous" : "이전"
		},
		"aria" : {
			"sortAscending" : " :  오름차순 정렬",
			"sortDescending" : " :  내림차순 정렬"
		}
	};
	
	$('#memberTable').DataTable({
		language : lang_kor
	//or lang_eng	
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