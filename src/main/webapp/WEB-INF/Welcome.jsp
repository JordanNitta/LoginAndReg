<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome, <c:out value="${user.userName}"/></h1>
	<p>This is your dashboard. Nothing to see here yet.</p>
	<a href="/">Log Out</a>
</body>
</html>