<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
table {
	width: 800px;
}

textarea {
	width: 800px;
}
.status {
width : 300px;
display : inline-block;
}

.cbp-item-yj {
border : 1px solid lightGray;
margin : 0;
padding : 100px;
}
</style>


<div class="header-inner-tmargin">
   <section class="section-side-image clearfix">
      <div class="img-holder col-md-12 col-sm-12 col-xs-12">
         <div class="background-imgholder" style="background: url(${pageContext.request.contextPath }/resources/images/header/헤더푸터9.jpg);">
            <img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
         </div>
      </div>
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
               <div class="header-inner">

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
							<li><a href="${pageContext.request.contextPath}/resident/resident">입주민 공간</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/visit/generation">방명록</a></li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
   </section>
   <section class="sec-padding section-light">
      <div class="container">
         <div class="row">
            <div class="col-xs-12 nopadding">
               <div class="sec-title-container-padding-topbottom text-center">
                  <div class="pl-title-line-1"></div>
                  <h4 class="uppercase font-weight-7 less-mar-1">방명록</h4>
                  <div class="clearfix"></div>
                  <p class="by-sub-title" style="font-size: 13px;">자유롭게 방명록을 남겨보세요!</p>
               </div>
            </div>
            <div class="clearfix"></div>
         </div>
      </div>

      <div class="container" align="center" style="width: 1400px">
         <div class="text-box white padding-4 col-7">

	<c:forEach items="${generation}" var="houseInfo">

		<c:if test="${houseInfo.houseInfo != 0}">
			<div class="status">
				<%-- <img src="${pageContext.request.contextPath }/resources/images/header/방명록.jpg" alt="
						class="img-responsive" /> --%>
				<div class="cbp-item-yj web-design generation">
					<button value="${houseInfo.houseInfo}" onclick="generation(${houseInfo.houseInfo})">
						${houseInfo.houseInfo}
					</button>
				</div>
			</div>
		</c:if>
	</c:forEach> --%>
</div>

</div>
</section>

<script>
let csrfHeaderName = "${_csrf.headerName}";
let csrfTokenValue = "${_csrf.token}";

var pageNum = 0;
var amount = 0;
var gntCount = 0;

$(function() {
	gntList();

	//세대리스트 전체조회
	$.ajax({
		url : "generation",
		method : "get",
		success : function(data) {
			gntList = data;
		}
	})
});

//더보기  클릭시 세대리스트 추가(ajax 페이징)
$(document).on('click', '#addBtn', function() {
	var divCount = $('.gntList #generation').length;
	pageNum = (divCount / 9) + 1;
	amount = 9;
	
	$.ajax({
		url : "gntList",
		method : "get",
		dataType : 'json',
		data : {
			pageNum : pageNum,
			amount : amount
		},
		beforeSend: function(xhr) {
            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
         },
         contentType : "application/json",
         success : function(datas) {
        	 $.each(datas, function(data) {
        		 console.log(data);
        		$("<div id='generation' data-grtNo=''></div>").appendTo($(".gntList"));
        	 });
         }
	});
	
	if(pageNum == Math.ceil(gntCount/9)) {
		$('#addBtn').remove();
	}
});

//페이지 로딩시 리스트 출력
function gntList() {
	pageNum = 1;
	amount = 9;
	
	$.ajax({
		url : "generation",
		method : "get",
		dataType : 'json',
		data : {
			pageNum : pageNum,
			amount : amount
			},
			contentType : 'application/json',
			success : function(datas) {
				$('.gntList').empty();
				 $.each(datas, function(data) {
					 console.log(data);
		        		$("<div id='generation' data-grtNo=''></div>").appendTo($(".gntList"));
		        	 });
			}
	});
	$("#showMore").append($("<button style='height: 100%; width: 100%' type='button' id='addBtn'>더보기+</button>"));
}

/* $(document).on("click","#rdBtn",function(){
	var cnt = $(".gntList #generation").length; // 현재 포스트 갯수 구하기
	var arryLen = arry.length;
	if( (cnt/9) ==  Math.ceil(arryLen/9)-1  ){
		$("#rdBtn").remove();
	}
	for	(var i=0; i < 9; i++ ){
		if(arry[i+cnt].reportMno == 1){ angryStr = 'background-color: #061a3a;'; }else {
			angryStr = '';	}
		if(arry[i+cnt].likesNo == 1){ heartStr = 'background-color: #061a3a;'; }else {
			heartStr = '';	}
		$("<div id='post' data-postNo='"+arry[i+cnt].postNo+"' data-memberNo='"+arry[i+cnt].memberNo+"' class='col-lg-4 col-md-6 col-sm-12 team-block'>")
			.append(
				"<div class='team-block-three'>"
				+ '<div class="inner-box">'
				+ '<figure class="image-box">'
				+ '<img src="${pageContext.request.contextPath}/resources/assets/images/post/'+arry[i+cnt].postColor+'" alt=""> '
				+ '<a class="heartIcon" style="'+ heartStr +'"><i class="far fa-heart"></i></a>'
				+ '<a class="angryIcon" style="top: 20px; right: 70px;'+ angryStr +'"><i class="far fa-angry"></i></a>'
				+ '<div class="textBox">'
				+ '<div><h4>'
				+ arry[i+cnt].contents
				+ '</h4></div>'
				+ '</div></figure></div></div>')
			.appendTo($(".postContents"));
	} // for문 end 
	
}); */

/* $(document).ready(function() {
	var oldListCnt = '${oldListCnt}';
	var startIndex = 1;
	var searchStep = 10;
	
	readOldNotify(startIndex);
	
	$('#searchMoreNotify').click(function() {
		startIndex += searchStep;
		readOldNotify(startIndex);
	})
	
		function readOldNotify(index){
			let _endIndex = index + searchStep - 1;
			$.ajax({
				method : "post",
				dataType : "json",
				beforeSend: function(xhr) {
		            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		         },
				data : {
					m_id : '${m_id}',
					startIndex : index,
					endIndex : _endIndex
				},
				url : "generation",
				success : function(data, textStatus) {
					let nodeList = "";
					for(i=0; i<data.length; i++) {
						let newNode =  '<c:if test="' + data.houseInfo + ' != 0}">'
									+= '	<div class="status">'
									+= '		<div class="cbp-item-yj web-design generation">'
									+= '			<button value="' + data.houseInfo + '" onclick="generation(' + data.houseInfo + ')">' + data.houseInfo + '</button>'
									+= '		</div>'
									+= '	</div>'
									+= '</c:if>'
						}
					$(nodeList).appendTo($('oldList')).slideDown();
				
					//더 나올 내용 없으면 더보기 버튼 삭제
					if(startIndex + searchStep > oldListCnt) {
						$('#searchMoreNotify').remove();
					}
				}
			})
		}
}) */
	//세대 클릭시 새창으로 열림
	function generation(n) {
		openWin = window.open("../no/visitList?houseInfo=" + n,
					"방명록",
					"width=1000px, height=600px, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
		};  
</script>