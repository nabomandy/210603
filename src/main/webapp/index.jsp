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
					<h5>�������� ���� ����, With.pet���� �Բ� ��⼼��</h5>
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
                    <h3>����� �ݷ������� ���� ��� ������ ����, ������</h3>
                </div>
                <div class="desc_content">
                    <h5>������ ģ���鿡�� �Ⱥθ� ���� �̾߱⸦ ���� ������. ��Ȱ�� ���� ���� �پ��� ��ɵ� �غ�Ǿ� �ֽ��ϴ�. ������ ���� ���� ���� ���塯�ϰ� �ε�� ������.</h5>
                    <a>sign in</a>
                </div>
            </div>
        </section> -->

		<!-- <section id="subtop">
            <div class="subtop_msg">
                <div class=desc__title>
                    <h7>����� �ݷ������� ���� ��� ������ ����, ������</h7>
                </div>
                <div class="desc_content">
                    <h7>������ ģ���鿡�� �Ⱥθ� ���� �̾߱⸦ ���� ������. ��Ȱ�� ���� ���� �پ��� ��ɵ� �غ�Ǿ� �ֽ��ϴ�. <br>������ ���� ���� ���� ���塯�ϰ� �ε�� ������.</h7>
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
				<p1>����� �ݷ�������<br>
				���� ��� ������ ����, ������</p1>
			</div>
			<div class="content__desc2" style="padding: 0px 130px 0px 0px">
				<p4>������ ������ �Ⱥθ� ���� �̾߱⸦ ���� ������. ������ ���� ���� �پ��� ��ɵ� �غ�Ǿ� �ֽ��ϴ�.<br>
				������ ���� ���� ���� ���塯�ϰ� �ε�� ������.</p4>
			</div>
			<ul class="actions">
				<li><a href="#one" class="button next scrolly"> <p2>�ڼ���
						����</p2>
				</a> <!-- <button class=detail type="button"><p2>�ڼ��� ����</p2></button> -->
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
								<h3>�����̰���</h3>
								<span>Stay with ur story</span>
							</div>
						</a> <a href="https://github.com/dream-ellie/responsive-nav-bar"
							class="project" data-type="front-end" target="blank"> <img
							class="project__img" src="img/stay2.png" alt="navbar" />
							<div class="project__description">
								<h3>�۸��÷��̽�</h3>
								<span>���ֿ��� �Բ��ϴ� ���ο�</span>
							</div>
						</a> <a href="https://github.com/dream-ellie/responsive-nav-bar"
							class="project" data-type="front-end" target="blank"> <img
							class="project__img" src="img/stay3.png" alt="navbar" />
							<div class="project__description">
								<h3>���������嵶</h3>
								<span>�ڿ����� �Բ��ϴ� �ູ</span>
							</div>
						</a> <a href="" class="project" data-type="back-end"> <img
							class="project__img" src="img/stay4.png" alt="" />
							<div class="project__description">
								<h3>����ó��</h3>
								<span>���� �� �� Ǫ���� ����</span>
							</div>
						</a> <a href="" class="project" data-type="back-end"> <img
							class="project__img" src="img/stay5.png" alt="" />
							<div class="project__description">
								<h3>����ũ</h3>
								<span>Waterpark with pet</span>
							</div>
						</a> <a href="" class="project" data-type="mobile"> <img
							class="project__img" src="img/stay6.png" alt="" />
							<div class="project__description">
								<h3>�ҳ���</h3>
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
					'�ݷ����� �޽İ���' ������Ȳ. 5���� �������� ��, ������� �Բ� ���ο� ������ ��������:)<br> ����
					��Ȳ�� ��Ȳ�� ���� ����������.
				</p>
				<div class="skillset">
					<div class="skillset__left">
						<h3 class="skillset__title">Status</h3>
						<div class="skill">
							<div class="skill__description">
								<span>���</span> <span>99%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 99%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>����</span> <span>90%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 90%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>���</span> <span>90%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 90%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>�泲</span> <span>80%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 80%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>����</span> <span>88%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 88%;"></div>
							</div>
						</div>
						<div class="skill">
							<div class="skill__description">
								<span>���</span> <span>77%</span>
							</div>
							<div class="skill__bar">
								<div class="skill__value" style="width: 77%;"></div>
							</div>
						</div>
					</div>
					<div class="skillset__right">
						<div class="tools">
							<h3 class="skillset__title">4�� �ִ뿹�� ����</h3>
							<ul class="tools__list">
								<br>

								<li><span>���������嵶</span></li>
								<li><span>�ҳ���</span></li>
								<li><span>�����̰���</span></li>
								<li><span>���ڽ�����</span></li>
								<li><span>���� �۸��÷��̽�</span></li>
							</ul>
						</div>
						<div class="etc">
							<h3 class="skillset__title">New OPEN</h3>
							<ul class="etc__list">
								<br>
								<li><span>���׶����&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
								<li><span>����&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
								<li><span>����ó��&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
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
						(��)������<br /> ����Ư���� ������ �������1�� 10 ������� 3�� | ��ǥ�� : �ص�� | ����ڵ�Ϲ�ȣ :
						211-29-99102 | ����Ǹž��Ű�:�� 2018-���ﰭ��-2635ȣ | ������������� :
						privacy@woohaha.co.kr <br />| ���޹��� : partnership@woohaha.co.kr |
						���������� : ndisgood@withpet.co.kr | ȣ���� ������: �ص�WS �ֽ�ȸ��
					</p>
				</div>
			</div>
			<div class="company__body">
				<div></div>
				<div>
					<p class="contact__bottom">
						<br /> (��)�������� ����Ǹ��߰����̸� ����Ǹ��� ����ڰ� �ƴմϴ�. ���� ��ǰ/ �ŷ����� �� �ŷ��� �����Ͽ�
						ġŲ�ǹ����� ��ϵ� �Ǹ����� ���� �Ǵ� ���Ƿ� �Һ��ڿ��� �߻��ϴ� ���ؿ� ���� (��)�������� å���� ���� �ʽ��ϴ�.
						��ǰ �� �ŷ��� ���Ͽ� ���� ��Ȯ�� ������ �ش� �Ǹ��ڿ��� ���� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�. <br />
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