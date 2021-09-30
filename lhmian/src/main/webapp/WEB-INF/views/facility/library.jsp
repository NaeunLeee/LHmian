<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHmian | 독서실</title>

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>
<div class="row">
	<div class="col-8" align="center">
		<img src="../../resources/image/library.jpg" alt="독서실">독서실 설명 블라블라~
		<hr>
	</div>
</div>
      <section class="parallax-6">
      <div class="container-fluid nopadding">
	<div class="parallax-overlay bg-opacity-1">
        <div class="container sec-tpadding-4 sec-bpadding-4">
          <div class="row">
 
 
  				<div class="col-md-12 text-center"><h4 class="uppercase less-mar-1 text-white">Posts With Parallax</h4></div>
              <div class="clearfix"></div>
          <br/><br/>
          
           <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="post-style-1 margin-bottom">
                <div class="text-box">
                  <div class="arrow-right"></div>
                  <h5>16 June, 2019</h5>
                  <div class="divider-line solid light"></div>
                  <br/>
                  <h5 class="uppercase font-weight-3"><a href="#">Lorem ipsum dolor sit amet commodo</a></h5>
                  <div class="divider-line solid light"></div>
                  <br/>
                  <br/>
                  <a class=" read-more uppercase" href="#">Read more &nbsp; <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> </div>
                <div class="img-box"> <img src="http://placehold.it/800x900" alt="" class="img-responsive"/> </div>
              </div>
            </div>
            <!--end item-->
            
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="post-style-1 margin-bottom">
                <div class="text-box">
                  <div class="arrow-right"></div>
                  <h5>25 July, 2016</h5>
                  <div class="divider-line solid light"></div>
                  <br/>
                  <h5 class="uppercase font-weight-3"><a href="#">Lorem ipsum dolor sit amet commodo</a></h5>
                  <div class="divider-line solid light"></div>
                  <br/>
                  <br/>
                  <a class=" read-more uppercase" href="#">Read more &nbsp; <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> </div>
                <div class="img-box"> <img src="http://placehold.it/800x900" alt="" class="img-responsive"/> </div>
              </div>
            </div>
            <!--end item--> 
            
     		 </div>
          </div>
        </div>
      </div>
    </section>
    <div class="clearfix"></div>
<div class="row">
	<div class="col-8" align="center">
		<button type="button" id="reservation" data-toggle="modal" data-target="#libModal">등록</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/facility/facilityList'">돌아가기</button>
	</div>
</div>
	<!-- The Modal -->
<div class="modal" id="libModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h5 class="modal-title">독서실 등록</h5>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <div>
        	<form id="libForm" name="libForm">
		        이름 | <input type="text" id="member" disabled="disabled" value="김아무개"><br><br>
		        날짜 | <input type="text" id="selectDate"><br><br>
		        기간 |
		        	<select id="libPeriod" name="libPeriod">
					    <option value="" selected>선택</option>
					    <option value="1">1일</option>
					    <option value="7">1주</option>
					    <option value="30">1달</option>
					    <option value="90">3달</option>
					    <option value="180">6달</option>
					    <option value="365">1년</option>
					</select><br><br>
				금액 | <input type="text" id="libPrice" name="libPrice" readonly="readonly">원
			</form>
		</div>
		<br>
		<div align="center">
			<button type="button">등록</button>&nbsp;
			<button type="button" data-dismiss="modal">취소</button>
		</div>
      </div>

    </div>
  </div>
</div>
	
</body>

<script>

// 날짜 선택 DatePicker
$("#selectDate").datepicker();

$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});

// 금액
$("#libPeriod").on("change", function() {
	
	var period = $(this).val();
	var price = "";
	
	if (period == "1") {
		price = 1000;
	} else if (period == "7") {
		price = 5000;
	} else if (period == "30") {
		price = 15000;
	} else if (period == "90") {
		price = 35000;
	} else if (period == "180") {
		price = 55000;
	} else if (period == "365") {
		price = 99000;
	}
	
    $('#libPrice').val(price);
    
    
});

</script>

</html>