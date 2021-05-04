<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
    <title>playpet</title>
<meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="playpet.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- 드롭다운 css -->
    <script src="playpet.js" defer></script>
    <style>
      .cafecon {
        display: table;
        margin-left: auto;
        margin-right: auto;
      }
    </style>
  </head>
  <body>
    <!-- Nav container -->
    <nav class="navbar">
      <!-- Logo with text -->
      <div class="navbar__logo">
        <i class="fab fa-accusoft"></i>
        <a href="member/main">with.pet</a>
      </div>
      <!-- Menu -->
      <ul class="navbar__menu">
        <li><a href="member/main">Home</a></li>
        <li><a href="">Hospital</a></li>
        <li><a href="hotel/list">Hotel</a></li>
        <li><a href="playpet.jsp">Cafe & Playground</a></li>
        <li><a href="">Shop</a></li>
      </ul>
      <!-- Icons -->
      <ul class="navbar__icons">
        <li><i class="fab fa-twitter"></i></li>
        <li><i class="fab fa-facebook-f"></i></li>
      </ul>
      <!-- Toggle button -->
      <a href="#" class="navbar__toggleBtn">
        <i class="fas fa-bars"></i>
      </a>
    </nav>
   
    <!-- <nav id="menu">
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
    </nav> -->
    <!-- Banner -->
    <section id="banner" class="major">
      <div class="inner">
        <header class="major">
          <h1>Cafe & Playground</h1>
        </header>
        <div class="content">
          <p>
            아이들과 함께 할 수 있는 놀이시설을 확인하세요<br />
            반려동물 놀이터, 애견카페 등 다양한 시설을 보여드립니다.
          </p>
        </div>
      </div>
    </section>

    <!--cafe & food-->
    <section class="left">
      <header class="aaa">Cafe & Food</header>
      <article class="cafecon">
        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/울라스튜디오.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">울라스튜디오</div>
            <div class="dis">견생사진을 찍어주는 곳으로 유명한 용산의 카페 겸 스튜디오</div>
            <a class="btn" href="">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>
        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/상수카페인솔커피.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">상수카페 인솔커피</div>
            <div class="dis">반려견과 함께 마실 수 있는 puppy latte가 유명한 카페</div>
            <a class="btn" href="#">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>
        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/카페어질리티.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">카페 어질리티</div>
            <div class="dis">반려견들을 위한 전용 어질리티 공간이 마련되어 있는 카페</div>
            <a class="btn" href="#">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>
        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/카페도그마.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">카페 도그마</div>
            <div class="dis">셀프 목욕, 미용이 가능한 애견카페</div>
            <a class="btn" href="#">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>
        <!-- <div class="cafe">
          <div class="col-6 col-12-small">
            <img
              src="pp.jpg"
              alt=""
              data-position="center center"
              style="width: 60%; height: 80%; padding: 3%"
            />
          </div>
          <div class="inner">cafe1 간단한 설명</div>
        </div> -->
        <!-- <div class="cafe">
          <div class="col-6 col-12-small">
            <img
              src="pp.jpg"
              alt=""
              data-position="center center"
              style="width: 60%; height: 80%; padding: 3%"
            />
          </div>
          <div class="inner">cafe2 간단한 설명</div>
        </div>
        <div class="cafe">
          <div class="col-6 col-12-small">
            <img
              src="pp.jpg"
              alt=""
              data-position="center center"
              style="width: 60%; height: 80%; padding: 3%"
            />
          </div>
          <div class="inner">cafe3 간단한 설명</div>
        </div> -->
      </article>
    </section>

    <!--playground-->
    <section class="right">
      <header class="aaa">Playground</header>
      <article class="cafecon">
        <!-- <div class="playground">
          <div class="col-6 col-12-small">
            <img
              src="borapet2.jpg"
              alt=""
              data-position="center center"
              style="width: 60%; height: 80%; padding: 3%"
            />
          </div>
          <div class="inner">
            서울시 관악구에 위치한 보라매공원 반려동물 놀이터
          </div>
        </div> -->
        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/borapet2.jpg" alt="" />
    
           
          </div>
          <div class="product-info">
            <div class="name">보라매공원 반려동물 놀이터</div>
            <div class="dis">가장 최근에 개장하여 깔끔한 시설을 자랑하는 보라매공원 반려견 놀이터</div>
            <a class="btn" href="playpetinfo.jsp">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>

        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/용인기흥반려견놀이터.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">기흥 호수공원 반려견 놀이터</div>
            <div class="dis">용인에 위치한 국내 최대규모 반려견 놀이터</div>
            <a class="btn" href="#">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>

        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/kjpet.jpg" alt="" />
    
            
          </div>
          <div class="product-info">
            <div class="name">어린이대공원 반려견놀이터</div>
            <div class="dis">교통이 편리한 서울 동북부 대표 반려견 놀이터</div>
            <a class="btn" href="#">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>

        
        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/wcpet.jpg" alt="" />
    
            
          </div>
          <div class="product-info">
            <div class="name">월드컵공원 반려견 놀이터</div>
            <div class="dis">서울시에서 운영하는 곳 들 중 가장 큰 규모를 자랑하는 월드컵공원 반려견 놀이터.</div>
            <a class="btn" href="#">상세보기</a>
          </div>
          <script type="text/javascript">
            var container = document.getElementById("image-container");
            function change_img(image) {
              container.src = image.src;
            }
          </script>
        </div>
    
        <!-- <div class="playground">
          <div class="col-6 col-12-small">
            <img
              src="kjpet.jpg"
              alt=""
              data-position="center center"
              style="width: 60%; height: 80%; padding: 3%"
            />
          </div>
          <div class="inner">어린이대공원 반려견놀이터</div>
        </div>
        <div class="playground">
          <div class="col-6 col-12-small">
            <img
              src="wcpet.jpg"
              alt=""
              data-position="center center"
              style="width: 60%; height: 80%; padding: 3%"
            />
          </div>
          <div class="inner">월드컵공원 반려견 놀이터</div>
        </div>
      </article>
    </section> -->
   
  </body>
  <!--ㄱㅣㅌㅏㅈㅓㅇㅂㅗㅎㅏㄴㄱㅡㄹㅇㅣㅇㅗㅐㅇㅣㄹㅐ-->
  <!--회사정보회사정보-->
  <footer id="footer">
    <div class="inner">
      <ul class="icons">
        <li>
          <a href="#" class="icon brands alt fa-twitter"
            ><span class="label">Twitter</span></a
          >
        </li>
        <li>
          <a href="#" class="icon brands alt fa-facebook-f"
            ><span class="label">Facebook</span></a
          >
        </li>
        <li>
          <a href="#" class="icon brands alt fa-instagram"
            ><span class="label">Instagram</span></a
          >
        </li>
        <li>
          <a href="#" class="icon brands alt fa-github"
            ><span class="label">GitHub</span></a
          >
        </li>
        <li>
          <a href="#" class="icon brands alt fa-linkedin-in"
            ><span class="label">LinkedIn</span></a
          >
        </li>
      </ul>
      <ul class="copyright">
        <li>&copy; with.pet</li>
        <li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
      </ul>
    </div>
  </footer>
</html>
