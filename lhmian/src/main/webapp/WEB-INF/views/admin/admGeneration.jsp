<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 10/18 생성: 이나은 -->

<style>
	.container {
		width: 80%;
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
	
	td {
		vertical-align: middle !important;
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
	#all, #notpaid, #leader, #owner {
		margin: 0px 5px 0px;
	}
	
	.text-box.padding-4 {
		padding-right: 0px;
	}
	.padding-l40{
		padding-left: 40px !important;
	}
	.padding-t40{
		padding-top: 40px !important;
	}
</style>


<section class="sec-padding-1">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-12 section-white padding-t40">
				<div class="pages-sidebar-item">
					<!-- <h5 class="uppercase pages-sidebar-item-title">관리자</h5> -->
					<ul class="pages-sidebar-links">
						<li><a href="feeList">관리비</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a class="active" href="#">세대 관리</a></li>
						<li><a href="admMemberList">회원 관리</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-6 col-xs-12 padding-l40">
				<div></div><br><br>
				<div class="sec-title-container text-left">
					<div class="title-line-3 align-left"></div>
					<h4 class="uppercase font-weight-7 less-mar-1">세대 관리</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title">LHmian의 모든 세대를 조회합니다.</p>
				</div>

				<div style="float: left; margin-left: 40px;" id="criteriaForm" data-option="${type}">

					<%-- <form id="actionForm" action="admGeneration" method="get">
						<select name="type" class="form-control" style="width: 100px; ">
							<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
							<option id="N" value="N" ${pageMaker.cri.type=='N' ? 'selected' : ""}>이름</option>
							<option id="C" value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>동호수</option>
							<option id="A" value="A" ${pageMaker.cri.type=='A' ? 'selected' : ""}>휴대폰번호</option>
						</select> 
						<input name="keyword" class="form-control" style="width: 200px; margin-right: 10px;" value="${pageMaker.cri.keyword}"> 
							<label for="all">전체</label><input type="checkbox" id="A" name="option" value="A" checked="checked">
							<label for="notpaid">관리비미납</label><input type="checkbox" id="N" name="option" value="N" onchange="checkOption()">
							<label for="leader">입주민대표</label><input type="checkbox" id="L" name="option" value="L" onchange="checkOption()">
							<label for="owner">세대주</label><input type="checkbox" id="O" name="option" value="O" onchange="checkOption()">
							<input type="hidden" name="preType" id="preType" value="${type}">
						<button type="button" class="btn btn-dark" id="searchBtn" onclick="allChecked()">검색</button>
						
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}"><br>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form> --%>
				</div>
				<div>
					<!-- <button class="btn btn-default" onclick="deleteMember()" type="button" id="btnDelete" style="float:right;">회원삭제</button> -->
					<button class="btn btn-gyellow" type="button" id="showModal" style="float:right; margin-right: 5px;">SMS전송</button>
				</div>
				<div class="text-box white padding-t40">
					<form id="frm"> <!-- 0928 form 추가 -->
						<table class="ui celled table" id="memberTable">
							<thead>
								<tr style="text-align: center;">
									<th><input type="checkbox" name="chkAll" id="chkAll"></th>
									<th>동호수</th>
									<th>세대주</th>
									<th>구성원 수</th>
									<th>관리비</th>
									<th>차량</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<c:forEach var="gen" items="${list}">
									<tr class="move tr_1">
										<td>
											<input type="checkbox" name="chk" id="" value="" data-name="" data-phone="">
										</td>
										<td></td>
										<td></td>
										<td></td>
										<td>
											<button type="button" class="feeBtn btn btn-default" data-houseInfo="">관리비</button>
										</td>
										<td>
											<button type="button" class="carBtn btn btn-default" data-houseInfo="">차량정보</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
					<br>
					<!-- 폼 -->
					<%-- <div id="pageButton" align="center">
						<ul class="pagination hover-orange">
							<c:if test="${pageMaker.prev == true}">
								<li>
									<a href="${pageMaker.startPage-1}">
										<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
									</a>
								</li>
							</c:if>
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
								<li><a href="${num}" style="<c:if test="${num eq pageMaker.cri.pageNum}">color:white; background-color:orange;</c:if>">${num}</a></li>
							</c:forEach>
							<c:if test="${pageMaker.next == true}">
								<li>
									<a href="${pageMaker.endPage+1}">
										<span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
									</a>
								</li>
							</c:if>
						</ul>
					</div> --%>
				</div>
			</div>
		</div>
	</div>
</section>

