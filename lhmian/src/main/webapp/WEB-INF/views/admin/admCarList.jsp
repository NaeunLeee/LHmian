<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.tr_1 {
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
</style>

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
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a href="">관리자 페이지</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/adminCarList">차량관리</a></li>
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
						<h4 class="uppercase font-weight-7 less-mar-1">차량관리</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title" style="font-size: 13px;">차량관리... 어쩌구..ㅋㅋ</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="container" align="center">
			<div class="text-box white padding-4 col-7">
<form id="frm">
	<table class="table" id="carTable">
	<thead>
		<tr>
		<th><input type="checkbox" name="chkAll" id="chkAll" ></th>
		<th>차량 번호</th>
		<th>차량 모델</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="car" items="${list}">
			<tr class="move tr_1">
				<td><input type="checkbox" name="chk" id="${car.carNo}" value="${car.carNo}"></td>
				<td>${car.carCode}</td>
				<td>${car.carType}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</form>
<button class="btn btn-border light" onclick="deleteCar()" type="button" id="btnDelete" style="float:right; margin-right:20px; padding: 4px 13px;">차량삭제</button>
<br>


<!-- 폼 -->

<div id="pageButton" style="margin:auto; width: 50%">
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
		
	<div style="margin:auto;">
	<form id="actionForm" action="admCarList" method="get">
		<select name="type" class="form-control" style="width: 100px; ">
			<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
			<option value="T" ${pageMaker.cri.type=='T' ? 'selected' : ""}>차종</option>
			<option value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>차량번호</option>
		</select>
		<input name="keyword" class="form-control" style="width: 200px;" value="${pageMaker.cri.keyword}">
		<button type="submit" class="btn btn-dark">검색</button>
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}"><br>
	</form>
	</div>
	</div>
	</div>
	</section>
	


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

/* 	var actionForm = $("#actionForm")
	$(".move").on("click", function(e){
		e.preventDefault();				//a의 원래 기능 막고
		var noticeNo = $(this).attr("href")
		actionForm.append('<input type="hidden" name="id" value="'+ id +'">')
		actionForm.attr("action", "admMemberList");
		actionForm.submit();
	}); */
	
	$("#pageButton a").on("click", function(e){ //페이지 번호 눌렀을 때. pagebutton 안써주면 헤더, 푸터에 걸린 a태그도 다 링크 걸림
		e.preventDefault();		//a, submit
		var p = $(this).attr("href")
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});

	//전체체크
	$(document).ready(function(){
	$("#chkAll").click(function(){
		if($("#chkAll").is(":checked"))
			$("input[name=chk]").prop("checked", true);
		else
			$("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function(){
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;
			
			if(total != checked) 
				$("#chkAll").prop("checked", false);
			else
				$("#chkAll").prop("checked", true);
		});
	});
	
	//선택삭제
	function deleteCar() {
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
				url : "deleteCar",
				data : $("#frm").serialize(),
				traditional : true,			//배열 전송 시 traditional 씀
				dataType : "json",
				success : function(result) {
					if (result == true) {
						alert("삭제 완료되었습니다.");
						location.reload();
					}
				},
				error : function() {
					alert("삭제 실패하였습니다.");
				}
			});
		}
	}
	
</script>