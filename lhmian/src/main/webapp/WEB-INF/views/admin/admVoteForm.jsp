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

.col-md-11 {
	margin-bottom: 15px;
}

#question-area {
	margin-bottom: 20px;
}

.btn-dark-3 {
	height: 30px;
}
</style>
</head>
<body>
	<section class="sec-padding ">
		<div class="col-xs-12 nopadding">
			<div class="sec-title-container-padding-topbottom text-center">
				<div class="pl-title-line-1"></div>
				<h4 class="uppercase font-weight-7 less-mar-1">투표 등록</h4>
				<div class="clearfix"></div>
				<p class="by-sub-title">투표를 등록하세요.</p>
			</div>
		</div>
		<div class="clearfix"></div>
		<!--end title-->
		<div class="container">
			<div class="row">
				<div class="text-box section-light padding-4 col-7">
					<div class="col-md-12" style="float: none; margin: 0 auto;">
						<form id="frm" action="voteCreate" method="POST" autocomplete="off">
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
											<div class="col-md-1" style="padding-right: 0;">
												<h5>
													<i class="bi bi-arrow-return-right"></i> 보기 1
												</h5>
											</div>
											<div class="col-md-11">
												<input id="vcContent" name="vcContent" class="input-1" required>
											</div>
										</div>
										<div class="row question-label">
											<div class="col-md-1" style="padding-right: 0;">
												<h5>
													<i class="bi bi-arrow-return-right"></i> 보기 2
												</h5>
											</div>
											<div class="col-md-11" style="margin-bottom: 15px;">
												<input id="vcContent" name="vcContent" class="input-1" required>
												<button type="button" id="plusBtn"
													class="btn btn-tiny border border-dark">
													<i class="bi bi-plus-lg"></i> 추가
												</button>
											</div>
										</div>
									</div>
									<div class="col-md-12 text-center">
										<button type="button" id="insert" class="btn btn-gyellow-yj">등록</button>
										<button type="button" class="btn btn-gyellow-yj" onclick="goBack();">취소</button>
									</div>
								</div>
							</div>
						</form>
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
								+ '<div class="col-md-1" style="padding-right: 0;">'
								+ '<h5>'
								+ '<i class="bi bi-arrow-return-right"></i> 보기 '
								+ questionNum
								+ '</h5>'
								+ '</div>'
								+ '<div class="col-md-11">'
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

		console.log($('.question-label').eq(0).val());
					
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
				
				for (let i=0; i < $('.question-label').length; i++) {
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