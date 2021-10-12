<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.rand {
	font-family: Helvetica, sans-serif;
	word-wrap: break;
	width: 100px;
	height: 100px;
	background: steelblue;
	padding: 10px;
	text-align: center;
	position: relative;
	z-index: -1;
}

.new_pos {
	background: #ccc;
	border: 1px solid #000;
	padding: 5px;
	box-shadow: 0 0 20px #555;
	-webkit-transition: all .2s ease-in;
	transition: all .2s ease-in;
}

.new_pos:hover {
	background: #bbb;
	box-shadow: 0 0 20px #222;
}

.new_pos:active {
	box-shadow: 0 0 20px #000;
	background: #aaa;
}

*:focus {
	outline: none;
}

body {
	overflow: hidden;
	height: 500px;
}

.new_pos {
	position: fixed;
	left: 0;
	bottom: 0;
	cursor: pointer;
}
</style>
<c:forEach items="${test}" var="list">
	<div class="rand_pos" class="rand">
		<p>일반관리비 : ${list}</p>
	</div>
</c:forEach>

<script language="JavaScript"> 
window.onload = pageLoad;
function pageLoad(){
	
console.log(${size});
		var bodyWidth = document.body.clientWidth
		var bodyHeight = document.body.clientHeight;
		for(let i=0; i<${size}; i++) {	
		eval("randPosX" + i) = Math.floor((Math.random() * bodyWidth));
		eval("randPosY" + i) = Math.floor((Math.random() * bodyHeight));
		$('.rand_pos').css('left', eval("randPosX" + i));
		$('.rand_pos').css('top', eval("randPosY" + i));
		}
	};
</script>