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
<h1>List Page</h1>
<table>
<thead>
	<tr><th>ID</th><th>NAME</th></tr>
</thead>
<tbody>
<c:forEach var="u" items="${ulist }"> 
	<tr>
	<td>
	<a href="userdetail.hw?id=${u.id }">${u.id }</a>
	</td>
	<td> ${u.name }</td></tr>
</c:forEach>
</tbody>
</table>
</body>
</html>







