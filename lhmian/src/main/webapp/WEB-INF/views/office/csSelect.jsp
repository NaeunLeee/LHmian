<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
/* h4 {
	color: #727272;
}

tr {
	border-bottom: 1px solid lightgray;
	height: 50px;
	cursor: pointer;
}

.table-style-2 {
	width: 800px;
	text-align: center;
}

tr:hover {
	background-color: lightyellow;
}

.btn-gyellow-yj {
	height : 30px;
	color: #fff;
	background-color: #ecae3d;
	padding : 0 30px;
} */

textarea {
	resize:none;
	border:none;
/* 	overflow: hidden; */
}

textarea:focus {
    outline: none;
}

.void {
	white-space: pre-wrap;	/* 공백, 엔터키 보존 */
}

::-webkit-scrollbar {	/* 스크롤바 투명하게 하기*/
  display: none;
}	

#csContent {
	margin:20px 0;
	width: 100%;
	min-height: 100px;
	background-color:transparent; 
	border:none;
	
}

#csTitle {
	font-size: 20px;
	height: 35px;
}

.info {
	padding-right: 5px;
}


.a_label{
    top: 20px;
    display: inline-block;
    padding: 4px;
    font-size: 11px;
    letter-spacing: 1px;
    color: #fff;
    left: 2.2em;
    background-color: #346aff;
}

.reply{
	border:1px solid black;
	padding: 8px 12px;	
}

.div_reply{
	width:11%; 
	padding-left:30px; 
	padding-right:0; 
	padding-top:3px;
}

.div_reply_wrap{
	padding-left:40px; 
	padding-top:20px; 
	margin-bottom:30px
}

.re-cal{
	text-align:right; 
	margin-top:0; 
	margin-bottom:30px
}

.trans-15 {
	background-color: rgba(0, 0, 0, 0.15) !important;
}


</style>
<body>
<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터2.jpg);">
				<img class="nodisplay-image" src="${pageContext.request.contextPath }/resources/images/header/헤더푸터2.jpg" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner trans-15">

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
							<li><a href="${pageContext.request.contextPath}/office/office">관리사무소</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/office/csList">민원게시판</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr>
				<section class="section-light sec-padding">
				<div class="container">
				<div class="row">
				<div class="text-box white padding-4 col-7" style="margin-top:50px; ">
							<div class="text-box">
							<textarea readonly id="csTitle" class="col-md-11 font-weight-7" style="background-color:transparent; font-size:20px">${cs.csTitle}</textarea>
							<div class="text-box">
							<h6 class="info col-md-4 padding-4" style="font-size:14px;">| ${cs.name}</h6>
							<h6 class="info col-md-8 padding-4" style="text-align:right">
							<i class="bi bi-calendar"></i> 작성일자 : <fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" />
							<c:if test="${not empty cs.csUpdate}"> | 수정일자 : <fmt:formatDate value="${cs.csUpdate}" pattern="yy-MM-dd" /></c:if>
								</h6>
						</div>
						<div class="text-box padding-2 void" id="csContent">${cs.csContent}
						</div>
				<!-- 10/19 수정: 이나은 (글 작성자에게만 수정, 삭제 버튼이 뜨도록) -->
					<div class="padding-4 col-sm-12 " align="right">
						<c:if test="${cs.name eq name}">
							<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="modifyBtn">수정</button>
							<button type="button" class="btn btn-border light" style="padding: 4px 13px;" id="deleteBtn">삭제</button>
						</c:if>
						<button type="button" class="btn btn-border light" style="padding: 4px 13px;" onclick="location.href='../office/csList'" >목록</button>
					</div>
	
	
	
	<form id="deleteForm" name="deleteForm" action="csDeleteBoard" method="post">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	</form>
	
	<div class="divider" style="margin:0; padding:25px 0;"></div>

<!-- 답변 -->
<c:if test="${not empty cs.csAnswer}"><%-- 
<div class="col-md-12" style="padding-top:15px">
<span style="float:right; font-size:12px"><i class="bi bi-calendar"></i> 답변일자 : <fmt:formatDate value="${cs.csAnsdate}" pattern="yy-MM-dd" /></span>
</div> --%>
<div class="col-md-12 div_reply_wrap">
              <div class="col-md-1 div_reply">
              <span class="reply"><i class="fa fa-reply" aria-hidden="true"></i>
               &nbsp;RE</span></div>
                <div class="col-md-10" style="padding:0px; width:89%">
                
              <span class="font-weight-7 void" style="font-size:20px">${cs.csTitle}</span><p></p>
		<div class="text-box">
		<!-- <h6 class="col-md-4" style="font-size:14px; padding:0px; margin-top:0px">| 관리자</h6> -->
		<h6 class="info col-md-12 padding-4 re-cal">
		<i class="bi bi-calendar"></i> 답변일자 : <fmt:formatDate value="${cs.csAnsdate}" pattern="yy-MM-dd" />
		
			</h6>
	</div>
              <div>${cs.csAnswer}</div>
              
              </div>
                </div>
     		</div>
            </c:if>
<!-- <img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_re.gif" 
alt="답변" class="ec-common-rwd-image" style="font-size:20px"></img> -->



