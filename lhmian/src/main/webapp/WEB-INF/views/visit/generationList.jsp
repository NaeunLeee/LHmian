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
<div align="center">
	<c:forEach items="${generation}" var="houseInfo">
		<c:if test="${houseInfo.houseInfo != 0}">
			<div class="status">
				<div class="cbp-item-yj web-design generation">
					<button value="${houseInfo.houseInfo}" onclick="generation(${houseInfo.houseInfo})">
						${houseInfo.houseInfo}
					</button>
				</div>
			</div>
		</c:if>
	</c:forEach>
</div>
<script>
	//세대 클릭시 새창으로 열림
	function generation(n) {
		//var windowWidth = window.screen.width;
		//var windowHeight = window.screen.height;
		openWin = window.open("../no/visitList?houseInfo=" + n,
					"방명록",
					"width=1000px, height=600px, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
		};
</script>