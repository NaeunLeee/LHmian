<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div>
	<form role="form" id="frm" name="frm" action="insertComm" method="post">
		<div class="form-group">
			<label>Title</label> <input class="form-control" id="commTitle" name="commTitle">
		</div>

		<div>
			<label>Text area</label>
			<textarea class="form-control" id="commContent" name="commContent" rows="3"></textarea>
		</div>
		<input type="hidden" name="id" id="id" value="test">
		<button type="button" id="btnRegister">등록</button>
        <button type="reset" class="btn btn-default">취소</button>
	</form>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$("#btnRegister").on("click",
		function () {
			frm.submit();
		});
</script>
