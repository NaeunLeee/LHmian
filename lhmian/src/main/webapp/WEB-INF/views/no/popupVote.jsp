<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container">
	<div class="form-body">
		<div class="sec-title-container-nopadding">
			<div class="gm-title-line-1 text-center"></div>
			<h4 class="uppercase font-weight-7 less-mar-1 text-center">주민 투표 결과 공지</h4>
			<div class="clearfix"></div>
			<br> <br>
		</div>
			<h4 class=" text-center"><fmt:formatDate value="${title.voteStart }" pattern="yyyy-MM-dd" />
							~
				<fmt:formatDate value="${title.voteEnd }" pattern="yyyy-MM-dd" /> 동안 시행한<br>
				[${title.voteTitle}]<br>
				안건에 대한 주민 투표 결과를 공지합니다.</h4>
		<br>
			
		${result.vcContent } 
		<br>
		<br>
		<br>
		<div class="btn-area text-center">
			<a id="idFindBtn" class="btn btn-gyellow"> 자세한 투표 결과 보러 가기 </a>
		</div>

	</div>
<span class="pull-right">오늘 하루 동안 이 창을 열지 않음</span>
</div>