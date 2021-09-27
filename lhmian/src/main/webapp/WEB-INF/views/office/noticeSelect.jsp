<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div>
	<form role="form" action="delete" id="frm" name="frm" method="post">
		<div class="form-group">
			<label>noticeNo</label> <input class="form-control" id="noticeNo"
				name="noticeNo" value="${notice.noticeNo}" readonly="readonly" disabled="disabled">
		</div>
	</form>
			${notice.noticeTitle}
			${notice.noticeDate}
			${notice.noticeUpdate}
			<hr>
			${notice.noticeContent}
</div>

<button type="button" onclick="location.href='../office/noticeList'">목록</button>	