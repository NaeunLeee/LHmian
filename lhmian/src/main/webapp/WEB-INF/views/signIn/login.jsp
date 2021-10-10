<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	.find-util {
		padding: 0 20px;
		text-align: center;
	}
	
	.find-util a {
		color: black;
		padding: 0 10px;
		cursor: pointer;
	}

	.find-util a:link {
		color: black;
		text-decoration: none;
	}
	
	.find-util a:visited {
		color: black;
		text-decoration: none;
	}
	
	.find-util a:hover {
		color: black;
		text-decoration: underline;
	}

	.id-error-msg, .pw-error-msg, .login-error-msg {
		padding: 7px 0;
		color: red;
	}
	div .form-body .btn {
		height: 50px;
	}

</style>
<script>
	$(function() {

		$(window).load(function() {
			setTimeout(function() {

				$('.loader-live').fadeOut();
			}, 500);
		})

		const id = $('#id').val();
		const password = $('#password').val();

		$('#findId').on('click', function() {
			window.open("find/findIdForm", "아이디 찾기", "width=500, height=400");

		})

		$('#findPassword').on(
				'click',
				function() {
					window.open("find/findPasswordForm", "비밀번호 찾기",
							"width=500, height=400");

				})

		$("#id").on("propertychange change keyup paste input", function() {
			$('.id-error-msg').text('');
		});

		$("#password").on("propertychange change keyup paste input",
				function() {
					$('.pw-error-msg').text('');
				});

		//안먹음ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		$(".alert-closebtn").on("click", function() {
			const div = this.parentElement;
			div.style.opacity = "0";
			setTimeout(function() {
				div.style.display = "none";
			}, 600);

		})

	}) //function 끝

	//로그인
	function login() {
		$('.id-error-msg').text('');
		$('.pw-error-msg').text('');
		$('.getout').remove();

		const id = $('#id').val();
		const password = $('#password').val();

		if (id == "") {
			$('.id-error-msg').css('display', 'block');
			$('.id-error-msg').text('아이디를 입력해주세요.');
			$('#id').focus();
			return;
		}
		if (password == "") {
			$('.pw-error-msg').css('display', 'block');
			$('.pw-error-msg').text('비밀번호를 입력해주세요.');
			$('#password').focus();
			return;
		}

		$('#login').submit();

	}
	
	//엔터키 눌렀을때 로그인이 되도록
	function enterkey() {
        if (window.event.keyCode == 13) {
             // 엔터키가 눌렸을 때 실행할 내용
             login();
        }
	}

	
</script>
</head>
<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="#">홈</a></li>
							<li class="current"><a href="login">로그인</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</section>

	<!-- 로그인이 필요한 페이지입니다. -->
	<section class="sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="sec-title-container-padding-top text-center">
						<div class="gm-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">로그인</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">로그인이 필요합니다.</p>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>

			<div class="smart-wrap">
				<div class="smart-forms smart-container wrap-3">
					<!-- 로그인 폼 -->
					<form id="login" action="loginDo" method="POST" autocomplete="off">
						<div class="form-body">
						<div class="getout">
							<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
								<div class="alert-box danger">
									<span class="alert-closebtn"
										onclick="this.parentElement.style.display='none';">×</span>
									&nbsp;
									<i class="fa fa-exclamation-circle"></i>&nbsp;
									${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
									<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
								</div>
							</c:if>
							</div>

							<!-- 아이디 영역 -->
							<div class="section">
								<label class="field prepend-icon"> <input type="text"
									name="id" id="id" class="gui-input" placeholder="아이디를 입력해주세요.">
									<span class="field-icon"><i class="fa fa-user"></i></span>
								</label>
								<div class="id-error-msg" style="display:none"></div>
							</div>
							<!-- 비밀번호 영역 -->
							<div class="section">
								<label class="field prepend-icon"> <input
									type="password" name="password" id="password" class="gui-input"
									placeholder="비밀번호를 입력해주세요."> <span class="field-icon"><i
										class="fa fa-lock"></i></span>
								</label>
								<div class="pw-error-msg" style="display:none"></div>
							</div>
							<!-- 아이디 저장, 자동 로그인 영역 -->
							<div class="section">
								<label><input type="checkbox"> 아이디 저장</label>&nbsp;&nbsp;&nbsp;
								<label><input type="checkbox"> 자동 로그인</label>
							</div>
							<!-- 로그인 버튼 -->
								<button type="button" class="btn btn-gyellow btn-fullwidth uppercase"
									onclick="login()">로그인</button>
								<input onkeyup="enterkey()" type="hidden" value="" />
							<div class="form-footer">
								<!-- 아이디/비번찾기, 회원가입 -->
								<div class="find-util">
									<a id="findId">아이디 찾기</a>|<a id="findPassword">비밀번호 찾기</a>| <a
										href="signIn/leaderStep1">회원가입</a>
								</div>
							</div>
							<div class="spacer-t30 spacer-b30">
								<div class="tagline">
									<span> SNS 로그인 / 회원가입 </span>
								</div>
							</div>
							<div class="section">
								<img src="./resources/images/kakao_login_medium_narrow.png"
									onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=5986adbc56a3444841aed3bd67e4976d&redirect_uri=http://localhost:8091/app/kakaoLogin&response_type=code'">
							</div>
						</div>

						<!-- CSRF 토큰 -->

						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>

				</div>

			</div>
		</div>
	</section>

</body>
</html>