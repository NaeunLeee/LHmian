<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<sec:authorize access="hasAnyRole('ROLE_OWNER', 'ROLE_MEMBER')">
	<script>
	
	let count = '${count}';
	console.log(count);
	var cookieCheck = getCookie("popupYN");
	
	if (count > '0' && !getCookie("close20090524")) {

		window.open("popup/vote", "주민 투표 결과",
						"width=750, height=550, left=300, top=50");
	}

	
	function getCookie( cookieName ) { 
		var search = cookieName + "="; 
		var cookie = document.cookie; 
		/* 현재 쿠키가 존재할 경우 */ 
		if( cookie.length > 0 ) { 
			/* 해당 쿠키명이 존재하는지 검색한 후 존재하면 위치를 리턴. */ 
			startIndex = cookie.indexOf( cookieName ); 
			/* 만약 존재한다면 */ 
			if( startIndex != -1 ) { 
				/* 값을 얻어내기 위해 시작 인덱스 조절 */ 
				startIndex += cookieName.length; 
				/* 값을 얻어내기 위해 종료 인덱스 추출 */ 
				endIndex = cookie.indexOf( ";", startIndex ); 
				/* 만약 종료 인덱스를 못찾게 되면 쿠키 전체길이로 설정 */ 
				if( endIndex == -1) endIndex = cookie.length; 
				/* 쿠키값을 추출하여 리턴 */ 
				return unescape( cookie.substring( startIndex + 1, endIndex ) ); 
				} else { 
					/* 쿠키 내에 해당 쿠키가 존재하지 않을 경우 */ 
					return false; 
					} 
			} else { 
				/* 쿠키 자체가 없을 경우 */ 
				return false; 
				} 
		} 

	</script>
</sec:authorize>

<style>
.scroll-down {
  position: absolute;
  width: 24px;
  height: 24px;
  margin-left: -12px;
  border-left: 2px solid #fff;
  border-bottom: 2px solid #fff;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  -webkit-animation: sdb 1s infinite;
  animation: sdb 1s infinite;
  box-sizing: border-box;

}

.scroll-down-text{
	position: absolute;
	top: 80%;
	font-size:18px;
	font-weight:800;
	color: white;
	text-align: center;
	font-family: "Didot LT STD";
	left:0
}



@-webkit-keyframes sdb {
  0% {
    -webkit-transform: rotate(-45deg) translate(0, 0);
  }
  20% {
    -webkit-transform: rotate(-45deg) translate(-10px, 10px);
  }
  40% {
    -webkit-transform: rotate(-45deg) translate(0, 0);
  }
}
@keyframes sdb {
  0% {
    transform: rotate(-45deg) translate(0, 0);
  }
  20% {
    transform: rotate(-45deg) translate(-10px, 10px);
  }
  40% {
    transform: rotate(-45deg) translate(0, 0);
  }
}

.ment-1{
	top:55%; 
	color:white; 
}

.title-1{
	font-weight: 1000; 
	font-size: 85px; 
	font-family: serif;
	position: relative;
}

.Dodum-font{
	font-family: 'Gowun Dodum', sans-serif;
}

p {
	line-height: normal; 
	font-weight: 600; 
	font-size: 30px;
}
.slide-2 {
	top: 200px; 
	left: 60px; 
	color: white
}

</style>


<div id="fullpage">

	<div class="section" style="background: url(https://cdn.imweb.me/thumbnail/20210528/3b800594243d1.jpg) center center / cover no-repeat;">
	<div class="container">
	<div class="row">
		<div class="col-md-12 text-center font-weight-8 ment-1 Dodum-font">
			<img src="${pageContext.request.contextPath}/resources/images/logo/LHmian_logo_v1.png" alt="" style="width:350px;">
			<h5 style="font-size:18px;">삶을 더욱 풍요롭게 해 줄 안식처</h5>
		</div>
			<div class="scroll-down-text col-sm-12 Dodum-font">Scroll down<br>
			<span class="scroll-down"></span>

			</div>
		</div>
	</div>
	</div>
	<div class="section"
		style="background: url(https://cdn.imweb.me/thumbnail/20210528/16f133f94723b.jpg) center center/cover no-repeat;">
		<div class="row">
			<div class="col-md-12 text-left font-weight-8 Dodum-font slide-2">
				<h3 style="margin: 0">도심 속 휴양지</h3>
				<br>
				<h4>삶의 감수성을 채울 수 있는 힐링을 위한 공간</h4>
			</div>
		</div>
	</div>
	<div class="section"
		style="background: url(${pageContext.request.contextPath}/resources/images/main/메인3.jpg) center center / cover no-repeat;">
<!-- 		<div class="container">
			<div class="row">
				<div class="col-md-12 font-weight-8 Dodum-font" style="color: white">
					<h1 class="font-weight-9">아크로 포레스트 웅앵웅</h1>
					<br>
					<h5>LH미안~~~~~</h5>
				</div>
			</div>
		</div> -->
	</div>
	<div class="section"
		style="background: url(https://cdn.imweb.me/thumbnail/20210528/4999d67d71919.jpg) center center/cover no-repeat;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center font-weight-9 Dodum-font"
					style="color: white;">
					<!-- <h1 style="font-weight: 1000; font-size: 55px">LHmian</h1> -->
					<h3><p>LHmian은 <br>
					100년이 흘러도 변치 않는 효율과 실용,<br>
					가치를 구현합니다.</p></h3>
				</div>
			</div>
		</div>
		</div>
</div>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/ss/jquery.fullpage.css"
	rel="stylesheet" type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ss/jquery.fullpage.js"></script>

<script>
	$(document)
			.ready(
					function() {
						$('#fullpage').fullpage({
							//options here
							autoScrolling : true,
							scrollHorizontally : true
						});

					});
</script>