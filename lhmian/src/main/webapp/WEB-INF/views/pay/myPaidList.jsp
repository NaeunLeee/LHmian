<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
.tr_1 {
	cursor: pointer;
	text-align: center;
}
.cancel-container {
width : 560px;
margin : 0px;
}
tr {
	height : 40px;
	border-bottom : 1px solid lightGray;
}

th {
	text-align: center;
	background-color: #EEEEEE;
	width : 150px;
}

.tr_1:hover {
	background-color: #f5f5f5;
}

table {
	background-color: white;
	width : 1000px;
}
.table-style-2 {
width : 560px;
}
</style>
<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder"
				style="background: url(http://placehold.it/1500x1000);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000"
					alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner">
						<div class="overlay"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class=" clearfix"></div>
</div>
<section>
	<div class="pagenation-holder-no-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb-gray">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li><a href="">결제?</a></li>
						<li class="current"><a
							href="${pageContext.request.contextPath}/pay/myPaidList">나의
								결제내역</a></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sec-padding section-light">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 nopadding">
				<div class="sec-title-container-padding-topbottom text-center">
					<div class="pl-title-line-1"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">결제내역</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title" style="font-size: 13px;">결제... 어쩌구..ㅋㅋ</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container" align="center">
		<div class="text-box white padding-4 col-7">
			<table>
				<tr>
					<th>결제번호</th>
					<th>결제일</th>
					<th>결제방식</th>
					<th>결제분류</th>
					<th>결제상태</th>
				</tr>
				<c:forEach items="${pay}" var="payList">
					<tr class="tr_1" onclick="payCancel('${payList.payNo}')">
						<td>${payList.payNo}</td>
						<td>${payList.payDate}</td>
						<td>${payList.payType}</td>
						<td>${payList.payCat}</td>
						<td>${payList.payStatus}</td>
					</tr>
				</c:forEach>
			</table>
			<!-- 더보기, 접기 버튼 -->
			<!-- <div class="row">
				<div class="col text-center">
					<button type="button" id="moreList" class="btn btn-main mt-20">더보기</button>
				</div>
			</div> -->
			<!-- 더보기, 접기 버튼 -->
		</div>
	</div>
</section>
<!-- 결제취소 모달 -->
	<section class="sec-padding">
		<div class="container">
			<div class="row text-center">
				<div id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="modal-switch-label" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" data-dismiss="modal" class="close">
									<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
								</button>
								<div id="modal-switch-label" class="modal-title">
									<h4>결제취소</h4>
								</div>
							</div>
							<div class="modal-body"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-gyellow" id="cancelBtn">결제취소</button>
								<button type="button" class="btn btn-gyellow" data-dismiss="modal" id="modalClose">닫기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	//수정모달
	function payCancel(n) {
		let csrfHeaderName = "${_csrf.headerName}";
		   let csrfTokenValue = "${_csrf.token}";
		$(cancelModal).modal('show');
		$.ajax({
			url : "cancelForm",
			type: "get",
			data : {payNo : n},
			success : function(data) {
				console.log(data);
				var tag ="";
				tag += '<form method="post" id="frm" action="cancel">'
					+  '	<section class="sec-padding-yj cancel">'
					+  '		<div class="container cancel-container">'
					+  '			<div class="row">'
					+  '				<table class="table-style-2">'
					+  '					<tr class="tr">'
					+  '					  <th>결제번호</th>'
					+  '					  <td><input type="hidden" name="payNo" value="' + data.payNo + '">' + data.payNo + '</td>'
					+  '					</tr>'
					+  '					<tr>'
					+  '					  <th>결제일</th>'
					+  '					  <td>' + data.payDate  + '</td>'
					+  '					</tr>'
					+  '					<tr>'
					+  '					  <th>결제방식</th>'
					+  '					  <td>' + data.payType + '</td>'
					+  '					</tr>'
					+  '					<tr>'
					+  '					  <th>결제분류</th>'
					+  '					  <td>' + data.payCat + '</td>'
					+  '					</tr>'
					+  '					<tr>'
					+  '					  <th>결제금액</th>'
					+  '					  <td>' + data.price + '</td>'
					+  '					</tr>'
					+  '				</table>'
					+  '			</div>'
					+  '		</div>'
					+  '	</section>'
					+  '<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">'
					+  '<input type="hidden" name="payStatus" value="결제취소">'
					+  '</form>'
				$("#cancelModal .modal-body").html(tag);
			}
		});
	};
	
	//모달 취소버튼
	$('#cancelBtn').on('click', function() {
		if (confirm('취소하시겠습니까?')) {
			frm.submit();	
		}
	});
	
</script>
<!-- <script>
	// 숨겨진 지역들
	let moreRegion = $(".moreRegion");
	$(moreRegion).hide();

	// 더보기, 접기
	$("#moreList").click(function () {
		$(moreRegion).slideToggle(500);
		if ($(this).text() == '더보기') {
			$(this).text('접기');
		} else {
			$(this).text('더보기');
		}
	});
</script> -->