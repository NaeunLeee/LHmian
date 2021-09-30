<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<link href='${pageContext.request.contextPath}/resources/css/main.css' rel='stylesheet' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/vendor/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<header>
		<tiles:insertAttribute name="header" />
	</header>
	
	<div>
		<tiles:insertAttribute name="content"/>
	</div>
	
	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>