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
			<br> <br> <br>
		</div>
			<h4><fmt:formatDate value="${title.voteStart }" pattern="yyyy-MM-dd" />
							~
				<fmt:formatDate value="${title.voteEnd }" pattern="yyyy-MM-dd" /> 동안 시행한 [${title.voteTitle}] 안건에 대한 주민 투표 결과를 공지합니다.</h4>

			<h5>결과</h5>
			<br>
		${result.vcContent } 당선~~~
		<br>
		<div class="btn-area text-center">
			<a id="idFindBtn" class="btn btn-gyellow"> 결과 보러 가기 </a>
			<a id="closeBtn" class="btn btn-dark-3"> 닫기 </a>
		</div>

	</div>

</div>