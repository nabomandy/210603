<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ȸ������ ȭ��</title>


<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/hotel.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

</head>

<body>
	<!-- Join Content -->
	<h3>ȣ�ڵ��</h3>

	<form action="regist" method="post" name="f">
		<!-- 
		
		<input type="hidden" name="picture" value="">
		<div>
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">�������</a></font>
		</div>
 -->

		<div>
			<label>ȣ�ڸ�</label> <input type="text" name="h_name"
				value="${hotel.h_name}">
		</div>

		<div>
			<label>ȣ���ּ�</label> <input type="text" name="h_location"
				value="${hotel.h_location}" placeholder="oo�� oo�� oo����">
		</div>

		<div>
			<label>��ȭ��ȣ</label> <input type="text" name="h_tel"
				value="${hotel.h_tel}" placeholder="000-0000-0000">
		</div>

		<div>
			<label>�� ����</label> <input type="text" name="room_kind"
				value="${hotel.room_kind}" placeholder="�𷰽�, ���丮��, ����Ʈ ��">
		</div>

		<div>
			<label>�� ��ȣ</label> <input type="text" name="room_num"
				value="${hotel.room_num}">
		</div>

		<div>
			<label>�������ɿ���</label> <label><input type="radio" name="park"
				value="1" checked>����</label> <label><input type="radio"
				name="park" value="0">�Ұ���</label>
		</div>

		<div>
			<label>���డ�ɿ���</label> <label><input type="radio"
				name="reserve" value="1" checked>����</label> <label><input
				type="radio" name="reserve" value="0">�Ұ���</label>
		</div>

		<div>
			<label>�������̿���</label> <label><input type="radio" name="wifi"
				value="1" checked>����</label> <label><input type="radio"
				name="wifi" value="0">�Ұ���</label>
		</div>

		<div>
			<label>����� ���ǽü�</label> <input type="text" name="disability"
				value="${hotel.disability}" placeholder="��ü�� �̿��� ��">
		</div>

		<div>
			<label>�밭�� �� ȸ�ǽ�</label> <input type="text" name="reference_room"
				value="${hotel.reference_room}" placeholder="���밡���ο� / ���� ">
		</div>

		<div>
			<input type="submit" value="ȣ�ڵ��">
		</div>
	</form>

</body>
</html>