<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Alata', sans-serif;
}

#page-container {
	width: 50vw;
	height: 80vh;
	background: #FFEFF7;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 20px;
	position: related;
	margin: auto;
	border: solid black;
	margin-top: 30px;
}

#page-container-top {
	width: 50%;
	height: 5%;
	background: #FFFFFF;
	position: fixed;
	top: 1px;
	border: solid black;
}

#page-container-middle {
	width: 90%;
	height: 90%;
	background: #FFFFFF;
	position: related;
	margin: auto;
	border: solid black;
}

#page-container-left {
	width: 32%;
	height: 95%;
	background: #FFFFFF;
	position: related;
	margin: auto;
	float: left;
	border: solid black;
}

#page-container-right {
	width: 63%;
	height: 95%;
	background: #FFFFFF;
	position: related;
	margin: auto;
	float: right;
	border: solid black;
}

#page-container-bottom {
	width: 50%;
	height: 5%;
	background: #FFFFFF;
	position: fixed;
	bottom: 1px;
	border: solid black;
}
</style>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css"> --%>


</head>

<body>

	<!-- Mypage Content -->
	<h3>마이페이지</h3>

	<div id="page-container">
		<div id="page-container-top">
			<span> 병원예약조회 &nbsp;&nbsp;&nbsp; </span> <span> 호텔예약조회
				&nbsp;&nbsp;&nbsp; </span> <span> 과거예약이력 </span>
		</div>
		<div id="page-container-middle">
			<div id="page-container-left">
				<div>
					<label>사진</label> <label><img
				src="<%=request.getContextPath()%>/memimg/${member.picture}" width="100"
				height="120"></label>
				</div>
				<div>
					<div>
						<label>반려동물이름</label> <label>${member.pet_name}</label>
					</div>
					<div>
						<label>반려동물나이</label> <label>${member.pet_age}</label>
					</div>
				</div>
			</div>
			<div id="page-container-right">
				<div>
					<label>아이디</label> <label>${member.id}</label>
				</div>
				<div>
					<label>이름</label> <label>${member.name}</label>
				</div>
				<div>
					<label>생년월일</label> <label>${member.birthday}</label>
				</div>
				<div>
					<label>전화번호</label> <label>${member.tel}</label>
				</div>
				<div>
					<label>이메일</label> <label>${member.email}</label>
				</div>
				<div>
					<label>주소</label> <label>${member.address}</label>
				</div>
				<div>
					<label>등급</label> <label>${member.memlevel}</label>
				</div>

			</div>
		</div>
		<div id="page-container-bottom">
			<span> <a
				href="<%=request.getContextPath()%>/member/updateForm?id=${member.id}">[수정]</a></span>
			<c:if test="${id ne 'admin'}">
				<span><a
					href="<%=request.getContextPath()%>/member/deleteForm?id=${member.id}">[탈퇴]</a></span>
			</c:if>
		</div>
	</div>






</body>
</html>