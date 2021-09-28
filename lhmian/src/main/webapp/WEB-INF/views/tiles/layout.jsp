<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>Template</title>
<link href='${pageContext.request.contextPath}/resources/lib/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/resources/lib/main.js'></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<header>
		<tiles:insertAttribute name="header" />
	</header>

	<div>
		<!-- 컨텐트 -->
		<tiles:insertAttribute name="content" />
	</div>

	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>

</body>
</html>
