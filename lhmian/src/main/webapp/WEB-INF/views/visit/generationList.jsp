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
         	<div class="gntList">
				<c:forEach items="${generation}" var="list">
					<div class="status">
							<%-- <img src="${pageContext.request.contextPath }/resources/images/header/방명록.jpg" alt="" class="img-responsive" /> --%>
						<div class="cbp-item-yj web-design generation">
							<button value="${list.houseInfo}" onclick="generation(${list.houseInfo})">
									${list.houseInfo}
							</button>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<%-- <div id="pageButton" align="center">
				<ul class="pagination hover-orange">
					<c:if test="${pageMaker.prev == true}">
						<li><a href="${pageMaker.startPage-1}"> 
								<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
							</a>
						</li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
						<li><a href="${num}" style="<c:if test="${num eq pageMaker.cri.pageNum}">color:white; background-color:orange;</c:if>">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next == true}">
						<li><a href="${pageMaker.endPage+1}"> 
								<span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
							</a>
						</li>
					</c:if>
				</ul>
			</div> --%>
			
			<div id="showMore">
				<%-- <c:if test="${pageMaker.startPage}"> --%>
					<button style='height: 100%; width: 100%' id='addBtn'>더보기+</button>
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
							<input type="text" id="${num}" value="${num}">
						</c:forEach>
				<%-- </c:if> --%>
			</div>
		</div>
		<form id="actionForm" action="generation" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		</form>
	</div>
</section>

<script>
$('#addBtn').on('click', function(e) {
	
	//e.preventDefault();
	var p = $(this).next().val();
	//$('[name="pageNum"]').val(p);

	var divCount = $('.gntList .status').length;
	
	pageNum = Math.ceil((divCount / 9)) + 1;
	amount = 9;
	
	$.ajax({
		url : "generation",
		method : "get",
		dataType : 'json',
		data : {
			pageNum : pageNum,
			amount : amount
		},
         contentType : "application/json",
         success : function(datas) {
        	console.log(datas);
        	$.each(datas, function(data) {
        	console.log(data);
        		var list ='<div class="status">';
        				+ '		<div class="cbp-item-yj web-design generation">';
  						+ '			<button value="${list.houseInfo}" onclick="generation(${list.houseInfo})">';
  						+ '				${list.houseInfo}';
  						+ '			</button>';
  						+ '		</div>';
  						+ '</div>';
	$(".gntList").append(list);	
        	 });
         }
	});
	//$('#actionForm').submit();
	var idNum = document.getElementById(p);
	idNum.remove();
});

	if(pageNum == Math.ceil(gntCount/9)) {
		$('#addBtn').remove();
	}
});

//세대 클릭시 새창으로 열림
function generation(n) {
	openWin = window.open("../no/visitList?houseInfo=" + n,
				"방명록",
				"width=1000px, height=600px, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	};  
</script>