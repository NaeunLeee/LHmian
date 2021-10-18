<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="boxed_wrapper">

	<!-- clinic-section -->
	<section class="clinic-section">
		<div class="auto-container">
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 content-side">
					<br>
					<div class="wrapper grid">

						<div class="clinic-grid-content grid-item">
							<div class="row clearfix postContents">
								<!-- 메모 내용 -->

							</div>
						</div>
					</div>
					<div></div>
					<div class="d-grid gap-2" id="btnContents">
					  <!--더보기 버튼  -->
					</div>
					<br><br>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"	value="${_csrf.token}">
		</div>
	</section>
	<!-- clinic-section end -->

</div>

<script>
	var pageNum = 0;
	var amount = 0;
	var postCount = 0;
	
  	
	$(function() {
		
		postList();
		
		// 전체행 조회
		$.ajax({
			url : "postCount",
			method : "get",
			success : function(data) { 
				postCount = data; 
			}
		});

	}); //end

	// POST 더보기 클릭시 포스트잇 추가(페이징처리) - 최신순 리스트
	$(document).on("click","#addBtn",function(){
				
		var divCount = $(".postContents #post").length;
		pageNum = (divCount / 9) + 1;
		amount = 9;	
		
		$.ajax({
			url : "postList",
			method : "get",
			dataType : "json",
			data : {
				reportMno : reportMno,
				pageNum : pageNum,
				amount : amount
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			contentType : 'application/json',
			success : function(datas) {
				$.each(datas,function(i, data) {
					if(data.reportMno == 1){ angryStr = 'background-color: #061a3a;'; }else {
						angryStr = '';
					}
					if(data.likesNo == 1){ heartStr = 'background-color: #061a3a;'; }else {
						heartStr = '';
					}
					$("<div id='post' data-postNo='"+data.postNo+"' data-memberNo='"+data.memberNo+"' class='col-lg-4 col-md-6 col-sm-12 team-block'>")
						.append(
							"<div class='team-block-three'>"
							+ '<div class="inner-box">'
							+ '<figure class="image-box">'
							+ '<img src="${pageContext.request.contextPath}/resources/assets/images/post/'+data.postColor+'" alt=""> '
							+ '<a class="heartIcon" style="'+ heartStr +'"><i class="far fa-heart"></i></a>'
							+ '<a class="angryIcon" style="top: 20px; right: 70px;'+ angryStr +'"><i class="far fa-angry"></i></a>'
							+ '<div class="textBox">'
							+ '<div><h4>'
							+ data.contents
							+ '</h4></div>'
							+ '</div></figure></div></div>')
						.appendTo($(".postContents"));
					}); // each end	
			} // success end
		}); //ajax end
		console.log(pageNum);
		console.log(Math.ceil(postCount/9));
		if (pageNum == Math.ceil(postCount/9) ){
			$("#addBtn").remove();
			console.log("버튼 삭제");
		}
	}); 
	
	//페이지 목록 조회
	function postList() {
		$("#rdBtn").remove();
		//addBtn(pageNum, amount);
		pageNum = 1;
		amount = 9;
			
		$.ajax({
			url : "postList",
			method : "get",
			dataType : "json",
			data : {
				reportMno : reportMno,
				pageNum : pageNum,
				amount : amount
			},
			contentType : 'application/json',
			success : function(datas) {
				$(".postContents").empty();
				$.each(datas,function(i, data) {
					if(data.reportMno == 1){ angryStr = 'background-color: #061a3a;'; }else {
						angryStr = '';
					}
					if(data.likesNo == 1){ heartStr = 'background-color: #061a3a;'; }else {
						heartStr = '';
					}
					$("<div id='post' data-postNo='"+data.postNo+"' data-memberNo='"+data.memberNo+"' class='col-lg-4 col-md-6 col-sm-12 team-block'>")
						.append(
							"<div class='team-block-three'>"
							+ '<div class="inner-box">'
							+ '<figure class="image-box">'
							+ '<img src="${pageContext.request.contextPath}/resources/assets/images/post/'+data.postColor+'" alt=""> '
							+ '<a class="heartIcon" style="'+ heartStr +'"><i class="far fa-heart"></i></a>'
							+ '<a class="angryIcon" style="top: 20px; right: 70px;'+ angryStr +'"><i class="far fa-angry"></i></a>'
							+ '<div class="textBox">'
							+ '<div><h4>'
							+ data.contents
							+ '</h4></div>'
							+ '</div></figure></div></div>')
						.appendTo($(".postContents"));
						
					}); // each end	
			} // success end
		}) //ajax end
		$("#btnContents").append($("<button style='height: 100%; width: 100%' class='theme-btn-one' type='button' id='addBtn'>더보기+</button>"));
	} // 페이지목록 조회 end
	
</script>


