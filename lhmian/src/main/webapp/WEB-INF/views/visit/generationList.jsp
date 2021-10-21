<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<style>
table {
	width: 800px;
}

textarea {
	width: 800px;
}

.status {
	width: 300px;
	display: inline-block;
}

.cbp-item-yj {
	margin: 0;
	padding: 20px;
}

.address-btn {
	padding: 70px 60px 110px 130px;
	border: 0px;
	background: transparent;
	font-size: 16px;
	font-weight: 600;
}

.padding-t40{
	padding-top: 40px;
}

.width-1400 {
	width: 1400px;
}
</style>

<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터9.jpg);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner"></div>
				</div>
			</div>
		</div>
	</section>
	<div class=" clearfix"></div>
</div>
<section>
	<div class="pagenation-holder">
		<div class="container width-1400">
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb-gray">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/resident/resident">입주민 공간</a></li>
						<li class="current"><a href="${pageContext.request.contextPath}/visit/generation">방명록</a></li>
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
					<h4 class="uppercase font-weight-7 less-mar-1">방명록</h4>
					<div class="clearfix"></div>
					<p class="by-sub-title" style="font-size: 13px;">자유롭게 방명록을 남겨보세요!</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container width-1400" align="center">
		<div class="text-box white padding-t40 col-7">
			<div class="gntList">
			</div>
			<div id="listBtn"></div>

		</div>
	</div>
</section>

<script>
	var pageNum = 0;
	var amount = 0;
	var gntCount = 0;

	//페이지로드시 펑션(기본 12개 세대 불러오기) 실행 및 전체 세대 카운트
	$(function() {
		gntList();

		$.ajax({
			url : "gntCount",
			method : "get",
			success : function(data) {
				gntCount = data;
			}
		});
	});

	//amount수만큼 로딩
	function gntList() {
		pageNum = 1;
		amount = 12;

		$.ajax({
			url : "gntList",
			method : "get",
			data : {
				pageNum : pageNum,
				amount : amount
			},
			success : function(datas) {
				$('.gntList').empty();
				$.each(datas, function(i, data) {
					var gntOne = '<div class="status">'
								+ '		<div class="cbp-item-yj web-design generation">'
								+ '			<div style="background: url(${pageContext.request.contextPath}/resources/images/logo/postbox.png) center center / cover no-repeat; height:100%">'
								/* + '			<img src="${pageContext.request.contextPath}/resources/images/logo/postbox.png" style="width: 100%; height: 100%">' */
								+ '			<button class="address-btn" value="' + data.houseInfo + '" onclick="generation(' + data.houseInfo + ')">'
								+ data.houseInfo.toString().substring(0, 3) + '동 ' + '<br>' + data.houseInfo.toString().substring(3, 7) + '호'
								+ '			</button>' 
								+ '		</div>'
								+ '</div>';
					$('.gntList').append(gntOne);
				});
			}
		});
		$('#listBtn').append($('<button class="btn btn-gyellow" style="height:100%; width:100%" id="addBtn">더보기+</button>'));
	}

	//더보기 클릭시 페이징
	$(document).on('click', '#addBtn', function() {
		var divCount = $('.gntList .status').length;
		pageNum = Math.ceil((divCount / 9)) + 1;
		amount = 12;

		$.ajax({
			url : "gntList",
			type : "get",
			data : {
				pageNum : pageNum,
				amount : amount
			},
			success : function(datas) {
				$.each(datas, function(i, data) {
					var gntOne = '<div class="status">'
								+ '		<div class="cbp-item-yj web-design generation">'
								+ '			<div style="background: url(${pageContext.request.contextPath}/resources/images/logo/postbox.png) center center / cover no-repeat; height:100%">'
								+ '			<button class="address-btn" value="' + data.houseInfo + '" onclick="generation(' + data.houseInfo + ')">'
								+ data.houseInfo.toString().substring(0, 3) + '동 ' + '<br>' + data.houseInfo.toString().substring(3, 7) + '호'
								+ '			</button>'
								+ '		</div>'
								+ '</div>';
					$('.gntList').append(gntOne);
				});
			}
		});
		console.log(pageNum);
		console.log(Math.ceil(gntCount / 12));
		if (pageNum == Math.ceil(gntCount / 12)) {
			$('#addBtn').remove();
		}
	});

	//세대 클릭시 새창으로 열림
	function generation(num) {
		openWin = window.open("../no/visitList?houseInfo=" + num, "방명록", "width=1000px, height=600px, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	};
</script>