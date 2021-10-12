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
</style>
<div>
	<div>
		<c:forEach items="${generation}" var="houseInfo">
			<div class="generation" onclick="generation('${houseInfo.houseInfo}')">${houseInfo.houseInfo}
				<hr>
			</div>
		</c:forEach>
	</div>
	
</div>

<script>
	//세대 클릭시 새창으로 열림
	$('.generation').on('click', function generation(n) {
		//var windowWidth = window.screen.width;
		//var windowHeight = window.screen.height;
		window.open("../no/visitList", "방명록", "width=1000px, height=600px, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
</script>