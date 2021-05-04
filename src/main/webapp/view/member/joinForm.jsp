<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ȸ������ ȭ��</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		$("#check_all").click(function() {
			var chk = $(this).is(":checked");//.attr('checked');
			if (chk)
				$(".select_subject input").attr('checked', true);
			else
				$(".select_subject input").attr('checked', false);
		});
	});

	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", '', op);
	}
	function checkId() {
		var inputId = document.getElementById("inputId");
		if (inputId == "") {
			alert("���̵� �Է����ּ���");
			return false;
		}

		if (!inputId.checkValidity()) {
			document.getElementById("demo").innerHTML = inpObj.validationMessage;
		} else {
			document.getElementById("demo").innerHTML = "Input OK";
		}
	}

	function passchk01() {
		var p1 = document.getElementById('inputPassword').value;
		var p2 = document.getElementById('inputPasswordCheck').value;
		if (p1 != p2) {
			alert("��й�ȣ�� ��ġ ���� �ʽ��ϴ�");
			document.getElementById("inputPassword").focus();
			return false;
		}
		alert("��й�ȣ�� ��ġ�մϴ�");
		return true;
	}
</script>
</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="main">Shop</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<!-- 
               <li class="nav-item"><a class="nav-link" href="#">�Ұ� <span class="sr-only">(current)</span>
               </a></li>
                -->

					<li class="nav-item"><a class="nav-link" href="cartForm.jsp">��ٱ���</a></li>

					<li class="nav-item"><a class="nav-link" href="myPage.jsp">����������</a></li>

					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">�α���</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">ȸ������</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=outer">����</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=top">����</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=bottom">����</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=etc">��Ÿ</a>
			<a class="nav-category-item" href="/project/board/list">����</a><a
				class="nav-category-item" href="getCouponForm?id=${login}">����</a>
		</div>
	</nav>
	<!-- Join Content -->
	<h3 class="mt-3 mb-3 text-center">ȸ������</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto" action="join"
		method="post" onsubmit="return passchk01()" name="f">
		<input type="hidden" name="picture" value="">

		<div class="mb-3">
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">�������</a></font>
		</div>

		<div class="mb-3">
			<label for="inputId" class="form-label">���̵�</label> <input
				type="text" class="form-control" id="inputId" name="id"
				placeholder="���̵�">
		</div>

		<div class="mb-3">
			<label for="inputPassword" class="form-label">��й�ȣ</label> <input
				type="password" class="form-control" id="inputPassword" name="pass"
				placeholder="��й�ȣ (����, ����, Ư������ ���� �ּ� 8��)">
		</div>

		<div class="mb-3">
			<label for="inputPasswordCheck" class="form-label">��й�ȣ Ȯ��</label> <input
				type="password" class="form-control" id="inputPasswordCheck"
				name="passchk" placeholder="��й�ȣ Ȯ��">
		</div>

		<div class="mb-3">
			<label for="inputName" class="form-label">�̸�</label> <input
				type="text" class="form-control" id="inputName" name="name"
				placeholder="�̸�">
		</div>

		<div class="mb-3">
			<label for="inputBirthday" class="form-label">�ֹε�Ϲ�ȣ</label><br /> <input
				type="text" class="form-control" id="inputBirthday" name="birthday"
				placeholder="�ֹε�Ϲ�ȣ ��7�ڸ� (900101-1XXXXXX)">
		</div>

		<div class="mb-3">
			<label for="inputPhone" class="form-label">��ȭ��ȣ</label> <input
				type="text" class="form-control" id="inputPhone" name="tel"
				placeholder="��ȭ��ȣ �Է� (010XXXXXXXX)">
		</div>

		<div class="mb-3">
			<label for="inputzip_num" class="form-label">�����ȣ</label> <input
				type="text" class="form-control" id="inputzip_num" name="zip_num"
				placeholder="�����ȣ �Է� (123-12)">
		</div>

		<div class="mb-3">
			<label for="inputEmail" class="form-label">�̸���</label> <input
				type="text" class="form-control" id="inputEmail" name="email"
				placeholder="�̸���@�ּ�">
		</div>

		<div class="mb-3">
			<label for="inputAddress" class="form-label">�ּ�</label> <input
				type="text" class="form-control" id="inputAddress" name="address"
				placeholder="�ּ� �Է� (oo�� oo�� oo��)">
		</div>

		<div class="mb-3">
			<label for="inputPet_kind" class="form-label">�ݷ����� ����</label> <input
				type="text" class="form-control" id="inputPet_kind" name="pet_kind"
				placeholder="ex) ������, �����, �ź��� ��">
		</div>

		<div class="mb-3">
			<label for="inputPet_name" class="form-label">�ݷ����� �̸�</label> <input
				type="text" class="form-control" id="inputPet_name" name="pet_name"
				placeholder="ex) ����, ü�� ��">
		</div>

		<div class="mb-3">
			<label for="inputPet_age" class="form-label">�ݷ����� ����</label> <input
				type="text" class="form-control" id="inputPet_age" name="pet_age"
				placeholder="���ڸ� �Է��� �ּ���">
		</div>

		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="check_all"
				value="1" name="agree"> <label class="form-check-label"
				for="checkAll" onclick="selectAll(this)">��� ��� ����</label>
		</div>
		<ul class='select_subject'>
			<div class="mb-3 p-3 border">
				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="ageCheck" name="agree">
					<label class="form-check-label" for="ageCheck">�� 14�� �̻��Դϴ�.
					</label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="agreeCheck" name="agree">
					<label class="form-check-label" for="agreeCheck">��� ���� </label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="privacyCheck"
						name="agree"> <label class="form-check-label"
						for="privacyCheck">������������ �� �̿뿡 ���� �ȳ� </label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="agree" value="1"
						name="agree"> <label class="form-check-label"
						for="eventCheck">�̺�Ʈ/������ ���� ���� </label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="nightCheck" name="agree">
					<label class="form-check-label" for="nightCheck">�߰� ���� �˸�
						���� ���� </label>
				</div>
		</ul>
		</div>

		<input type="submit" class="w-100 btn btn-lg btn-primary mb-5"
			value="ȸ������">

	</form>
	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>������ : XXXX-XXXX</span> <span>&emsp;</span> <span>���̽���</span>
				<span>�ν�Ÿ�׷�</span>
			</p>
		</div>

		<hr style="width: 90%; border-color: gray;">

		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Shop 2021</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>


</body>
</html>