<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>병원등록 화면</title>


<!-- Custom styles for this template -->
<%-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css"> --%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

</head>

<body>
	<!-- Join Content -->
	<h3 class="mt-3 mb-3 text-center">병원등록</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto" action="regist"
		method="post" name="f">
		<!-- 
		
		<input type="hidden" name="picture" value="">
		<div class="mb-3">
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">사진등록</a></font>
		</div>
 -->

		<div class="mb-3">
			<label for="inputC_name" class="form-label">병원명</label> <input
				type="text" class="form-control" id="inputH_name" name="c_name"
				value="${clinic.c_name}">
		</div>

		<div class="mb-3">
			<label for="inputC_location" class="form-label">병원주소</label> <input
				type="text" class="form-control" id="inputH_location"
				name="c_location" value="${clinic.c_location}" placeholder="oo시 oo구 oo번길">
		</div>

		<div class="mb-3">
			<label for="inputC_tel" class="form-label">전화번호</label> <input
				type="text" class="form-control" id="inputH_tel" name="c_tel"
				value="${clinic.c_tel}" placeholder="000-0000-0000">
		</div>

		<div class="mb-3">
			<label for="inputPet_kind" class="form-label">진료가능한 동물종류</label> <input
				type="text" class="form-control" id="inputPet_kind"
				name="pet_kind" value="${clinic.pet_kind}" placeholder="강아지,고양이,햄스터 등">
		</div>
		
		<div class="mb-3">
			<label for="inputReference_room" class="form-label">운영시간</label>
			<input type="text" class="form-control" id=inputReference_room
				name="open_hour" value="${clinic.open_hour}" placeholder="운영시간 00:00 ~24:00">
		</div>

		<div class="mb-3">
			<label for="inputPark" class="form-label">주차가능여부</label> 
			<label><input type="radio" class="form-control" id="inputPark" name="park" value="1" checked>가능</label>
			<label><input type="radio" class="form-control" id="inputPark" name="park" value="0">불가능</label>
		</div>

		<div class="mb-3">
			<label for="inputReserve" class="form-label">예약가능여부</label>
			<label><input type="radio" class="form-control" id="inputReserve" name="reserve" value="1" checked>가능</label>
			<label><input type="radio" class="form-control" id="inputReserve" name="reserve" value="0">불가능</label>
		</div>
		
		

		<input type="submit" class="w-100 btn btn-lg btn-primary mb-5"
			value="병원등록">

	</form>

</body>
</html>