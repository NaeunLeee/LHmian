<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 10/01 resources -> fullcalendar로 수정함 -->
	<link href='${pageContext.request.contextPath}/fullcalendar/css/main.css' type="text/css" rel='stylesheet' />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fullcalendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fullcalendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/fullcalendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/fullcalendar/vendor/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	
	<div>
		<tiles:insertAttribute name="content"/>
	</div>
	
</body>
</html>