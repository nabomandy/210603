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
	<h3>����������</h3>

	<div id="page-container">
		<div id="page-container-top">
			<span> ����������ȸ &nbsp;&nbsp;&nbsp; </span> <span> ȣ�ڿ�����ȸ
				&nbsp;&nbsp;&nbsp; </span> <span> ���ſ����̷� </span>
		</div>
		<div id="page-container-middle">
			<div id="page-container-left">
				<div>
					<label>����</label> <label><img
				src="<%=request.getContextPath()%>/memimg/${member.picture}" width="100"
				height="120"></label>
				</div>
				<div>
					<div>
						<label>�ݷ������̸�</label> <label>${member.pet_name}</label>
					</div>
					<div>
						<label>�ݷ���������</label> <label>${member.pet_age}</label>
					</div>
				</div>
			</div>
			<div id="page-container-right">
				<div>
					<label>���̵�</label> <label>${member.id}</label>
				</div>
				<div>
					<label>�̸�</label> <label>${member.name}</label>
				</div>
				<div>
					<label>�������</label> <label>${member.birthday}</label>
				</div>
				<div>
					<label>��ȭ��ȣ</label> <label>${member.tel}</label>
				</div>
				<div>
					<label>�̸���</label> <label>${member.email}</label>
				</div>
				<div>
					<label>�ּ�</label> <label>${member.address}</label>
				</div>
				<div>
					<label>���</label> <label>${member.memlevel}</label>
				</div>

			</div>
		</div>
		<div id="page-container-bottom">
			<span> <a
				href="<%=request.getContextPath()%>/member/updateForm?id=${member.id}">[����]</a></span>
			<c:if test="${id ne 'admin'}">
				<span><a
					href="<%=request.getContextPath()%>/member/deleteForm?id=${member.id}">[Ż��]</a></span>
			</c:if>
		</div>
	</div>






</body>
</html>