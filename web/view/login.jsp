<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Login Page</h1>
<form action="loginimpl.hw" method="POST">
ID<input type="text" name="id"><br>
PWD<input type="password" name="pwd"><br>
<input type="submit" value="login"><br>
</form>
</body>
</html>




