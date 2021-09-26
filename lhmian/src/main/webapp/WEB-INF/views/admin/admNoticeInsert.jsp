<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form id="frm" id="frm"  action="${pageContext.request.contextPath}/admin/admNoticeInsert" method="post">

			<div class="form-group">
				<input type="text" name="noticeTitle" placeholder="제목을 입력하세요.">
			</div>
			<div class="form-group">
				<textarea name="noticeContent" rows="20" cols="50" placeholder="내용을 입력하세요."></textarea>
			</div>
		
			<!-- 글 등록, 목록 버튼 -->
			<div align="center">
				<button type="submit" id="btnRegister">등록</button>
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/admin/admNoticeList'">목록</button>
			<br>
		 </div>
		</form>
		
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$("#btnRegister").on("click", function () {
	if(validation()){
			frm.submit();
	}
});

</script>