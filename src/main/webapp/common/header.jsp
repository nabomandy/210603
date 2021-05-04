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