<!-- 답변 등록 -->
<%-- <div align="center">
	<form id="replyForm" action="csAnswer" method="post">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
		<img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_re.gif" alt="답변" class="ec-common-rwd-image"></img>
		<textarea rows="10" cols="100" id="csAnswer" 
		name="csAnswer">${cs.csAnswer}</textarea><br>
		<c:if test="${empty cs.csAnswer}">
		<button type="button" id="saveAnswer" class="btn btn-gyellow-yj">답변 등록</button>
		</c:if>
		<c:if test="${not empty cs.csAnswer}">
		<button type="button" id="csUpdateBtn" class="btn btn-gyellow-yj">답변 수정</button>
		</c:if>
	</form>
</div> --%>
</div>
</div>
</div>
</section>
<br>

</body>





<%-- 
<div align="center">
	<h4>민원</h4>
	<hr>
	<div>
		<input id="csTitle" type="text" value="${cs.csTitle}" disabled="disabled"><br>
		작성일자 : <fmt:formatDate value="${cs.csDate}" pattern="yy-MM-dd" />
		<c:if test="${not empty cs.csUpdate}"> / 수정일자 : <fmt:formatDate value="${cs.csUpdate}" pattern="yy-MM-dd" /></c:if><br>
		작성자 : ${cs.name}
		<hr>
		<textarea id="csContent" rows="5" cols="33" disabled="disabled">${cs.csContent}</textarea>
	</div>
	<br>
	<form id="deleteForm" name="deleteForm" action="csDeleteBoard" method="post">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	</form>
	<div align="center">
		<sec:authorize access="hasAnyRole('ROLE_OWNER', 'ROLE_MEMBER')">
			<button type="button" id="modifyBtn" class="btn btn-gyellow-yj">수정</button>
			<button type="button" id="deleteBtn" class="btn btn-gyellow-yj">삭제</button>
		</sec:authorize>
		<button type="button" onclick="location.href='../office/csList'" class="btn btn-gyellow-yj">목록</button>
	</div>
</div>
<hr> --%>



<%-- <!-- 답변 등록 -->
<div align="center">
	<form id="replyForm" action="csAnswer" method="post">
		<input id="csNo" name="csNo" type="hidden" value="${cs.csNo}">
		<textarea rows="10" cols="100" id="csAnswer" name="csAnswer">${cs.csAnswer}</textarea><br>
		<c:if test="${empty cs.csAnswer}">
		<button type="button" id="saveAnswer" class="btn btn-gyellow-yj">답변 등록</button>
		</c:if>
		<c:if test="${not empty cs.csAnswer}">
		<button type="button" id="csUpdateBtn" class="btn btn-gyellow-yj">답변 수정</button>
		</c:if>
        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	</form>
</div>
<br> --%>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
let csrfHeaderName = "${_csrf.headerName}";
let csrfTokenValue = "${_csrf.token}";

$('#modifyBtn').on("click", function() {
	if (confirm('수정하시겠습니까?')) {
		$(location).attr('href','csUpdateBoard?csNo=' + $('#csNo').val());
	}
});

/* $('#modifyBtn').on("click", function() {
	if ($(this).attr('id') == 'modifyBtn') {
		if (confirm('수정하시겠습니까?')) {
			$('#csTitle').attr("readonly", false);
			$('#csContent').attr("readonly", false);
			$(this).attr('id', 'updateBtn').html('완료');
		}	
	} else if ($(this).attr('id') == 'updateBtn') {
		if (confirm('수정사항을 반영하시겠습니까?')) {
			$.ajax({
				url: "csUpdateBoard",
				beforeSend: function(xhr) {
		            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		         },
				type: "post",
				dataType: "json",
				data: JSON.stringify({
					csNo: $('#csNo').val(),
					csTitle: $('#csTitle').val(),
					csContent: $('#csContent').val()
				}),
				contentType: 'application/json',
				success: function (data) {
					alert("수정이 완료되었습니다!");
					console.log(data);
				},
				error: function() {
					alert("수정에 실패했습니다. 다시 시도해주세요.");
				}
			});
			$('#csTitle').attr('readonly', true);
			$('#csContent').attr('readonly', true);
			$(this).attr('id', 'modifyBtn').html('수정');
		}
	}
}); */

$('#deleteBtn').on("click", function() {
	if (confirm('정말로 삭제하시겠습니까?')) {
		$('#deleteForm').submit();
	}
});

	$('#saveAnswer').on('click', function() {
		if(confirm('답변을 등록하시겠습니까?')) { 
			$('#replyForm').submit();
		}
	})
	
$('#csUpdateBtn').on('click', function() {
	if(confirm('답변을 수정하시겠습니까?')) { 
		$.ajax({
			url: "csAnswerUpdate",
			beforeSend: function(xhr) {
	            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	         },
			type: "post",
			data: JSON.stringify({ csAnswer: $('#csAnswer').val() }),
			contentType: 'application/json',
			success: function () {
				$('#replyForm').submit();
				alert("수정이 완료되었습니다!");
			}
		})
	}
})
</script>
</html>