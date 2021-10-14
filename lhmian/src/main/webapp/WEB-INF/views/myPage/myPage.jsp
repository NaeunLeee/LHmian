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
              <p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum dolor consectetuer adipiscing elit Suspendisse.</p>
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
              <p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum dolor consectetuer adipiscing elit Suspendisse.</p>
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
              <p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum dolor consectetuer adipiscing elit Suspendisse.</p>
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
              <p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum dolor consectetuer adipiscing elit Suspendisse.</p>
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
              <p>Lorem ipsum dolor sit amet sit amet justo et elit ipsum dolor consectetuer adipiscing elit Suspendisse.</p>
            </div>
          </div>
          <!--end item--> 
          
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
    <!-- end section -->
</body>
