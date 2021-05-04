<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>������� ȭ��</title>


<!-- Custom styles for this template -->
<%-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css"> --%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

</head>

<body>
	<!-- Join Content -->
	<h3 class="mt-3 mb-3 text-center">�������</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto" action="regist"
		method="post" name="f">
		<!-- 
		
		<input type="hidden" name="picture" value="">
		<div class="mb-3">
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">�������</a></font>
		</div>
 -->

		<div class="mb-3">
			<label for="inputC_name" class="form-label">������</label> <input
				type="text" class="form-control" id="inputH_name" name="c_name"
				value="${clinic.c_name}">
		</div>

		<div class="mb-3">
			<label for="inputC_location" class="form-label">�����ּ�</label> <input
				type="text" class="form-control" id="inputH_location"
				name="c_location" value="${clinic.c_location}" placeholder="oo�� oo�� oo����">
		</div>

		<div class="mb-3">
			<label for="inputC_tel" class="form-label">��ȭ��ȣ</label> <input
				type="text" class="form-control" id="inputH_tel" name="c_tel"
				value="${clinic.c_tel}" placeholder="000-0000-0000">
		</div>

		<div class="mb-3">
			<label for="inputPet_kind" class="form-label">���ᰡ���� ��������</label> <input
				type="text" class="form-control" id="inputPet_kind"
				name="pet_kind" value="${clinic.pet_kind}" placeholder="������,�����,�ܽ��� ��">
		</div>
		
		<div class="mb-3">
			<label for="inputReference_room" class="form-label">��ð�</label>
			<input type="text" class="form-control" id=inputReference_room
				name="open_hour" value="${clinic.open_hour}" placeholder="��ð� 00:00 ~24:00">
		</div>

		<div class="mb-3">
			<label for="inputPark" class="form-label">�������ɿ���</label> 
			<label><input type="radio" class="form-control" id="inputPark" name="park" value="1" checked>����</label>
			<label><input type="radio" class="form-control" id="inputPark" name="park" value="0">�Ұ���</label>
		</div>

		<div class="mb-3">
			<label for="inputReserve" class="form-label">���డ�ɿ���</label>
			<label><input type="radio" class="form-control" id="inputReserve" name="reserve" value="1" checked>����</label>
			<label><input type="radio" class="form-control" id="inputReserve" name="reserve" value="0">�Ұ���</label>
		</div>
		
		

		<input type="submit" class="w-100 btn btn-lg btn-primary mb-5"
			value="�������">

	</form>

</body>
</html>