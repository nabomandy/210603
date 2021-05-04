<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원가입 화면</title>

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
			alert("아이디를 입력해주세요");
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
			alert("비밀번호가 일치 하지 않습니다");
			document.getElementById("inputPassword").focus();
			return false;
		}
		alert("비밀번호가 일치합니다");
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
               <li class="nav-item"><a class="nav-link" href="#">소개 <span class="sr-only">(current)</span>
               </a></li>
                -->

					<li class="nav-item"><a class="nav-link" href="cartForm.jsp">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="myPage.jsp">마이페이지</a></li>

					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">로그인</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=outer">자켓</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=top">상의</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=bottom">하의</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=etc">기타</a>
			<a class="nav-category-item" href="/project/board/list">문의</a><a
				class="nav-category-item" href="getCouponForm?id=${login}">쿠폰</a>
		</div>
	</nav>
	<!-- Join Content -->
	<h3 class="mt-3 mb-3 text-center">회원가입</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto" action="join"
		method="post" onsubmit="return passchk01()" name="f">
		<input type="hidden" name="picture" value="">

		<div class="mb-3">
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">사진등록</a></font>
		</div>

		<div class="mb-3">
			<label for="inputId" class="form-label">아이디</label> <input
				type="text" class="form-control" id="inputId" name="id"
				placeholder="아이디">
		</div>

		<div class="mb-3">
			<label for="inputPassword" class="form-label">비밀번호</label> <input
				type="password" class="form-control" id="inputPassword" name="pass"
				placeholder="비밀번호 (숫자, 영문, 특수문자 조합 최소 8자)">
		</div>

		<div class="mb-3">
			<label for="inputPasswordCheck" class="form-label">비밀번호 확인</label> <input
				type="password" class="form-control" id="inputPasswordCheck"
				name="passchk" placeholder="비밀번호 확인">
		</div>

		<div class="mb-3">
			<label for="inputName" class="form-label">이름</label> <input
				type="text" class="form-control" id="inputName" name="name"
				placeholder="이름">
		</div>

		<div class="mb-3">
			<label for="inputBirthday" class="form-label">주민등록번호</label><br /> <input
				type="text" class="form-control" id="inputBirthday" name="birthday"
				placeholder="주민등록번호 앞7자리 (900101-1XXXXXX)">
		</div>

		<div class="mb-3">
			<label for="inputPhone" class="form-label">전화번호</label> <input
				type="text" class="form-control" id="inputPhone" name="tel"
				placeholder="전화번호 입력 (010XXXXXXXX)">
		</div>

		<div class="mb-3">
			<label for="inputzip_num" class="form-label">우편번호</label> <input
				type="text" class="form-control" id="inputzip_num" name="zip_num"
				placeholder="우편번호 입력 (123-12)">
		</div>

		<div class="mb-3">
			<label for="inputEmail" class="form-label">이메일</label> <input
				type="text" class="form-control" id="inputEmail" name="email"
				placeholder="이메일@주소">
		</div>

		<div class="mb-3">
			<label for="inputAddress" class="form-label">주소</label> <input
				type="text" class="form-control" id="inputAddress" name="address"
				placeholder="주소 입력 (oo시 oo구 oo동)">
		</div>

		<div class="mb-3">
			<label for="inputPet_kind" class="form-label">반려동물 종류</label> <input
				type="text" class="form-control" id="inputPet_kind" name="pet_kind"
				placeholder="ex) 강아지, 고양이, 거북이 등">
		</div>

		<div class="mb-3">
			<label for="inputPet_name" class="form-label">반려동물 이름</label> <input
				type="text" class="form-control" id="inputPet_name" name="pet_name"
				placeholder="ex) 나리, 체리 등">
		</div>

		<div class="mb-3">
			<label for="inputPet_age" class="form-label">반려동물 나이</label> <input
				type="text" class="form-control" id="inputPet_age" name="pet_age"
				placeholder="숫자만 입력해 주세요">
		</div>

		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="check_all"
				value="1" name="agree"> <label class="form-check-label"
				for="checkAll" onclick="selectAll(this)">약관 모두 동의</label>
		</div>
		<ul class='select_subject'>
			<div class="mb-3 p-3 border">
				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="ageCheck" name="agree">
					<label class="form-check-label" for="ageCheck">만 14세 이상입니다.
					</label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="agreeCheck" name="agree">
					<label class="form-check-label" for="agreeCheck">약관 동의 </label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="privacyCheck"
						name="agree"> <label class="form-check-label"
						for="privacyCheck">개인정보수집 및 이용에 대한 안내 </label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="agree" value="1"
						name="agree"> <label class="form-check-label"
						for="eventCheck">이벤트/마케팅 수신 동의 </label>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="normal" id="nightCheck" name="agree">
					<label class="form-check-label" for="nightCheck">야간 혜택 알림
						수신 동의 </label>
				</div>
		</ul>
		</div>

		<input type="submit" class="w-100 btn btn-lg btn-primary mb-5"
			value="회원가입">

	</form>
	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>고객센터 : XXXX-XXXX</span> <span>&emsp;</span> <span>페이스북</span>
				<span>인스타그램</span>
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