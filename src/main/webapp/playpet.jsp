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

    <!-- ��Ӵٿ� css -->
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
            ���̵�� �Բ� �� �� �ִ� ���̽ü��� Ȯ���ϼ���<br />
            �ݷ����� ������, �ְ�ī�� �� �پ��� �ü��� �����帳�ϴ�.
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
            <img id="image-container" src="img/���Ʃ���.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">���Ʃ���</div>
            <div class="dis">�߻������� ����ִ� ������ ������ ����� ī�� �� ��Ʃ���</div>
            <a class="btn" href="">�󼼺���</a>
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
            <img id="image-container" src="img/���ī���μ�Ŀ��.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">���ī�� �μ�Ŀ��</div>
            <div class="dis">�ݷ��߰� �Բ� ���� �� �ִ� puppy latte�� ������ ī��</div>
            <a class="btn" href="#">�󼼺���</a>
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
            <img id="image-container" src="img/ī�������Ƽ.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">ī�� ������Ƽ</div>
            <div class="dis">�ݷ��ߵ��� ���� ���� ������Ƽ ������ ���õǾ� �ִ� ī��</div>
            <a class="btn" href="#">�󼼺���</a>
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
            <img id="image-container" src="img/ī�䵵�׸�.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">ī�� ���׸�</div>
            <div class="dis">���� ���, �̿��� ������ �ְ�ī��</div>
            <a class="btn" href="#">�󼼺���</a>
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
          <div class="inner">cafe1 ������ ����</div>
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
          <div class="inner">cafe2 ������ ����</div>
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
          <div class="inner">cafe3 ������ ����</div>
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
            ����� ���Ǳ��� ��ġ�� ����Ű��� �ݷ����� ������
          </div>
        </div> -->
        <div class="card">
          <div class="top-section">
            <img id="image-container" src="img/borapet2.jpg" alt="" />
    
           
          </div>
          <div class="product-info">
            <div class="name">����Ű��� �ݷ����� ������</div>
            <div class="dis">���� �ֱٿ� �����Ͽ� ����� �ü��� �ڶ��ϴ� ����Ű��� �ݷ��� ������</div>
            <a class="btn" href="playpetinfo.jsp">�󼼺���</a>
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
            <img id="image-container" src="img/���α���ݷ��߳�����.jpg" alt="" />
          </div>
          <div class="product-info">
            <div class="name">���� ȣ������ �ݷ��� ������</div>
            <div class="dis">���ο� ��ġ�� ���� �ִ�Ը� �ݷ��� ������</div>
            <a class="btn" href="#">�󼼺���</a>
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
            <div class="name">��̴���� �ݷ��߳�����</div>
            <div class="dis">������ ���� ���� ���Ϻ� ��ǥ �ݷ��� ������</div>
            <a class="btn" href="#">�󼼺���</a>
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
            <div class="name">�����Ű��� �ݷ��� ������</div>
            <div class="dis">����ÿ��� ��ϴ� �� �� �� ���� ū �Ը� �ڶ��ϴ� �����Ű��� �ݷ��� ������.</div>
            <a class="btn" href="#">�󼼺���</a>
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
          <div class="inner">��̴���� �ݷ��߳�����</div>
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
          <div class="inner">�����Ű��� �ݷ��� ������</div>
        </div>
      </article>
    </section> -->
   
  </body>
  <!--���Ӥ������ä����Ǥ��������Ѥ����Ӥ��Ǥ����Ӥ���-->
  <!--ȸ������ȸ������-->
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
