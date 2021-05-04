<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원가입 화면</title>


<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/hotel.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

</head>

<body>
	<!-- Join Content -->
	<h3>호텔등록</h3>

	<form action="regist" method="post" name="f">
		<!-- 
		
		<input type="hidden" name="picture" value="">
		<div>
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">사진등록</a></font>
		</div>
 -->

		<div>
			<label>호텔명</label> <input type="text" name="h_name"
				value="${hotel.h_name}">
		</div>

		<div>
			<label>호텔주소</label> <input type="text" name="h_location"
				value="${hotel.h_location}" placeholder="oo시 oo구 oo번길">
		</div>

		<div>
			<label>전화번호</label> <input type="text" name="h_tel"
				value="${hotel.h_tel}" placeholder="000-0000-0000">
		</div>

		<div>
			<label>방 종류</label> <input type="text" name="room_kind"
				value="${hotel.room_kind}" placeholder="디럭스, 슈페리얼, 스위트 등">
		</div>

		<div>
			<label>방 번호</label> <input type="text" name="room_num"
				value="${hotel.room_num}">
		</div>

		<div>
			<label>주차가능여부</label> <label><input type="radio" name="park"
				value="1" checked>가능</label> <label><input type="radio"
				name="park" value="0">불가능</label>
		</div>

		<div>
			<label>예약가능여부</label> <label><input type="radio"
				name="reserve" value="1" checked>가능</label> <label><input
				type="radio" name="reserve" value="0">불가능</label>
		</div>

		<div>
			<label>와이파이여부</label> <label><input type="radio" name="wifi"
				value="1" checked>가능</label> <label><input type="radio"
				name="wifi" value="0">불가능</label>
		</div>

		<div>
			<label>장애인 편의시설</label> <input type="text" name="disability"
				value="${hotel.disability}" placeholder="휠체어 이용편리 등">
		</div>

		<div>
			<label>대강당 및 회의실</label> <input type="text" name="reference_room"
				value="${hotel.reference_room}" placeholder="수용가능인원 / 갯수 ">
		</div>

		<div>
			<input type="submit" value="호텔등록">
		</div>
	</form>

</body>
</html>