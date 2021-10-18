<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container">
	<div class="form-body">
		<div class="sec-title-container-nopadding">
			<div class="gm-title-line-1 text-center"></div>
			<h4 class="uppercase font-weight-7 less-mar-1 text-center">주민 투표
				결과 공지</h4>
			<div class="clearfix"></div>
			<br> <br>
		</div>
		<h4 class="text-center" style="line-height: 150%;">
			<fmt:formatDate value="${title.voteStart }" pattern="yyyy-MM-dd" />
			~
			<fmt:formatDate value="${title.voteEnd }" pattern="yyyy-MM-dd" />
			동안 시행한<br> <strong>[${title.voteTitle}]</strong><br> 안건에 대한
			주민 투표 결과를 공지합니다.
		</h4>
		<br>
		<h3 class="text-center">${result.vcContent }</h3>
		<br> <br>
		<div class="btn-area text-center">
			<a id="voteResultBtn" class="btn btn-gyellow"> 자세한 투표 결과 보러 가기 </a>
		</div>

	</div>
	<span class="pull-right"><input type="checkbox" id="check"
		onclick="closeWin()"> 오늘 하루 동안 이 창을 열지 않음</span>

</div>
<script>

	//자세한 투표 결과 보러가기 클릭 시, 팝업이 닫기고 부모 창에서 이동
	$('#voteResultBtn').on('click', function() {
		
		const voteNo = ${title.voteNo };
		
		window.opener.location.href="${pageContext.request.contextPath}/resident/voteResult?no=" + voteNo;
		window.close();
	})

	
	function setCookie( name, value, expiredays ) { 
		var todayDate = new Date(); 
		todayDate.setDate( todayDate.getDate() + expiredays ); 
		document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
		} 
	
	function closeWin(){ 
		setCookie("close20090524","close20090524",1); 
		window.close(); 
		}




</script>