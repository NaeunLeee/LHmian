<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
h4 {
color: #727272;
}
tr {
border-bottom : 1px solid lightgray;
}
.table-style-2 {
width : 600px;
}

textarea {
  width : 350px;
  height : 70px;
}
</style>
<div align ="center">
	<h4>분실물 등록</h4>
	<hr>
		<form method="post" action="admLostInsert" enctype="multipart/form-data">
			<section class="sec-padding-yj">
				<div class="container">
					<div class="row">
						<table class="table-style-2">
							<tr>
								<th>분실물내용</th>
								<td><textarea name="lostContent" placeholder="분실물 내용을 작성하세요."></textarea></td>
							</tr>
							<tr>
								<th>분실물파일</th>
								<td><input type="file" name="lostImg"></td>
							</tr>
						</table>
						<button class="btn btn-gyellow">등록</button>
					</div>
				</div>
			</section>
		</form>
</div>

