<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Add Page</h1>
<form method="POST" action="useradd.hw">
<select>
	<c:forEach var="cc" items="${userlist }">
		<option value="${cc.id}">${cc.name}</option>
    </c:forEach>
</select><br>
ID<input type="text" name="id"><br>
PWD<input type="password" name="pwd"><br>
NAME<input type="text" name="name"><br>
<input type="submit" value="Register">
</form>
</body>
</html>


