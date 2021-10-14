<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
h4 {
color: #727272;
}

tr {
border-bottom : 1px solid lightgray;
height : 80px;
}

.table-style-2 {
width : 600px;
}

th { 
text-align : center;
	width: 100px

}

td {
/* border-left: 1px solid lightgray; */
padding-left : 15px; 
}

textarea {
  width : 400px;
  height : 120px;
  resize : none;
  margin: 20px 0;
}
</style>


<div class="header-inner-tmargin">
	<section class="section-side-image clearfix">
		<div class="img-holder col-md-12 col-sm-12 col-xs-12">
			<div class="background-imgholder" style="background: url(http://placehold.it/1500x1000);">
				<img class="nodisplay-image" src="http://placehold.it/1500x1000" alt="" />
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 clearfix nopadding">
					<div class="header-inner">
						<div class="overlay">
						</div>
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
							<li><a href="${pageContext.request.contextPath}/office/office">관리 사무소</a></li>
							<li class="current"><a href="${pageContext.request.contextPath}/itemLost/lostList">분실물 보관소</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>


    <section class="section-light sec-padding">
      <div class="container" align="center">
        <div class="row">
			<form method="post" action="admLostInsert?${_csrf.parameterName }=${_csrf.token }" enctype="multipart/form-data">
				<table class="table-style-2">
					<tr>
						<th>습득일자</th>
						<td><input type="date"></td>
					</tr>
					<tr>
						<th>분실물내용</th>
						<td><textarea name="lostContent" placeholder="분실물 내용을 작성하세요."></textarea></td>
					</tr>
					<tr>
						<th>분실물파일</th>
						<td><input type="file" name="lostImg"></td>
					</tr>
				</table>
				<br>
					<button type="button" class="btn btn-default">등록</button>
				</form>
			</div>
		</div>
	</section>

