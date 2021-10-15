<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<style>
textarea {
	resize: none;
	border: none;
	/* 	overflow: hidden; */
}

textarea:focus {
	outline: none;
}

.void {
	white-space: pre-wrap; /* 공백, 엔터키 보존 */
}

::-webkit-scrollbar { /* 스크롤바 투명하게 하기*/
	display: none;
}

#commContent {
	margin-bottom: 20px;
	width: 100%;
	min-height: 200px;
}

#commTitle {
	font-size: 20px;
	height: 35px;
}

.info {
	padding-right: 5px;
}
</style>


<body>
	<div class="header-inner-tmargin">
		${list.commHit}
		<section class="section-side-image clearfix">
			<div class="img-holder col-md-12 col-sm-12 col-xs-12">
				<div class="background-imgholder"
					style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터9.jpg);">
					<img class="nodisplay-image" src="http://placehold.it/1500x1000"
						alt="" />
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
						<div class="header-inner">
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class=" clearfix"></div>
	</div>
	<section>
		<div class="pagenation-holder">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
							<li><a
								href="${pageContext.request.contextPath}/resident/resident">입주민
									공간</a></li>
							<li class="current"><a
								href="${pageContext.request.contextPath}/commlist">커뮤니티</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<section class="section-light">
		<div class="container">
			<div class="row">
				<div class="text-box white padding-4 col-7" style="margin: 80px 0;">
					<div class="text-box">
						<textarea readonly id="commTitle" class="col-md-8 font-weight-7"
							style="background-color: transparent; font-size: 20px">${list.commTitle}</textarea>
						<h6 class="padding-4 col-md-12">
							<span class="info" style="font-size: 14px;">${list.id}</span> | <span
								class="info"><i class="bi bi-eye"></i>${list.commHit}</span> <span
								class="info"><i class="bi bi-calendar"></i> 작성일자 : <fmt:formatDate
									value="${list.commDate}" pattern="yy-MM-dd" /> <c:if
									test="${list.commUpdate != null}"> | 최종수정 : <fmt:formatDate
										value="${list.commUpdate}" pattern="yy-MM-dd" />
								</c:if></span>
						</h6>


					</div>

					<hr>
					<%-- <textarea readonly class="text-box padding-2 " rows="5" name="commContent" id="commContent" 
					 	  style="background-color:transparent; border:none; margin-top:20px;">${list.commContent}</textarea>  --%>
					<!-- 수정 폼 체크에디터 사용해서 따로 만든대서 div로 바깠어요~!! -->
					<div class="text-box padding-2 void" name="commContent"
						id="commContent"
						style="background-color: transparent; border: none; margin-top: 20px;">${list.commContent}</div>




					<div class="padding-4 col-sm-12 " align="right">
					
						<c:if test="${login eq list.id}">	<!-- 10/14 시큐리티 적용 -->
						<button type="button" class="btn btn-border light"
							style="padding: 4px 13px;" id="btnModify">수정</button>
						<button type="button" class="btn btn-border light"
							style="padding: 4px 13px;" id="btnDelete">삭제</button>
						</c:if>	
							
						<button type="button" class="btn btn-border light"
							style="padding: 4px 13px;" onclick="location.href='./commlist'">목록</button>
					</div>

					<form role="form" action="deleteComm" id="frm" name="frm"
						method="post">
						<input id="commNo" name="commNo" type="hidden"
							value="${list.commNo}">
					</form>

					<div class="divider" style="margin: 0; padding: 25px 0;"></div>
					<!-- 댓글 목록 -->

					<div class="text-box">
						<ul class="chat" style="padding: 0 15px;">
						</ul>

						<!-- 댓글 등록 -->
						<div class="panel-heading" style="border: 1px solid lightgray">
							<form id="replyForm">
								<input type="hidden" id="" name="commNo" value="${list.commNo}">
								<!-- 10/14 cmtWriter value 변경 -->
								<input type="hidden" id="cmtWriter" name="cmtWriter" value="${login}">
								<textarea rows="7" style="width: 100%" id="cmtContent"
									name="cmtContent"
									placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 댓글 작성 시 타인에 대한 배려와 책임을 담아주세요."></textarea>
							</form>
						</div>
						<div class="col-md-12" style="padding: 0; margin-top: 15px">
							<button class="btn btn-border light" type="button" id="saveReply"
								style="float: right">댓글등록</button>
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

	
	// 10/14 시큐리티 토큰 ajax 전부 적용, ajax 양식 및 커뮤니티 기능 재정리
	
	$("#btnDelete").on("click", function () {
		if (confirm('삭제할까요??')){
			$.ajax({
				url: "deleteComm",
				type : "post",
				data: {
					commNo: $("#commNo").val()
				},
				dataType: 'json',
				beforeSend: function (xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success: function (result) {
					if (result == true) {
						alert("성공")
						window.location.href = "commlist";
					}
				},
				error: function (e) {
					console.log(e);
				}
			});
		}
			
	});

	// 수정 버튼 이벤트 (10/11 추가: 이나은)
	$('#btnModify').on("click", function() {
		if (confirm('수정하시겠습니까?')) {
			$(location).attr('href','commUpdate?commNo=' + $('#commNo').val());
		}
	})

	// 댓글 보여주기
	function showList() {
		//초기화
		$('.chat').empty();
		
		
		function makeLi(datas) {
			var str = "";
			if(datas.cmtWriter == '<sec:authentication property="principal.username" />'){
				str = '<input type="hidden" id="cmtNo2" value="'+ datas.cmtNo +'">'
					+ '<button type="button" class="test" id="cmtUpdate" data-num="'+ datas.cmtNo + '">수정</button>'
					+ '&nbsp'
					+ '<button type="button" id="cmtDelete" onclick="button2_click(this);" data-num="'
					+ datas.cmtNo + '">삭제</button>'
				}
			return '<li class="left clearfix">'
			+ '	<div id="'+ datas.cmtNo +'">'
			+ '			<strong class="primary-font">'
			+ '<i class="bi bi-person-circle">' + '</i>' + ' '
			+ datas.cmtWriter
			+ '</strong>'
			+ '			<small class="pull-right text-muted">'
			+ datas.cmtDate
			+ '</small>'
			+ '		<p class="void">'
			+ datas.cmtContent
			+ '</p>'
			+ '<div id="test">' + '</div>'
			+ str
			+'	</div>' + '<br>'
			+ '</li>';
		}

		$.ajax({
			url: './reply/',
			data: {
				commNo: $("#commNo").val()
			},
			dataType: 'json',
			success: function (datas) {
				console.log(datas);
				let str = "";
				for (i = 0; i < datas.list.length; i++) {
					str += makeLi(datas.list[i]);

				}
				$(".chat").html(str);
			},
			error: function (e) {
				console.log(e);
			}
		});
	}

	showList();

	//등록처리
	$("#saveReply").on("click", function (e) {
		e.preventDefault();

		let reply = $("input[name='cmtContent']").val();
		let replyer = $("input[name='cmtWriter']").val();
		
		if (reply == "" || replyer == "") {
			alert("내용을 입력 해주시거나 회원만 등록 가능합니다.")
			return;
		}
		
		$.ajax({
			url: "./reply/",
			method: "post",
			data: $("#replyForm").serialize(),
			dataType: "json",
			beforeSend: function (xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			success: function (data) {
				showList();
			},
			error: function () {
				alert("등록 실패");
			}
		});
	});

	//수정
	function cmtUpdate(b) {
		$.ajax({
			url: "./reply/",
			type: "put",
			dataType: "json",
			beforeSend: function (xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data: JSON.stringify({
				cmtContent: $("#cmtContent").val(),
				cmtNo: b
			}),
			contentType: 'application/json',
			success: function (datas) {
				alert("성공")
				console.log(datas)
				showList();
			},
			error: function () {
				alert("error"); // 실패 시 처리
			}
		});
	}

	//삭제
	function cmtDelete(b) {
		$.ajax({
			url: "./reply/" + b,
			type: "delete",
			dataType: "json",
			beforeSend: function (xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data: JSON.stringify({
				cmtNo: b
			}),
			contentType: 'application/json',
			success: function (result) {
				if (result == true) {
					alert("성공")
					showList();
				}
			},
			error: function () {
				alert("삭제 실패"); // 실패 시 처리
			}
		});
	}

	$(document)
		.on("click", "#cmtUpdate", function (e) {
			e.preventDefault();
			var num = $(this).data("num")

			console.log(num);

			$(this).parent().children("#cmtUpdate").html("완료");
			$(this).attr("id", "cmtUpdate2");
			$(this).parent().children('p').remove();
			$(this).parent().children('div').attr('id', 'test0');
			$.ajax({
				url: "./reply/" + num,
				type: "get",
				dataType: "json",
				contentType: 'application/json',
				success: function (result) {
					console.log(result);
					
					
					// 10/14 str2 수정
					var str2 = '<textarea rows="7" style="width: 100%; border-style: solid;" id="test" class="test" name="test">'
						+ result.cmtContent
						+ '</textarea>'
					
					$("#test0").html(str2);

					$(document)
						.one("click",
							"#cmtUpdate2",
							function () {
							var cmtContent = $(this).parents("div").children("#test0").children(".test").val();
							console.log(cmtContent);
							
							
								if (confirm('수정할까요??')) {
									$
										.ajax({
											url: "./reply/",
											type: 'put',
											dataType: "json",
											contentType: 'application/json; charset=utf-8',
											beforeSend: function (xhr) {
												xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
											},
											data: JSON
												.stringify({
													cmtNo: num,
													cmtContent: cmtContent
												}),
											success: function (
												data) {
												console
													.log(data);
												showList();

											},
											error: function () {
												alert("수정실패");
												console
													.log($(
															"#test")
														.val());
											}
										});
								}
							});

				},
				error: function (result) {
					console.log(result);
					alert("실패"); // 실패 시 처리
				}
			});

		});

	// 삭제 버튼
	function button2_click(tabInfo) { // 함수에서 this를 사용하면 값이 정확히 넘어가지 않는다. 
		// 이 때문에 태그에서 함수를 사용할때 태그내부 함수()에 this를 넣어주면 그 태그에 있는 모든 정보를 담아준다.
		// 이를 이용하여 정보를 갖고 올 수 있다.
		if (confirm("삭제 하시겠습니까?")) {
			console.log("삭제버튼을 누르셨습니다.");
			var b = $(tabInfo).data("num");
			console.log(b);
			cmtDelete(b);
		}

	}

	var id = $("#id").val();
	var login = '<sec:authentication property="principal.username" />';

	if (id == login) {
		console.log("일치");
		console.log(id);
		console.log(login);
	} else {
		console.log("불일치");
		console.log(id);
		console.log(login);
	}
	
	
</script>