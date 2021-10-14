<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	.error-msg {
		padding: 7px 0;
		color: red;
	}
	
	.success-msg {
		padding: 7px 0;
		color: green;
	}
	
	.correct-msg {
		padding: 7px 0;
		color: green;
	}
	
	.gubun-msg {
		padding-top: 12px;
	}
	
	.smart-forms .section {
		margin-bottom: 5px;
	}
	
	.smart-forms .section-gubun {
		margin: 15px 0;
	}
	
	.gubun {
		font-size: 16px !important;
	}
	
	.btn {
		margin-top: 18px !important;
	}
	.input-text {
		width: 50%;
	}
	.container {
		width: 50%;
	}
	.align-right {
		test-align: right;
	}
</style>
<!-- 10/14 디자인 수정: 이나은 -->
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
						<li><a href="${pageContext.request.contextPath}/myPage/myPage">마이 페이지</a></li>
						<li class="current"><a href="#">개인 정보 수정</a></li>
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
					<h4 class="uppercase font-weight-7 less-mar-1">개인 정보 수정</h4>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container" align="center">
		<div class="text-box white padding-4 col-7">
			<table class="table">
				<tbody>
					<tr>
						<th class="align-right">아이디</th>
						<td><input type="text" class="input-text form-control" id="id" name="id" aria-describedby="basic-addon3" value="${info.id}" disabled="disabled"></td>
					</tr>
						<!-- 10/05 비밀번호, 전화번호, 차량정보 수정 /지우고 덮어씌우는걸 추천-->
					<tr>
						<th class="align-right">현재 비밀번호</th>
						<td><input type="password" class="input-text form-control" id="pw" name="pw" aria-describedby="basic-addon3"><br></td>
					</tr>
					<tr>
						<th class="align-right">새 비밀번호</th>
						<td><input type="password" class="input-text form-control" id="newpw" name="newpw" aria-describedby="basic-addon3">
							<div class="pw-msg" style="display: none"></div>
						</td>
					</tr>
					<tr>
						<th class="align-right">새 비밀번호 확인</th>
						<td><input type="password" class="input-text form-control col-lg-1" id="newpwcheck" name="newpwcheck" aria-describedby="basic-addon3">
							<div class="pwcf-msg" style="display: none"></div> <br>
							<br>
							<button type="button" class="btnPwcn btn btn-default">비밀번호 변경</button>
						</td>
					</tr>
					<tr>
						<th class="align-right">휴대전화</th>
						<td><input type="text" id="Phone" name="Phone" class="input-text form-control" value="${info.phone}"><br>
							<div class="pw-msg2" style="display: none"></div><br>
							<button type="button" class="btnPhone1 btn btn-default">수정</button></td>
					</tr>
					<tr>
						<th class="align-right">차량정보</th>
						<td>
							<span>차종</span>
								<input type="text" class="input-text form-control" id="carCode" name="carCode" aria-describedby="basic-addon3"
									   disabled="disabled" value="${info.carCode}"><br> 
							<span>차번호</span>
								<input type="text" class="input-text form-control" id="carType" name="carType"
									   aria-describedby="basic-addon3" disabled="disabled" value="${info.carType}"><br>
							<button type="button" data-toggle="modal" data-target="#modal-switch" class="btn btn-default">수정</button>
						</td>
					</tr>
				</tbody>
			</table>
			<input type="hidden" id="houseInfo" name="houseInfo" class="houseInfo" value="${info.houseInfo}">
			<div id="modal-switch" tabindex="-1" role="dialog" aria-labelledby="modal-switch-label" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" data-dismiss="modal" class="close">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<div id="modal-switch-label" class="modal-title">
								<h4>차량 정보</h4>
							</div>
						</div>
						<div>
							<c:forEach var="car" items="${car}">
								<form class="frm">
									<span>순번</span> 
									<input type="text" id="carNo" name="carNo" class="carNo" value="${car.carNo}" disabled="disabled"><br>
									<span>차종</span> 
									<input type="text" id="carType" name="carType" class="carType" value="${car.carType}"><br> <span>차번호</span>
									<input type="text" id="carCode" name="carCode" class="carCode" value="${car.carCode}"><br>
								</form>
								<button class="btn2">수정</button>
									<!-- 10/05 비밀번호, 전화번호, 차량정보 수정 끝 -->
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="sec-padding"></div>
</section>
	<!-- for문 같이 여러 폼 형식의 값을 보내고 싶을때는 클래스를 이용해서 보낸다. -->
	<!-- id는 오로지 하나의 값만 인정된다. -->
	
	
	
	<!-- 10/05 js 전부 수정 -->
	<script type="text/javascript">
		$(".btnPhone1").on("click", function() {
			var phone = $("#Phone").val(); 
			console.log(phone);
			if(telValidator(phone) == true){
				console.log("성공");
				$.ajax({
				url : "updatePhone",
				type : "put",
				dataType : "json",
				data : JSON.stringify({
					phone : $("#Phone").val()
				}),
				contentType : 'application/json',
				success : function(data) {
					alert("수정이 완료 되었습니다");
					location.reload();
				},
				error : function() {
					alert("error"); // 실패 시 처리
				}
			}); 
			} else {
				console.log("실패");
			}
		});
		
		function telValidator(args) {
		    const msg = '유효하지 않는 전화번호입니다.';
		    // IE 브라우저에서는 당연히 var msg로 변경
		    
		    if (/^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/.test(args)) {
		        return true;
		    }
		    alert(msg);
		    return false;
		}


		$(".btn2").on("click", function() {
			console.log($(this).prev().children(".carType").val());
			console.log($(this).prev().children(".carCode").val());
			console.log($(this).prev().children(".rownum").val());
			console.log($(".houseInfo").val());
			$.ajax({
				url : "updateCar",
				type : "put",
				dataType : "json",
				data : JSON.stringify({
					houseInfo : $(".houseInfo").val(),
					carNo : $(this).prev().children(".carNo").val(),
					carCode : $(this).prev().children(".carCode").val(),
					carType : $(this).prev().children(".carType").val()
				}),
				contentType : 'application/json',
				success : function(data) {
					alert("수정이 완료 되었습니다");
					console.log(data);
					$("#modal-switch").hide();
					location.reload();
				},
				error : function() {
					alert("입력되지 않았습니다."); // 실패 시 처리
				}
			});

		});

		//비밀번호 실시간 검증
		$("#newpw").on("propertychange change keyup paste input", function() {
			passwordToken = false;

			// 실시간 데이터 셋팅
			textPw = $(this).val();

			$('.pw-msg').css('display', 'block');
			//비밀번호 정규식 함수에 따른 메시지 출력
			$('.pw-msg').addClass('error-msg').text(checkPwd(textPw));

		});

		//비밀번호 실시간 검증
		$("#newpwcheck").on(
				"propertychange change keyup paste input",
				function() {
					passwordToken = false;

					// 실시간 데이터 셋팅
					textPwcf = $(this).val();

					if (textPw !== textPwcf) {
						$('.pwcf-msg').css('display', 'block');
						$('.pwcf-msg').addClass('error-msg').text(
								'비밀번호가 일치하지 않습니다.');
					} else {
						$('.pwcf-msg').text('');
						passwordToken = true;
					}
				});

		$('#newpw').on('blur', function() {
			const password = $('#newpw').val();

			if (password == "") {
				$('.pw-msg').empty();
				$('.pw-msg').css('display', 'block');
				$('.pw-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				return;
			}
		})

		$('#newpwcheck').on('blur', function() {
			const passwordConfirm = $('#newpwcheck').val();

			if (passwordConfirm == "") {
				$('.pwcf-msg').empty();
				$('.pwcf-msg').css('display', 'block');
				$('.pwcf-msg').addClass('error-msg').text('비밀번호를 입력하세요.');
				return;
			}
		});

		//비밀번호 유효성 검사 함수
		function checkPwd(password) {
			let check = /(?=.*\d{1,20})(?=.*[~`!@#$%\^&*()-+=]{1,20})(?=.*[a-zA-Z]{1,20}).{8,20}$/
					.test(password);

			if (!check) {
				return "영문자, 숫자, 특수문자를 모두 포함하여 8~12자로 입력해주세요"
			}

			if (/(\w)\1\1/.test(password)) {
				return '같은 문자를 3번 이상 사용하실 수 없습니다.';
			}

			var cnt = 0;
			var cnt2 = 0;
			var tmp = "";
			var tmp2 = "";
			var tmp3 = "";
			for (var i = 0; i < password.length; i++) {
				tmp = password.charAt(i);
				tmp2 = password.charAt(i + 1);
				tmp3 = password.charAt(i + 2);

				if (tmp.charCodeAt(0) - tmp2.charCodeAt(0) == 1
						&& tmp2.charCodeAt(0) - tmp3.charCodeAt(0) == 1) {
					cnt = cnt + 1;
				}
				if (tmp.charCodeAt(0) - tmp2.charCodeAt(0) == -1
						&& tmp2.charCodeAt(0) - tmp3.charCodeAt(0) == -1) {
					cnt2 = cnt2 + 1;
				}
			}
			if (cnt > 0 || cnt2 > 0) {
				return '연속된 문자를 3번 이상 사용하실 수 없습니다.';
			}

			return '';

		}

		$(".btnPwcn").on("click", function() {
			if ($("#newpw").val() == $("#newpwcheck").val()) {
				console.log($("#newpw").val());
				$.ajax({
					url : "updatePw",
					type : "put",
					dataType : "json",
					data : JSON.stringify({
						password : $("#pw").val(),
						newpw : $("#newpw").val()
					}),
					contentType : 'application/json',
					success : function(data) {
						alert("수정이 완료 되었습니다");
						location.href = "./myInfo";
					},
					error : function() {
						alert("error"); // 실패 시 처리
					}
				});
			} else {
				alert("새로 입력한 비밀번호가 일치하지 않습니다.");
				return;
			}
		});
		<!-- 10/05 js 전부 수정 끝-->
	</script>
	
