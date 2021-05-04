<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>


</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<a href="index.html" class="logo"><strong>Forty</strong> <span>by
					HTML5 UP</span></a>
			<nav>
				<a href="#menu">Menu</a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="index.html">Home</a></li>
				<li><a href="landing.html">Landing</a></li>
				<li><a href="generic.html">Generic</a></li>
				<li><a href="elements.html">Elements</a></li>
			</ul>
			<ul class="actions stacked">
				<li><a href="#" class="button primary fit">Get Started</a></li>
				<li><a href="#" class="button fit">Log In</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main" class="alt">

			<!-- One -->
			<section id="one">
				<div class="inner">
					<header class="major">
						<h1>솔 동물병원 의료센터</h1>
					</header>

					<!-- Content -->
					<h2 id="content">솔 동물병원 의료센터</h2>
					<p>
						<b>동물 병원 진료비, 어떻게 책정되는걸까요?<b><br /> 편차가 심한 동물병원비, 혹여나 과잉
								진효를 하진 않을까 하는 걱정에 혼란스러웠던 애완 주인님들.<br />
					</p>

					<div class="row">
						<div class="col-6 col-12-small">
							<h3>병원 코드 : 01</h3>
							<h3>진료/수술명을 선택해주세요.</h3>
							<div>
								<input type="text" placehoder="검색어 입력">
								<button>검색</button>

							</div>

							<div class="dropdown">
								<button class="dropbtn">단순 클리닉</button>
								<div class="dropdown-content">
									<a href="#">구토</a> <a href="#">설사</a> <a href="#">혈변/혈노</a> <a
										href="#">피부병</a>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn">내과 클리닉</button>
								<div class="dropdown-content">
									<a href="#">호흡기 질환</a> <a href="#">심장 질환</a> <a href="#">바이러스
										질환</a> <a href="#">소화기 질환</a>
								</div>
							</div><br><br>
							<h3>날짜를 선택해주세요.</h3>
							<p>
								<input type="date">
							</p>
							<p>
								<input type="submit" value="Submit">
							</p>

						</div>
						<div class="col-6 col-12-small">
							<h3>병원 예약</h3>
							<form name="login" action="index.html" method="post">
								예약자이름<br> <input type="text" name="user_ID"
									placeholder="예약자이름"> 
									<br> 예약자 전화번호<br>
								<input type="text" name="user_TEL"
									placeholder="예약자 전화번호">
									<br>반려동물 종류<br> <input type="text" name="user_PETkind"> <br> <br>
								<input type="button" name="user_IDcheck" value="확인">
							</form>
						</div>

					</div>

					<hr class="major" />



					<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon brands alt fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands alt fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands alt fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands alt fa-github"><span
										class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands alt fa-linkedin-in"><span
										class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li>
								<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

				</div>

				<!-- Scripts -->
				<script src="assets/js/jquery.min.js"></script>
				<script src="assets/js/jquery.scrolly.min.js"></script>
				<script src="assets/js/jquery.scrollex.min.js"></script>
				<script src="assets/js/browser.min.js"></script>
				<script src="assets/js/breakpoints.min.js"></script>
				<script src="assets/js/util.js"></script>
				<script src="assets/js/main.js"></script>
</body>

</html>