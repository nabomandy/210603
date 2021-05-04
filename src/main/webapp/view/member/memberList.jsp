<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="EUC-KR">
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
<script type="text/javascript">
function del(id){
	if(confirm(id+"님을 탈퇴하시겠습니까?")){
		location.href="delete?id="+id;
	}}</script>


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
				<c:if test="${id eq 'admin'}"><a
				class="nav-category-item" href="addCouponForm?id=${id}">쿠폰생성</a><a
				class="nav-category-item" href="listCoupon?id=${id}">쿠폰관리</a><a
				class="nav-category-item" href="memberList">회원목록</a>
				</c:if>
		</div>
	</nav>
<table>
<tr><th>사진</th><th>아이디</th><th>이름</th><th>생년월일</th><th>전화</th><th>주소</th><th>포인트</th><th>누적구매금액</th><th>등급</th><th>&nbsp;</th></tr>
<c:forEach var="m" items="${list}">
<tr>
<td><img src="img/${m.picture}" width="30" height="32"></td><td><a href="myPage?id=${m.id}">${m.id}</a></td><td>${m.name}</td><td>${m.birthday}</td>
<td>${m.tel}</td><td>${m.address}</td>
<td><a href="updateForm?id=${m.id}">[수정]</a>
<c:if test="${m.id ne 'admin'}">
<%--<a href="12_delete?id=${m.id}">[강제탈퇴]</a> --%>
<a href="javascript:del('${m.id}')">[강제탈퇴]</a>
</c:if>
</td></tr></c:forEach>
</table>
</body>
</html>