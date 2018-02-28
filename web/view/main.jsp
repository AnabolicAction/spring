<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<style>
div{
	width:800px;
	border:2px solid red;
}
</style>

</head>
<body>
<a href="user.hw">USER</a>
<a href="product.hw">PRODUCT</a>
<a href="item.hw">ITEM</a>
<a href="customer.hw">CUSTOMER</a>
<div>
<c:choose>
	<c:when test="${center == null }">
	<jsp:include page="center.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
	<jsp:include page="${center }.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
</div>
</body>
</html>




