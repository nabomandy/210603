<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<html>
<head>
<title>With.pet`</title>
<meta charset="euc-kr">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/noscript.css" />
</noscript>
</head>

<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Header -->
		<header id="header" class="alt">
			<a href="member/main" class="logo"><strong>With</strong> <span>.
					pet</span></a>
			<nav>
				<a href="#menu">Menu<i class="fa fa-bars"></i></a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="member/main">Home</a></li>
				<li><a href="hotel/list">Stay</a></li>
				<li><a href="playpet.jsp">Play</a></li>
				<li><a href="clinic/list">Care</a></li>
				<li><a href="board/list">Board</a></li>
			</ul>
			<ul class="actions stacked">
				<c:if test="${id eq null}">
					<li><a href="member/loginForm" class="button fit"> <p3>Log
							In</p3></a></li>
				</c:if>
				<c:if test="${id ne null}">
					<li><a href="member/myPage" class="button primary fit">Mypage</a></li>
					<li><a href="member/logout" class="button fit"> <p3>Log
							Out</p3></a></li>
				</c:if>
			</ul>
		</nav>
		<!-- Banner -->
		<section id="banner" class="major">
			<div class="inner">
				<header class="major">
					<h1>
						With Pet, <br />I'm your Family
					</h1>
				</header>
				<div class="content">
					<h5>여러분의 멋진 여행, With.pet에서 함께 즐기세요</h5>
					<ul class="actions">
						<li>
							<!-- <a href="#one" class="button next scrolly">Get Started</a> -->

						</li>
					</ul>
				</div>
			</div>
		</section>


		<!-- <section id="subtop">
            <div class="subtop_msg">
                <div class=desc__title>
                    <h3>사람과 반려동물을 향한 모든 연결의 시작, 위드펫</h3>
                </div>
                <div class="desc_content">
                    <h5>가족과 친구들에게 안부를 묻고 이야기를 나눠 보세요. 생활의 편리를 돕는 다양한 기능도 준비되어 있습니다. 세상을 향해 열린 문을 ‘톡’하고 두드려 보세요.</h5>
                    <a>sign in</a>
                </div>
            </div>
        </section> -->

		<!-- <section id="subtop">
            <div class="subtop_msg">
                <div class=desc__title>
                    <h7>사람과 반려동물을 향한 모든 연결의 시작, 위드펫</h7>
                </div>
                <div class="desc_content">
                    <h7>가족과 친구들에게 안부를 묻고 이야기를 나눠 보세요. 생활의 편리를 돕는 다양한 기능도 준비되어 있습니다. <br>세상을 향해 열린 문을 ‘톡’하고 두드려 보세요.</h7>
                </div>
                <div>
                    <li>
                        <a href="#one" class="button next scrolly">Get Started</a>
                    </li>
                </div>
            </div>
        </section> -->


		<div class="content__2">
			<div class="content__desc" style="padding: 0px 50px 0px 0px">
				<p1>사람과 반려동물을<br>
				향한 모든 연결의 시작, 위드펫</p1>
			</div>
			<div class="content__desc2" style="padding: 0px 130px 0px 0px">
				<p4>소중한 가족과 안부를 묻고 이야기를 나눠 보세요. 여행의 편리를 돕는 다양한 기능도 준비되어 있습니다.<br>
				세상을 향해 열린 문을 ‘톡’하고 두드려 보세요.</p4>
			</div>
			<ul class="actions">
				<li><a href="#one" class="button next scrolly"> <p2>자세히
						보기</p2>
				</a> <!-- <button class=detail type="button"><p2>자세히 보기</p2></button> -->
				</li>
			</ul>
		</div>

		<section id="searchbar" class=searchbar__section>
			<div class="searchbar__box">
				<div class="searchbar__container">
					<ul class="searchbar__menu nav nav-tabs" role="tab">
						<li class="searchbar__menu__item nav-item"><a role="tab"
							data-toggle="tab" href="">All</a></li>
						<li class="searchbar__menu__item nav-item"><a role="tab"
							data-toggle="tab" href="">PLAY</a></li>
						<li class="searchbar__menu__item nav-item"><a role="tab"
							data-toggle="tab" href="">CARE</a></li>
						<li class="searchbar__menu__item nav-item"><a role="tab"
							data-toggle="tab" href="">STAY</a></li>
					</ul>
				</div>
				<div>
					<div class="work__projects">
						<a href="" class="project" target="blank" data-type="front-end">
							<img src="img/stay1.png" alt="Youtube" class="project__img" />
							<div class="project__description">
								<h3>스테이감동</h3>
								<span>Stay with ur story</span>
							</div>
						</a> <a href="https://github.com/dream-ellie/responsive-nav-bar"
							class="project" data-type="front-end" target="blank"> <img
							class="project__img" src="img/stay2.png" alt="navbar" />
							<div class="project__description">
								<h3>멍멍플레이스</h3>
								<span>제주에서 함께하는 새로움</span>
							</div>
						</a> <a href="https://github.com/dream-ellie/responsive-nav-bar"
							class="project" data-type="front-end" target="blank"> <img
							class="project__img" src="img/stay3.png" alt="navbar" />
							<div class="project__description">
								<h3>스테이위드독</h3>
								<span>자연에서 함께하는 행복</span>
							</div>
						</a> <a href="" class="project" data-type="back-end"> <img
							class="project__img" src="img/stay4.png" alt="" />
							<div class="project__description">
								<h3>네이처독</h3>
								<span>깊은 산 속 푸르른 들판</span>
							</div>
						</a> <a href="" class="project" data-type="back-end"> <img
							class="project__img" src="img/stay5.png" alt="" />
							<div class="project__description">
								<h3>멍파크</h3>
								<span>Waterpark with pet</span>
							</div>
						</a> <a href="" class="project" data-type="mobile"> <img
							class="project__img" src="img/stay6.png" alt="" />
							<div class="project__description">
								<h3>소노펫</h3>
								<span>play with pet</span>
							</div>
						</a>
						<!-- <a href="" class="project" data-type="mobile">
                            <img class="project__img" src="imgs/stay7.png" alt="" />
                            <div class="project__description">
                                <h3>Project</h3>
                                <span>Explanation</span>
                            </div>
                        </a>
                        <a href="" class="project" data-type="mobile">
                            <img class="project__img" src="imgs/stay1.png" alt="" />
                            <div class="project__description">
                                <h3>Project</h3>
                                <span>Explanation</span>
                            </div>
                        </a> -->
					</div>
				</div>
			</div>
		</section>


		<!-- Skills -->
		<section id="reservation_status" class="section">
			<div class="section__container">
				<!-- <h2    >Reservation</h2> -->
				<h2>Reservation & Status</h2>
				<p>
					'반려가족 휴식공간' 예약현황. 5월은 개린이의 달, 위드펫과 함께 새로운 여행을 떠나세요:)<br> 예약
					현황은 상황에 따라 변동가능함.
				</p>
				<div class="skillset">
					<div class="skillset__left">
						<h3 class="skillset__title">Status</h3>
						<div class="skill">
							<div class="skill__description">
								<span>경기</span> <span>99%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 99%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>서울</span> <span>90%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 90%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>충북</span> <span>90%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 90%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>충남</span> <span>80%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 80%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>제주</span> <span>88%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 88%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>경북</span> <span>77%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 77%;"></div>
							</div>
						</div>
					</div>
					<div class="skillset__right">
						<div class="tools">
							<h3 class="skillset__title">4월 최대예약 숙소</h3>
							<ul class="tools__list">
								<br>

								<li><span>스테이위드독</span></li>
								<li><span>소노펫</span></li>
								<li><span>스테이감동</span></li>
								<li><span>또자스테이</span></li>
								<li><span>제주 멍멍플레이스</span></li>
							</ul>
						</div>
						<div class="etc">
							<h3 class="skillset__title">New OPEN</h3>
							<ul class="etc__list">
								<br>
								<li><span>도그라운지&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
								<li><span>멜팅&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
								<li><span>네이처독&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
<!-- Contact -->
		<section id="contact" class="section bot">
			<div class="company">
				<img src="img/logo_withpet.png" alt="logo__withpet"
					class="brand__logo" />

				<div>
					<p class="contact__rights">
						(유)위드펫<br /> 서울특별시 강남구 테헤란로1길 10 세경빌딩 3층 | 대표자 : 앤디배 | 사업자등록번호 :
						211-29-99102 | 통신판매업신고:제 2018-서울강남-2635호 | 개인정보담당자 :
						privacy@woohaha.co.kr <br />| 제휴문의 : partnership@woohaha.co.kr |
						고객만족센터 : ndisgood@withpet.co.kr | 호스팅 제공자: 앤디WS 주식회사
					</p>
				</div>
			</div>
			<div class="company__body">
				<div></div>
				<div>
					<p class="contact__bottom">
						<br /> (유)위드펫은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여
						치킨의민족에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해 (유)위드펫은 책임을 지지 않습니다.
						상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. <br />
						Copyright WOOHAHA. All Rights Reserved.
					</p>
				</div>
			</div>
		</section>

		<!-- Arrow up -->
		<!-- <button class="arrow-up">
  <i class="fas fa-arrow-up"></i> -->
		</button>
</body>












<!-- Main -->
<div id="main">
	<!-- One -->
	<!-- <section id="one" class="tiles">
                <article>
                    <span class="image">
              <img src="img/zero_4.jpg" alt="" />
            </span>
                    <header class="major">
                        <h3><a href="landing.html" class="link">Stay</a></h3>
                        <p>11111-1</p>
                    </header>
                </article>
                <article>
                    <span class="image">
              <img src="img/zero_2.jpg" alt="" />
            </span>
                    <header class="major">
                        <h3><a href="landing.html" class="link">Play</a></h3>
                        <p>22222-2</p>
                    </header>
                </article>
                <article>
                    <span class="image">
              <img src="img/zero_4.jpg" alt="" />
            </span>
                    <header class="major">
                        <h3><a href="landing.html" class="link">33333</a></h3>
                        <p>33333-3</p>
                    </header>
                </article>
                <article>
                    <span class="image">
              <img src="img/zero_2.jpg" alt="" />
            </span>
                    <header class="major">
                        <h3><a href="landing.html" class="link">44444</a></h3>
                        <p>44444-4</p>
                    </header>
                </article> -->

	<!-- <article>
                    <span class="image">
              <img src="images/pic05.jpg" alt="" />
            </span>
                    <header class="major">

                        <h3><a href="landing.html" class="link">Consequat</a></h3>
                        <p>Ipsum dolor sit amet</p>
                    </header>
                </article>
                <article>
                    <span class="image">
              <img src="images/pic06.jpg" alt="" />
            </span>
                    <header class="major">
                        <h3><a href="landing.html" class="link">Etiam</a></h3>
                        <p>Feugiat amet tempus</p>
                    </header>
                </article> -->

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