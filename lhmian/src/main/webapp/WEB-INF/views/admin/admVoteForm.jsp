<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="${pageContext.request.contextPath}/resources/js/file-upload/fileinput.css" rel="stylesheet" type="text/css" />
<style>
.input-1 {
	height: 40px;
}

.btn {
	background-color: white;
}

#plusBtn {
	margin-right: 5px;
}

#question-area {
	margin-bottom: 20px;
}

.btn-dark-3 {
	height: 30px;
}

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

.bogi {
	margin-bottom: 15px;
}
</style>
</head>
<body>
	<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-6 col-xs-12 section-white">
					<div class="pages-sidebar-item">
						<ul class="pages-sidebar-links">
						<li><a href="admGeneration">세대 관리</a></li>
						<li><a href="admEnergyCon">에너지 사용량</a></li>
						<li><a href="admCarList">차량 관리</a></li>
						<li><a class="active" href="admOpeInfoList">게시글 관리</a></li>
						<li><a href="admSked">일정 관리</a></li>
						<li><a href="admPost">택배 관리</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-10 col-sm-6 col-xs-12">
					<div></div>
					<br> <br>
					<div class="sec-title-container less-padding-3 text-left">
						<div class="title-line-3 align-left"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">게시글 관리</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">게시글을 조회 및 수정합니다.</p>
					</div>

					<ul class="nav nav-tabs nav-justified">
						<li class="nav-item">
							<a class="nav-link" href="admOpeInfoList">운영 정보 공개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="admNoticeList">공지사항</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admCsList">민원</a>
						</li>
						<li class="nav-item">
							<a class="nav-link disabled" href="admVoteList">투표</a>
						</li>
						<li class="nav-item">
							<a class="nav-link disabled" href="${pageContext.request.contextPath}/itemLost/admLostList">분실물 보관소</a>
						</li>
						<li class="nav-item">
							<a class="nav-link disabled" href="admSked">일정 관리</a>
						</li>
					</ul>
					<div class="text-box section-light padding-4 col-7">
						<div class="col-md-12" style="float: none; margin: 0 auto;">
							<form id="frm" action="voteCreate?${_csrf.parameterName }=${_csrf.token }" method="POST"
								enctype="multipart/form-data" autocomplete="off">
								<!-- csrf -->
								<input type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }">
								<div class="form-body">
									<h5>제목</h5>
									<input type="text" name="voteTitle" id="voteTitle"
										class="input-1">
									<div class="col-md-6" style="padding-left: 0;">
										<h5>
											<i class="bi bi-calendar-check"></i>&nbsp;&nbsp;<label
												for="voteStart">시작</label>
										</h5>
										<input type="text" id="voteStart" name="voteStart"
											class="input-1" placeholder="날짜 선택..."><br>
									</div>
									<div class="col-md-6" style="padding-right: 0;">
										<h5>
											<i class="bi bi-calendar-check"></i>&nbsp;&nbsp;<label
												for="voteEnd">종료</label>
										</h5>
										<input type="text" id="voteEnd" name="voteEnd" class="input-1"
											placeholder="날짜 선택..."><br>
									</div>
									<div class="col-md-12"
										style="padding-left: 0; padding-right: 0;">
										<div id="question-area" class="text-box white padding-3">
											<div class="row question-label">
												<div class="col-md-2" style="padding-right: 0;">
													<h5>
														<i class="bi bi-arrow-return-right"></i> 보기 1
													</h5>
												</div>
												<div class="bogi col-md-10">
													<input id="vcContent" name="vcContent" class="input-1"
														required>
												</div>
											</div>
											<div class="row question-label">
												<div class="col-md-2" style="padding-right: 0;">
													<h5>
														<i class="bi bi-arrow-return-right"></i> 보기 2
													</h5>
												</div>
												<div class="bogi col-md-10" style="margin-bottom: 15px;">
													<input id="vcContent" name="vcContent" class="input-1"
														required>
													<button type="button" id="plusBtn"
														class="btn btn-tiny border border-dark">
														<i class="bi bi-plus-lg"></i> 추가
													</button>
												</div>
											</div>
										</div>
										<div style="margin-top: 10px;">
											<div style="width: 20%;">
												<input type="file" class="file" id="uploadImg"
													name="file" accept="image/jpeg, image/png, image/jpg" style="float: left;">
											</div>
										</div>

										<div class="col-md-12 text-center">
											<button type="button" id="insert" class="btn btn-gyellow-yj">등록</button>
											<button type="button" class="btn btn-gyellow-yj"
												onclick="goBack();">취소</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<script>

	$('#voteStart').datepicker();

	$('#voteEnd').datepicker();

	$.datepicker.setDefaults({
		dateFormat : 'yy/mm/dd',
		prevText : '이전 달',
		nextText : '다음 달',
		minDate : 0,
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
				'10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년'
	});

	$(document)
			.on(
					'click',
					'#plusBtn',
					function() {
						//보기 번호
						const questionNum = $('.question-label').length + 1;

						//보기 갯수가 10개 이상은 ㄴㄴ
						if (questionNum > 10) {
							alert('문항 개수는 10개를 초과할 수 없습니다.');
							return;
						}

						//보기 추가 태그
						const plusQuestionTag = '<div class="row question-label">'
								+ '<div class="col-md-2" style="padding-right: 0;">'
								+ '<h5>'
								+ '<i class="bi bi-arrow-return-right"></i> 보기 '
								+ questionNum
								+ '</h5>'
								+ '</div>'
								+ '<div class="bogi col-md-10">'
								+ '<input id="vcContent" name="vcContent" class="input-1" required>'
								+ '<button type="button" id="plusBtn"'
						  + 'class="btn btn-tiny border border-dark">'
								+ '<i class="bi bi-plus-lg"></i> 추가</button>'
								+ '<button type="button" id="deleteBtn"'
						  + 'class="btn btn-tiny border border-dark">'
								+ '<i class="bi bi-x-lg"></i> 삭제</button>'
								+ '</div>' + '</div>';

						//맨 마지막에 보기 추가
						$('#question-area').append(plusQuestionTag);

						//보기 추가와 함께 이전 추가, 삭제 버튼 제거
						$(this).next().remove();
						$(this).remove();

					})

	$(document)
			.on(
					'click',
					'#deleteBtn',
					function() {
						const questionNum = $('.question-label').length - 1;

						const btn = '<button type="button" id="plusBtn"'
		  + 'class="btn btn-tiny border border-dark">'
								+ '<i class="bi bi-plus-lg"></i> 추가</button>'
								+ '<button type="button" id="deleteBtn"'
		  + 'class="btn btn-tiny border border-dark">'
								+ '<i class="bi bi-x-lg"></i> 삭제</button>';

						$('.question-label').last().remove();
						$('.question-label').last().children().eq(1)
								.append(btn);

						//보기 개수가 2개면 삭제 버튼 삭제
						if (questionNum < 3) {
							$('.question-label').eq(1).children().eq(1)
									.children().eq(2).remove();
						}
					})


	$('#insert').on('click', function() {
		if ($('#voteTitle').val() == "") {
			alert('제목을 입력하세요.');
			return;
		}

		if ($('#voteStart').val() == "") {
			alert('투표 시작 날짜를 입력하세요.');
			return;
		}

		if ($('#voteEnd').val() == "") {
			alert('투표 종료 날짜를 입력하세요.');
			return;
		}

		for (let i = 0; i < $('.question-label').length; i++) {
			if ($('.question-label').eq(i).find("input").val() == "") {
				alert('문항을 입력하세요.');
				return;
			}
		}

		//datepicker에서 시작날짜 sysdate 이전 선택 못하게 하기
		//종료날짜는 시작날짜 이후가 되도록 하기, 몇일 이상 기간 못잡게 하기

		$('#frm').submit();
	})
</script>
</html>