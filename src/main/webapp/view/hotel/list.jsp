<%@page import="dao.HotelDaoMybatis"%>
<%@page import="mybatis.Hotel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop Homepage</title>
<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/hotel.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<h3>ȣ�ڸ���Ʈ</h3>
<table>
<tr><th>ȣ�ڹ�ȣ</th><th>ȣ�ڸ�</th><th>ȣ����ġ</th><th>ȣ����ȭ��ȣ</th><th>������</th><th><a href="registForm">[ȣ�ڵ��]</a></th></tr>
<c:forEach var="hotel" items="${list}">
<tr><td><a href="info?h_num=${hotel.h_num}">${hotel.h_num}</a></td>
<td>${hotel.h_name}</td>
<td>${hotel.h_location}</td>
<td>${hotel.h_tel}</td>
<td>${hotel.room_kind}</td>
<td><a href="delete?h_num=${hotel.h_num}">[ȣ�ڻ���]</a>
</td></tr></c:forEach>

</table>

</body>

</html>