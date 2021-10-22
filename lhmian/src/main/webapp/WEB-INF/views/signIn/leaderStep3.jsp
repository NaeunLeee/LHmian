<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
	.content {
		margin-bottom: 150px;
	}
</style>


<body>
	<section>
		<div class="pagenation-holder-no-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb-gray">
							<li><a href="${pageContext.request.contextPath}/">홈</a></li>
							<li class="current"><a href="">회원가입</a></li>
						</ol>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</section>

	<section class="sec-padding section-light">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="content sec-title-container-padding-top text-center">
						<div class="gm-title-line-1"></div>
						<h4 class="uppercase font-weight-7 less-mar-1">가입 완료</h4>
						<div class="clearfix"></div>
						<p class="by-sub-title">회원 가입이 완료되었습니다!</p>
						<br><br>
						<button type="button" class="btn btn-gyellow" onclick="location.href='${pageContext.request.contextPath}/login'"><i class="bi bi-arrow-up-left-square"></i>&nbsp;&nbsp;로그인하러 가기</button>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>
		</div>
	</section>
</body>
</html>