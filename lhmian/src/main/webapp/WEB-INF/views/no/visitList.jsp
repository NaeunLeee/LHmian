<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
.font-size-12 {
	font-size: 12px;
}

.text-box {
    border-radius: 0;
    border-bottom: 0px;
    background-color: #f5f5f5 !important;
}
.comment-box .text-box:first-child {border-radius:10px 10px 0 0}
.comment-box .text-box:last-child {border-radius:0 0 10px 10px}

textarea {
	resize: none;		/* 사이즈 임의변경 불가 */
    border-radius: 10px;
    border: 1px solid #e1dede;
}

.textarea-insert {
	width: 95%;
	padding: 10px;
}

p {
	white-space: pre-wrap; /* 공백, 줄바꿈 유지 */
}
.insert {
	float: right;
	border: 0;
	background-color: transparent;
	font-size: 25px;
}
.container-insert {
	background-color: #f1f1f1;
	padding: 30px;
    border-radius: 10px;
    box-shadow: 3px 3px 17px lightgrey;
    margin-bottom: 30px;
}
.comment-box {
	padding: 0;
}
.wrapper-all {
	padding: 100px 50px;
}
.btn {
	padding: 6px 18px !important;
	float: right;
    border-radius: 10px;
}
.textarea-update {
	border:0; 
	width: 100%; 
	min-height:100px;
    border-radius: 5px;
    padding: 5px;
    white-space: pre-wrap;
    background-color: #f5f5f5;
}
.textarea-update::-webkit-scrollbar { 
    	display: none !important;
}
.wrap {
      width: 95%;
    }
.wrap textarea {
      width: 100%;
      resize: none;
      overflow-y: hidden; /* prevents scroll bar flash */
      padding-top: 0.7em;
      padding-bottom: 0.2em;
      line-height: 1.6;
    }


</style>
<div class="col-xs-12 wrapper-all">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 nopadding">
					<div class="text-center">
						<div class="pl-title-line-1"></div>
						<h4 class="font-weight-6">자유롭게 이야기를 나누어 보세요</h4>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	<div>
	</div>
	<br>
	<div class="col-xs-12 container-insert" align="center">
			<textarea rows="3" class="textarea-insert" id="visitContent" placeholder="우리는 서로 이웃입니다. 가는 말이 고와야 오는 말이 곱습니다."></textarea>
			<br>
			<button class="insert"><i class="far fa-paper-plane"></i></button>
	</div>
	<div class="col-sm-12 col-xs-12 comment-box">
		<c:forEach items="${list}" var="list" varStatus="status">
	      <div class="text-box border white padding-4">
        	  <div class="imgbox-medium left round overflow-hidden"><i class="fas fa-user-circle" style="font-size:10rem"></i></div>
       		  <div class="text-box-right more-padding-1">
     		 	<h5 class="less-mar-1">${list.visitWriter}<span class="font-size-12"> (${list.writerInfo})</span>
     		 	</h5>
    		      <div class="blog-post-info">${list.visitDate}<span></span></div>
      		      <br/>
      		      <div class="wrap">
   			       <textarea name="visitContent" data-no="${list.visitNo}" disabled class="textarea-update">${list.visitContent}</textarea>
   					<c:if test="${list.houseInfo != user}">
		     		 	<button type="button" class="btn" onclick="update(this)">수정</button>
   					</c:if>
   					<c:if test="${list.houseInfo == user}">
   						<button type="button" class="btn" onclick="del(${list.visitNo})">삭제</button>
   					</c:if>
	     		 </div>
        	   </div>
          </div>
      </c:forEach>
	</div>
</div>
	<form id="updateForm" name="updateForm" action="./visitUpdate" method="post">
		<sec:csrfInput/>
		<input type="hidden" name="houseInfo" value="${param.houseInfo }">
		<input type="hidden" name="visitNo" value="">
	</form>
<script>

$(document).ready(function() {
  $('.wrap').on( 'keyup', 'textarea', function (e){
    $(this).css('height', 'auto' );
    $(this).height( this.scrollHeight );
  });
  $('.wrap').find( 'textarea' ).keyup();
});

	//세대정보 가져오기(주소에서)
	var house = window.location.href;
	house = house.substr(-7);
	
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
		
		//등록버튼을 누르면 작동
		$('.insert').on('click', function() {
			var visitContent = $('#visitContent').val();
			if(!visitContent) {
				alert("내용을 입력하세요.");
			}else{
				if (confirm('방명록을 등록하시겠습니까?\n한번 등록한 방명록은 삭제할 수 없습니다.')) {
					$.ajax({
						url : "visitInsert",
						method : "post",
						beforeSend : function(xhr) {
							xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
						},
						data : {
							visitContent : $('#visitContent').val(),
							houseInfo : house
						},
						success : function() {
							alert(" 방명록이 등록되었습니다.");
							location.reload();
						}
					});
				}
			};
		});
	

	//한솔 추가
	function update(btn) {
		if (btn.innerText == "수정") {
			btn.innerText = "완료";
			let textarea = btn.previousElementSibling;
			textarea.style.border = '';
			textarea.style.background = '#fff';
			textarea.removeAttribute('disabled');
		} else {
			let textarea = btn.previousElementSibling;
			let visitNo = textarea.dataset.no;
			document.getElementsByName('visitNo').item(0).value = visitNo;
			updateForm.appendChild(textarea);
			updateForm.submit();
		}
	}
	
	function del(num) {
		console.log(num);
		if (confirm('삭제하시겠습니까?')) {
			$.ajax({
				url : "visitDelete",
				method : "post",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				data : {
					visitNo : num
				},
				success : function() {
					alert(" 방명록이 삭제되었습니다.");
					location.reload();
				}
			});
		}
	}
</script>
<!-- Template's stylesheets -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/megamenu/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-default.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/loaders/stylesheets/screen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/blog2.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Simple-Line-Icons-Webfont/simple-line-icons.css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/et-line-font/et-line-font.css">
<link href="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/js/tabs/css/responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/cubeportfolio/cubeportfolio.min.css">
<!-- Template's stylesheets END -->
<link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/resources/less/skin.less">
<!-- Skin stylesheet -->
<!-- Scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery/jquery.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/less/less.min.js" data-env="development"></script> 
<script src="${pageContext.request.contextPath}/resources/js/sticky/js/jquery.sticky.js"></script> 
<!-- Scripts END --> 
<!-- Template scripts --> 
<script src="${pageContext.request.contextPath}/resources/js/megamenu/js/main.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/owl.carousel.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/owl-carousel/custom.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/tabs/js/responsive-tabs.min.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/js/functions/functions.js"></script>