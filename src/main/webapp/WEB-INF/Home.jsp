<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<title>Insert title here</title>
</head>
<body>
	<div class="container">
  <div class="row">
    <div class="col-md-6">
      <h2>Register</h2>
      <form:form action="/process/register" method="POST" modelAttribute="newUser">
        <div class="form-group">
          <form:label path="userName">Username:</form:label>
          <form:input type="text" class="form-control" path="userName"/>
          <form:errors path="userName" cssClass="text-danger"/>
        </div>
        <div class="form-group">
          <form:label path="email">Email:</form:label>
          <form:input type="email" class="form-control" path="email"/>
          <form:errors path="email" cssClass="text-danger"/>
        </div>
        <div class="form-group">
          <form:label path="password">Password:</form:label>
          <form:password class="form-control" path="password"/>
          <form:errors path="password" cssClass="text-danger"/>
        </div>
        <div class="form-group">
          <form:label path="confirmPassword">Confirm Password:</form:label>
          <form:password class="form-control" path="confirmPassword"/>
          <form:errors path="confirmPassword" cssClass="text-danger"/>
        </div>
        <!-- Additional form fields -->
        <button type="submit" class="btn btn-primary">Register</button>
      </form:form>
    </div>
    <div class="col-md-6">
      <h2>Login</h2>
      <form:form action="process/login" method="POST" modelAttribute="loginUser">
        <div class="form-group">
          <form:label path="email">Email:</form:label>
          <form:input type="email" class="form-control" path="email"/>
          <form:errors path="email" cssClass="text-danger"/>
        </div>
        <div class="form-group">
          <form:label path="password">Password:</form:label>
          <form:password class="form-control" path="password"/>
          <form:errors path="password" cssClass="text-danger"/>
        </div>
        <!-- Additional form fields -->
        <button type="submit" class="btn btn-primary">Login</button>
      </form:form>
    </div>
  </div>
</div>

<div>
</div>
</body>
</html>