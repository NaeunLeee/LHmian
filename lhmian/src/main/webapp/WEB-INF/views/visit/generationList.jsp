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
<div align="center" id="oldList">
	<%-- <c:forEach items="${generation}" var="houseInfo">
		<c:if test="${houseInfo.houseInfo != 0}">
			<div class="status">
				<div class="cbp-item-yj web-design generation">
					<button value="${houseInfo.houseInfo}" onclick="generation(${houseInfo.houseInfo})">
						${houseInfo.houseInfo}
					</button>
				</div>
			</div>
		</c:if>
	</c:forEach> --%>
</div>
<button id="searchMoreNotify">더보기</button>
<script>
let csrfHeaderName = "${_csrf.headerName}";
let csrfTokenValue = "${_csrf.token}";
$(document).ready(function() {
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
})
	//세대 클릭시 새창으로 열림
	function generation(n) {
		openWin = window.open("../no/visitList?houseInfo=" + n,
					"방명록",
					"width=1000px, height=600px, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
		};
</script>