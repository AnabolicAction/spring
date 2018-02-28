<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Product Add Page</h1>
<form method="POST" 
   action="productaddimpl.hw"
   enctype="multipart/form-data">
ID<input type="number" name="id"><br>
NAME<input type="text" name="name"><br>
PRICE<input type="number" name="price"><br>
IMGNAME<input type="file" name="mf"><br>
<input type="hidden" name="imgname" value="">
<input type="submit" value="Register">
</form>
</body>
</html>


