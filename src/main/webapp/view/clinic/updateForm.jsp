<%@page import="dao.ClinicDaoMybatis"%>
<%@page import="mybatis.Clinic"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<title>Shop Homepage</title>

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css">

</head>
<body>

	<form class="container-md p-3 col-8 mb-5 mx-auto" action="update"
		name="f" method="post">
		</br>
		</br>
		</br>
		</br>
		</br>

		<%-- <div class="mb-3">
			<label for="inputPicture" class="form-label">사진 </label><img
					src="<%=request.getContextPath()%>/img/" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">사진수정</a></font>
		</div> --%>

		<div class="mb-3">
			<label for="inputC_name" class="form-label">병원명: </label> ${clinic.c_name}
		</div>

		<div class="mb-3">
			<label for="inputC_location" class="form-label">병원위치: </label> ${clinic.c_location}
		</div>

		<div class="mb-3">
			<label for="inputC_tel" class="form-label">전화번호: </label> <input
				type="text" class="form-control" id="inputC_tel" name="c_tel"
				value="${clinic.c_tel}">
		</div>

		<div class="mb-3">
			<label for="inputPet_kind" class="form-label">진료가능한 동물종류</label> <input
				type="text" class="form-control" id="inputPet_kind" name="pet_kind"
				value="${clinic.pet_kind}">
		</div>

		<div class="mb-3">
			<label for="inputOpen_hour " class="form-label">운영시간</label>
			<input type="text" class="form-control" id=inputOpen_hour
				name="reference_room" value="${clinic.open_hour}" placeholder="운영시간 00:00 ~24:00">
		</div>
		

		<div class="mb-3">
			<label for="inputPark" class="form-label">주차가능여부</label> <input
				type="text" class="form-control" id="inputPark" name="park"
				value="${hotel.park}">
		</div>

		<div class="mb-3">
			<label for="inputReserve" class="form-label">예약가능여부</label> <input
				type="text" class="form-control" id="inputReserve" name="reserve"
				value="${hotel.reserve}">
		</div>

		<button type="submit" class="w-100 btn btn-lg btn-primary mb-5">수정완료</button>

	</form>
	
</body>

</html>