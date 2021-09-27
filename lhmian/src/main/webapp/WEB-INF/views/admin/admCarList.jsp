<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div align="center">
	<table border="1" id="memberTable">
	<thead>
		<tr>
		<th><input type="checkbox" name="chkAll" id="chkAll" ></th>
		<th>차량 번호</th>
		<th>차량 모델</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="car" items="${list}">
			<tr>
				<td><input type="checkbox" name="chk" value="${car.carNo}"></td>
				<td>${car.carCode}</td>
				<td>${car.carType}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<br>

<br>
<!-- 폼 -->
	<form id="actionForm" action="admCarList" method="get">
		<select name="type">
			<option value="" ${empty pageMaker.cri.type ? selected : "" }>선택</option>
			<option value="T" ${pageMaker.cri.type=='T' ? 'selected' : ""}>차량번호</option>
			<option value="C" ${pageMaker.cri.type=='C' ? 'selected' : ""}>차종</option>
		</select>
		<input name="keyword" value="${pageMaker.cri.keyword}">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-default">검색</button>
	</form>
	
<div id="pageButton">
	<c:if test="${pageMaker.prev}"><a href="${pageMaker.startPage-1}" >이전</a></c:if>
	<c:forEach begin="${pageMaker.startPage}" 
				end="${pageMaker.endPage}" 
				var="num"><a href="${num}" >${num}</a></c:forEach>
	<c:if test="${pageMaker.next}"><a href="${pageMaker.endPage+1}" >다음</a></c:if>
</div>
</div>
<button onclick="delete()" type="button" id="btnDelete">차량삭제</button>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	var actionForm = $("#actionForm")
	$(".move").on("click", function(e){
		e.preventDefault();				//a의 원래 기능 막고
		var noticeNo = $(this).attr("href")
		actionForm.append('<input type="hidden" name="id" value="'+ id +'">')
		actionForm.attr("action", "admMemberList");
		actionForm.submit();
	});
	
	$("#pageButton a").on("click", function(e){ //페이지 번호 눌렀을 때. pagebutton 안써주면 헤더, 푸터에 걸린 a태그도 다 링크 걸림
		e.preventDefault();		//a, submit
		var p = $(this).attr("href")
		$('[name="pageNum"]').val(p);
		actionForm.submit();
	});

	$(document).ready(function(){
	$("#chkAll").click(function(){
		if($("#chkAll").is(":checked"))
			$("input[name=chk]").prop("checked", true);
		else
			$("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function(){
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;
			
			if(total != checked) 
				$("#chkAll").prop("checked", false);
			else
				$("#chkAll").prop("checked", true);
		});
	});
	
/* 	
	function delete(){
    var arr = [];
    $("input[name='chk']:checked").each(function() {
        arr.push($(this).val());
    });
    console.log(arr);
    
    if(arr == ""){
        alert("선택된 글이 없습니다.");
        return false;
    }
    
    var confirmAlert = confirm("정말로 삭제하시겠습니까?");
    
    if(confirmAlert){
   
        $.ajax = {
            type: "POST"
            ,url: "admMemberDelete"
            ,dataType:"json"
            ,data: JSON.stringify(arr)
            ,contentType: "application/json"
            ,success: function(result){
                alert("삭제되었습니다.");
            },
            error: function(){alert("서버통신 오류");}
        };
    }
}  */

	
/* 	 function delete(){
       var cnt = $("input[name='chk']:checked").length;
       var arr = new Array();
       
       $("input[name='chk']:checked").each(function() {
           arr.push($(this).attr('id'));
       });
       if(cnt == 0){
           alert("선택된 글이 없습니다.");
       }
       else{
           $.ajax = {
               type: "POST"
               url: "admMemberDelete"
               data: JSON.stringify(arr),
               dataType:"json",
               success: function(jdata){
                   if(jdata != 1) {
                       alert("삭제 오류");
                   }
                   else{
                       alert("삭제 성공");
                   }
               },
               error: function(){alert("서버통신 오류");}
           };
       }
   } 
 */
	
	/* $("#btnDelete").click(function() {
		var cnt = $("input[name=chk]:checked").length;
		var arr = new array();
		$("input[name=chk]:checked").each(function(){
			arr.push($(this).attr('id'));
		});
		if (cnt == 0){
			alert("삭제할 회원을 선택해주세요.");
		}
		else {
			$.post("admMemberDelete", {
				id : $("#id").val()
			}, function(result){
				if (result == true){
					alert("삭제되었습니다.");
				}
				else {
					alert("삭제에 실패했습니다.");
				}
			}
			});
					
			}
		
		 */
	/* 	if (confirm('삭제하겠습니까?'))
			$("input[name=chk]")
			
			.post("admMemberDelete", {
				id : $("#id").val()
			}, function(result) {
				if (result == true) {
					alert("삭제되었습니다.")
				}
			});
	}); */
	
/* 	var tbl = $("memberTable");
	//테이블 헤더에 있는 checkbox 클릭시
	$(":checkbox:first", tbl).click(function(){
		if($(this).is(":checked")){
			$(":checkbox", tbl).attr("checked", "checked");
		}
		else{
			$(":checkbox", tbl).removeAttr("checked");
		}
		
		//모든 체크박스에 change 이벤트 발생시키기
		$(":checkbox", tbl).trigger("change"); 
	}) */
	
</script>