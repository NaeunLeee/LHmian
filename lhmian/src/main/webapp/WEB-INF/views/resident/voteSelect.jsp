<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	제목 ${hanjul.voteTitle }<br>
	
	문항<br>
	
	<c:forEach var="content" items="${content }">
		${content.vcContent }<br>
	</c:forEach>
</body>
<script>
	//몇일 남았습니다......	
/* 	const endDate = new Date('${hanjul.voteEnd }');
	const now = new Date();
	
	console.log(endDate - now); */
</script>
</html>