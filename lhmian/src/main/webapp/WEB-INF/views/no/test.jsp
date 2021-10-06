<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.btn {
	background-color: lightPink;
	border: 1px solid lightPink;
}

.main__form_window {
	border: 1px solid lightGray;
	width : 400px;
	margin : auto;
}

table {
width : 400px;
}
tr {
height : 30px;
border-bottom : 1px solid lightGray;
}

th {
text-align : center;
padding : 5px;
}

td {
padding-left : 10px;
padding : 5px 0 5px 5px;
}

input {
width : 200x;
}

textarea {
width : 250px;
}
button {
margin : 5px 0 5px 280px;
padding : 5px;

}

button:hover {
background-color : lightblue;
}
</style>
<div class="main__header" align="center">
	<h5>진료기록 작성</h5>
</div>
<div class="main__form_window" align="center">
	<form id=myform method="POST">
		<input type="hidden" value="date">
		<table>
			<tr>
				<th>예약번호</th>
				<td><input id="bookingNo" value=""></td>
			</tr>
			<tr>
				<th>환자이름</th>
				<td><input width="30px" type="text" id="ptName" value=""></td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td><input type="text" value=""></td>
			</tr>
			<tr>
				<th>증상 1</th>
				<td><input type="text" value="symptom"></td>
			</tr>
			<tr>
				<th>증상 2</th>
				<td><input type="text" value="symptom"></td>
			</tr>
			<tr>
				<th>증상 3</th>
				<td><input type="text" value="symptom"></td>
			</tr>
			<tr>
				<th>환자 평가</th>
				<td><textarea id="pt_assessment" name="pt_assessment" cols="30" rows="8"></textarea></td>
			</tr>
			<tr>
				<th>환자진단</th>
				<td><input id="pt_diagnosis" name="pt_diagnosis" type="text" value="진단명"></td>
			</tr>
			<tr>
				<th>처방</th>
				<td><textarea id="prescription" name="prescription" cols="30" rows="5"></textarea></td>
			</tr>
		</table>
			<button class="btn">처방전 보내기</button>
			<br>
	</form>
</div>
					<script>
					var date = new Date();
					var mfDate = "";
					mfDate = String(date.getFullYear()).substr(2,2) + String(date.getMonth()+1);
					console.log(mfDate);
					</script>