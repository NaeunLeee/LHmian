<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
.footer-icon {
	font-size: 30px;
	color: white;
	padding-right: 20px;
}

.sec-tpadding-3 {
	padding: 50px 0;
	}
	
		
.footer-item {
    position: relative;
    display: inline-block;
    padding: 0 11px;
}

.footerlink{
	font-size: 16px;
    color: white !important;
    font-weight: 300;
}

ul {
	padding:0
}


</style>

<section>
	<div class="container-fluid nopadding">
		<div class="parallax-overlay bg-opacity-8">
			<div class="container sec-tpadding-3 sec-bpadding-3">
				<div class="row">
					<div class=" col-md-12 col-centered text-center">
						<img src="${pageContext.request.contextPath}/resources/images/logo/LHmian_logo_v1.png" alt="" style="width: 150px;"/>
						<br /><br />
						
						<div class="clearfix"></div>

						<br />
						<ul>
							<li class="footer-item"><a href="#" class="footerlink">이용약관</a></li>
							<li class="footer-item"><a href="#" class="footerlink">개인정보 처리방침</a></li>
							<li class="footer-item"><a href="#" class="footerlink">사이트맵</a></li>
						</ul>
<!-- 						<h4 class="text-white uppercase">Address</h4>
						<h6 class="text-light uppercase">
							1234 new lorem Rd.<br /> ipsum city, cA 012345<br /> (0123)
							123-456-789
						</h6> -->
						<div class="clearfix"></div>
						<!-- <div class="divider-line solid light opacity-1"></div> -->
						<div class="col-md-12">
							<p class="text-gray">
								Copyright © 2021 <br /> Design & Developed by Team Naemian
							</p></br>
							
						</div>
						<div class="col-md-12 icon">
							<a href="#"><i class="bi bi-facebook footer-icon"></i></a>
							<a href="#"><i class="bi bi-instagram footer-icon"></i></a>
							<a href="#"><i class="bi bi-twitter footer-icon"></i></a>
							<a href="#"><i class="bi bi-skype footer-icon"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<div class="clearfix"></div>
<!--end section-->

</html>