<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
table{
	width:400px;
	border:2px solid black;
	text-align:center;
}
</style>
</head>
<body>
<h1>User Update Page</h1>
<form action="userupdateimpl.hw" method="POST">
ID:${upuser.id }<br>
<input type="hidden" name="id" 
value="${upuser.id }">
PWD:<input type="password" 
name="pwd" value="${upuser.pwd }"><br>
NAME:<input type="text" 
name="name" value="${upuser.name }"><br>
<input type="submit" value="UPDATE">
</form>
</body>
</html>







