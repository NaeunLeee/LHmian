<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.btn-gyellow-yj {
	height : 30px;
	color: #fff;
	background-color: #ecae3d;
	padding : 0 30px;
}
</style>
<div align="center">
	<form id="frm" name="frm" action="csInsert" method="post">
	<br><br>
		<div>
			제목 : <input type="text" name="csTitle"><br>
			<hr>
			<textarea rows="20" cols="100" name="csContent"></textarea>
		</div>
		<input type="hidden" name="id" value="${user.username}">
		<input type="hidden" name="houseInfo" value="${user.HOUSEINFO}">
		<br>
		<div align="center">
			<button type="submit" class="btn btn-gyellow-yj">등 록</button>
			<button type="reset" class="btn btn-gyellow-yj">취 소</button>
			<button type="button" onclick="location.href='../office/csList'" class="btn btn-gyellow-yj">목 록</button>
		</div>
	</form>
</div>
<br>