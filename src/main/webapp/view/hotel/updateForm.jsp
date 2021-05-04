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
			<label for="inputPicture">사진 </label><img
					src="<%=request.getContextPath()%>/img/" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">사진수정</a></font>
		</div> --%>

		<div>
			<label for="inputH_name">호텔명: </label> ${hotel.h_name}
		</div>

		<div>
			<label>호텔위치: </label> ${hotel.h_location}
		</div>

		<div>
			<label>전화번호: </label> <input type="text" name="h_tel"
				value="${hotel.h_tel}">
		</div>

		<div>
			<label>방 종류</label> <input type="text" name="room_kind"
				value="${hotel.room_kind}">
		</div>

		<div>
			<label>방 번호: </label> <input type="text" name="room_num"
				value="${hotel.room_num}">
		</div>

		<div>
			<label>주차가능여부</label> <label><input type="radio" name="park"
				value="1" <c:if test="${hotel.park==1}">checked</c:if>>가능</label>
			<label><input type="radio" name="park" value="0"
				<c:if test="${hotel.park==0}">checked</c:if>>불가능</label>
		</div>

		<div>
			<label>예약가능여부</label> <label><input type="radio"
				name="reserve" value="1"
				<c:if test="${hotel.reserve==1}">checked</c:if>>가능</label> <label><input
				type="radio" name="reserve" value="0"
				<c:if test="${hotel.reserve==0}">checked</c:if>>불가능</label>
		</div>

		<div>
			<label>와이파이여부</label> <label><input type="radio" name="wifi"
				value="1" <c:if test="${hotel.wifi==1}">checked</c:if>>가능</label>
			<label><input type="radio" name="wifi" value="0"
				<c:if test="${hotel.wifi==0}">checked</c:if>>불가능</label>
		</div>

		<div>
			<label>장애인 편의시설</label> <input type="text" name="disability"
				value="${hotel.disability}">
		</div>

		<div>
			<label>대강당 및 회의실</label> <input type="text" name="reference_room"
				value="${hotel.reference_room}">
		</div>


		<button type="submit">수정완료</button>

	</form>

</body>

</html>