<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
.tr_1 {
	cursor: pointer;
	text-align: center;
}

tr {
	height: 40px;
	border-bottom: 1px solid lightGray;
}

th {
	text-align: center;
	background-color: #EEEEEE;
	width: 150px;
}

.tr_1:hover {
	background-color: #f5f5f5;
}

.table-1000 {
	background-color: white;
	width: 1000px;
}

.table-500 {
	width: 500px;
}

.h-50 {
	height: 50px !important;
}

.p-15 {
	padding-left: 15px !important;
}

.pagination>li>a {
	color: black;
}

.pagination {
	margin-left: 25%;
}

.modal-header {
	border-bottom: 0
}

.modal-footer {
	border-top: 0;
	text-align: center
}
</style>

<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(http://placehold.it/1500x1000);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000"alt="" />
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
						<li><a href="${pageContext.request.contextPath}/myPage/myPage">마이페이지</a></li>
						<li class="current"><a href="${pageContext.request.contextPath}/pay/myPaidList">나의 결제내역</a></li>
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
					<p class="by-sub-title" style="font-size: 13px;">각종 편의시설 및 관리비의 결제내역을 확인 / 취소할 수 있습니다.</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container" align="center">
		<div class="text-box white padding-4 col-7">
			<table class="table-1000">
				<tr>
					<th>결제번호</th>
					<th>결제일</th>
					<th>결제방식</th>
					<th>결제분류</th>
					<th>결제상태</th>
				</tr>
				<tbody>
					<c:forEach items="${pay}" var="payList">
						<tr class="tr_1" onclick="payCancel('${payList.payNo}', '${payList.payStatus}', '${payList.payDate}')">
							<td>${payList.payNo}</td>
							<td>${payList.payDate}</td>
							<td>${payList.payType}</td>
							<td>${payList.payCat}</td>
							<td>${payList.payStatus}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 페이징 -->
	<form id="actionForm" action="myPaidList" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	</form>
	<div id="pageButton" style="margin: auto; width: 50%">
		<ul class="pagination hover-orange">
			<c:if test="${pageMaker.prev == true}">
				<li>
					<a href="${pageMaker.startPage-1}">
						<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
					</a>
				</li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
				<li>
					<a href="${num}">${num}</a>
				</li>
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
</section>


<section class="sec-padding">

	<div class="container">
		<div class="row text-center">
			<div id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="modal-switch-label" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<br>
						<div class="modal-header">
							<button type="button" data-dismiss="modal" class="close">
								<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
							</button>
							<div id="modal-switch-label" class="modal-title">
								<div class="text-center">
									<div class="pl-title-line-1"></div>
									<h4 class="h4-margin font-weight-7 less-mar-1">결제정보</h4>
									<div class="clearfix"></div>
								</div>
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
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	//수정모달
	function payCancel(num, status, date) {
		$(cancelModal).modal('show');
		$.ajax({
			url : "cancelForm",
			type : "get",
			data : {
				payNo : num
			},
			success : function(data) {
				var tag = "";
				tag += '<form method="post" id="frm" action="cancel">'
						+ '	<section class="sec-padding-yj cancel">'
						+ '		<div class="container cancel-container" align="center" style="width:100%">'
						+ '			<div class="row">'
						+ '				<table class="table-500">'
						+ '					<tr class="h-50" style="border-top:1px solid lightgray">'
						+ '					  <th>결제번호</th>'
						+ '					  <td class="p-15"><input type="hidden" name="payNo" value="' + data.payNo + '">' + data.payNo + '</td>'
						+ '					</tr>'
						+ '					<tr class="h-50">'
						+ '					  <th>결제일</th>'
						+ '					  <td class="p-15">' + data.payDate + '</td>'
						+ '					</tr>'
						+ '					<tr class="h-50">'
						+ '					  <th>결제방식</th>'
						+ '					  <td class="p-15">' + data.payType + '</td>'
						+ '					</tr>'
						+ '					<tr class="h-50">'
						+ '					  <th>결제분류</th>'
						+ '					  <td class="p-15" id="' + data.payNo + '">' + data.payCat + '</td>'
						+ '					</tr>'
						+ '					<tr class="h-50">'
						+ '					  <th>결제금액</th>'
						+ '					  <td class="p-15">' + data.price + '</td>'
						+ '					</tr>'
						+ '				</table>'
						+ '			</div>'
						+ '		</div>'
						+ '	</section>'
						+ '<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">'
						+ '<input type="hidden" name="payStatus" value="결제취소">'
						+ '</form>'
				$("#cancelModal .modal-body").html(tag);
			}
		});
		//결제 취소 건은 결제취소버튼 없음
		if (status == '결제취소') {
			$('#cancelBtn').hide();
		}
		//결제당일이 아니면 결제취소 불가
		var today = new Date();
		let year = today.getFullYear() + "";
		let month = today.getMonth() + "";
		let day = today.getDate() + "";
		today = year + "-" + month + "-" + day;
		if (date == today) {
			$('#cancelBtn').hide();
		}
	};

	//모달 취소버튼
	$('#cancelBtn').on('click', function() {
		if (confirm('취소하시겠습니까?')) {
			frm.submit();
		}
	});

	//페이징버튼
	$('#pageButton a').on("click", function(e) {
		e.preventDefault();
		var p = $(this).attr('href');
		$('[name="pageNum"]').val(p);
		$('#actionForm').submit();
	})
</script>