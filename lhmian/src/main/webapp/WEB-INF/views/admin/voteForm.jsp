<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="sec-title-container-padding-topbottom text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">관리비</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">관리비를 확인하세요.</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--end title-->
				<div class="col-md-6">
					<form action="findId" method="POST" autocomplete="off">
						<div class="form-body">
							<div class="section">
								<label class="field prepend-icon"> 이름 <input type="text"
									name="name" id="name" class="input-1" placeholder="이름을 입력해주세요.">
								</label>
								<div class="id-error-msg" style="display: none"></div>
							</div>
							<!-- 비밀번호 영역 -->
							<div class="section">
								<label class="field prepend-icon"> <input type="text"
									name="phone" id="phone" class="input-1"
									placeholder="휴대폰 번호를 입력해주세요.">
								</label>
								<div class="pw-error-msg" style="display: none"></div>
							</div>

						</div>
					</form>
				</div>


			</div>
		</div>
	</section>
</body>
</html>