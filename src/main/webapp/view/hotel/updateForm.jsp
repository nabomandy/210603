<%@page import="dao.HotelDaoMybatis"%>
<%@page import="mybatis.Hotel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<title>Shop Homepage</title>

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/hotel.css">

</head>
<body>

	<form class="container-md p-3 col-8 mb-5 mx-auto" action="update"
		name="f" method="post">
		</br> </br> </br> </br> </br>

		<%-- <div>
			<label for="inputPicture">���� </label><img
					src="<%=request.getContextPath()%>/img/" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">��������</a></font>
		</div> --%>

		<div>
			<label for="inputH_name">ȣ�ڸ�: </label> ${hotel.h_name}
		</div>

		<div>
			<label>ȣ����ġ: </label> ${hotel.h_location}
		</div>

		<div>
			<label>��ȭ��ȣ: </label> <input type="text" name="h_tel"
				value="${hotel.h_tel}">
		</div>

		<div>
			<label>�� ����</label> <input type="text" name="room_kind"
				value="${hotel.room_kind}">
		</div>

		<div>
			<label>�� ��ȣ: </label> <input type="text" name="room_num"
				value="${hotel.room_num}">
		</div>

		<div>
			<label>�������ɿ���</label> <label><input type="radio" name="park"
				value="1" <c:if test="${hotel.park==1}">checked</c:if>>����</label>
			<label><input type="radio" name="park" value="0"
				<c:if test="${hotel.park==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div>
			<label>���డ�ɿ���</label> <label><input type="radio"
				name="reserve" value="1"
				<c:if test="${hotel.reserve==1}">checked</c:if>>����</label> <label><input
				type="radio" name="reserve" value="0"
				<c:if test="${hotel.reserve==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div>
			<label>�������̿���</label> <label><input type="radio" name="wifi"
				value="1" <c:if test="${hotel.wifi==1}">checked</c:if>>����</label>
			<label><input type="radio" name="wifi" value="0"
				<c:if test="${hotel.wifi==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div>
			<label>����� ���ǽü�</label> <input type="text" name="disability"
				value="${hotel.disability}">
		</div>

		<div>
			<label>�밭�� �� ȸ�ǽ�</label> <input type="text" name="reference_room"
				value="${hotel.reference_room}">
		</div>


		<button type="submit">�����Ϸ�</button>

	</form>

</body>

</html>