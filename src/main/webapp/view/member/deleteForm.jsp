<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop Homepage</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css">


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
					<li class="nav-item active"><a class="nav-link" href="#">소개
							<span class="sr-only">(current)</span>
					</a></li>
					 -->
					
					<li class="nav-item"><a class="nav-link" href="\project/project/projectServlet?command=cart_list">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/myPage?id=${login}">마이페이지</a></li>

					<c:if test="${login eq ''}">
               <li class="nav-item"><a class="nav-link" href="loginForm">로그인</a></li>
               </c:if> <c:if test="${login ne ''}">
               <li class="nav-item"><a class="nav-link" href="logout">로그아웃</a></li> </c:if>

					<li class="nav-item"><a class="nav-link" href="joinForm">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="\project/project/projectServlet?command=catagory&kind=outer">자켓</a> <a
				class="nav-category-item" href="\project/project/projectServlet?command=catagory&kind=top">상의</a> <a
				class="nav-category-item" href="\project/project/projectServlet?command=catagory&kind=bottom">하의</a> <a
				class="nav-category-item" href="\project/project/projectServlet?command=catagory&kind=etc">기타</a> <a
				class="nav-category-item" href="/project/board/list">문의</a><a
				class="nav-category-item" href="getCouponForm?id=${login}">쿠폰</a>
				<c:if test="${login eq 'admin'}"><a
				class="nav-category-item" href="addCouponForm?id=${login}">쿠폰생성</a><a
				class="nav-category-item" href="listCoupon?id=${login}">쿠폰관리</a><a
				class="nav-category-item" href="memberList">회원목록</a>
				</c:if>
		</div>
	</nav>
<form name="f" action="delete" method="post">
<input type="hidden" name="id" value="${id}">
<table style="width:80%; margin: auto; margin-top:20px;">
<tr><td>아이디</td>
<td>${id}</td></tr>
<tr><td>비밀번호</td>
<td><input type="password" name="pass"></td></tr>
<tr><td colspan="2"><input type="submit" value="탈퇴하기"></td></tr>
</table>
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