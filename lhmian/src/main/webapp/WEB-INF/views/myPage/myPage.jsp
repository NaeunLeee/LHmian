<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	.ce4-feature-box-12 {
		cursor: pointer;
	}
	p {
    	margin: 0 0 10px 40px;
    }

</style>
</head>
<body>
<div></div><br><br><br><br>
    <section class="sec-padding">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 nopadding">
            <div class="sec-title-container text-center">
              <div class="ce4-title-line-1"></div>
              <h4 class="uppercase font-weight-7 less-mar-1"><sec:authentication property="principal.NAME" /> 님 환영합니다!</h4>
              <div class="clearfix"></div>
            </div>
          </div>
          <div class="clearfix"></div>
          <!--end title-->
          
          <div class="col-md-4 col-sm-12 col-xs-12">
            <div onclick="location.href='${pageContext.request.contextPath}/myInfo'" class="ce4-feature-box-12 margin-bottom">
              <div class="icon-plain-msmall left icon"><span class="icon-pencil"></span></div>
              <div class="text-box-right less-padding-2">
                <h5 class="uppercase title font-weight-5 nopadding title">개인정보 수정</h5>
                <div class="title-line"></div>
              </div>
              <br/>
              <p>비밀번호 및 전화번호를 변경할 수 있습니다.</p><br/>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-12 col-xs-12">
            <div onclick="location.href='${pageContext.request.contextPath}/mypage/fee'" class="ce4-feature-box-12 margin-bottom">
              <div class="icon-plain-msmall left icon"><span class="icon-layers"></span></div>
              <div class="text-box-right less-padding-2">
                <h5 class="uppercase title font-weight-5 nopadding title">관리비 조회</h5>
                <div class="title-line"></div>
              </div>
              <br/>
              <p>납부하신 관리비 상세내역 및 결제상태를 확인하실 수 있습니다. </p> <br/>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-12 col-xs-12">
            <div onclick="location.href='${pageContext.request.contextPath}/myPage/myEnergyCon'" class="ce4-feature-box-12 margin-bottom">
              <div class="icon-plain-msmall left icon"><span class="icon-camera"></span></div>
              <div class="text-box-right less-padding-2">
                <h5 class="uppercase title font-weight-5 nopadding title">에너지 사용량</h5>
                <div class="title-line"></div>
              </div>
              <br/>
              <p>월별, 기간별로 세대의 에너지 <br/>사용 내역을 확인하고 비교할 수 있습니다.</p>
            </div>
          </div>
          <!--end item-->
          
          <div class="clearfix"></div>
          <div class="col-divider-margin-3"></div>
          
          <div class="col-md-4 col-sm-12 col-xs-12">
            <div onclick="location.href='${pageContext.request.contextPath}/myPage/myWrittenList'" class="ce4-feature-box-12 margin-bottom">
              <div class="icon-plain-msmall left icon"><span class="icon-bike"></span></div>
              <div class="text-box-right less-padding-2">
                <h5 class="uppercase title font-weight-5 nopadding title">작성글 조회</h5>
                <div class="title-line"></div>
              </div>
              <br/>
              <p>작성한 커뮤니티, 민원, 입주자 대표회의 글을 확인할 수 있습니다.</p><br/>
            </div>
          </div>
          <!--end item-->
          
          <div class="col-md-4 col-sm-12 col-xs-12">
            <div onclick="location.href='${pageContext.request.contextPath}/myFac'" class="ce4-feature-box-12 margin-bottom">
              <div class="icon-plain-msmall left icon"><span class="icon-camera"></span></div>
              <div class="text-box-right less-padding-2">
                <h5 class="uppercase title font-weight-5 nopadding title">시설 이용 내역</h5>
                <div class="title-line"></div>
              </div>
              <br/>
              <p>편의시설 이용 내역을 확인할 수 있습니다.</p><br/>
            </div>
          </div>
          <!--end item--> 
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
</body>
