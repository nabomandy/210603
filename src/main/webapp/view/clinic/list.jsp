<%@page import="dao.HotelDaoMybatis"%>
<%@page import="mybatis.Clinic"%>
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
	href="<%=request.getContextPath()%>/assets/css/main.css">

</head>
<body>
	<table>
		<tr>
			<th>������ȣ</th>
			<th>������</th>
			<th>������ġ</th>
			<th>������ȭ��ȣ</th>
			<th>���ᰡ���� ��������</th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach var="clinic" items="${list}">
			<tr>
				<td><a href="info?c_num=${clinic.c_num}">${clinic.c_num}</a></td>
				<td>${clinic.c_name}</td>
				<td>${clinic.c_location}</td>
				<td>${clinic.c_tel}</td>
				<td>${clinic.pet_kind}</td>
				<td><a href="delete?c_num=${clinic.c_num}">[���� ����]</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5"></td>
			<td><a href="registForm">[���� ���]</a></td>
		</tr>
	</table>

</body>

</html>