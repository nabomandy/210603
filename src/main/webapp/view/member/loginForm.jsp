<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
:root{


}
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Alata', sans-serif;
}

.page-container{
    width: 100vw;
    height: 100vh;
    background: #eff0f2;
    display: flex;
    justify-content: center;
    align-items: center;
}
.shadow{
    -webkit-box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
    -moz-box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
    box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
}
.shadow-light{
    -webkit-box-shadow: 45px 45px 104px -33px rgba(38,38,38,0.92);
    -moz-box-shadow: 45px 45px 104px -33px rgba(38,38,38,0.92);
    box-shadow: 45px 45px 104px -33px rgba(38,38,38,0.92);

}

.login-form-container{
 
    background:white;
    width:860px;
    height: 540px;
    display: flex;
    flex-direction: row;
    box-shadow: 10px black;
    border-radius: 10px;

}

.picture {
	margin-top:50px;
	margin-left:30px;
	width : 400px; height: 450px;
}

*{
  margin: 0px;
  padding: 0px;
  text-decoration: none;
  font-family:sans-serif;

}

body {
  background-image: #34495e;
}

.loginForm {
  position:absolute;
  width:400px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
  border: 1px solid red;
	padding-top:30px;
}

.loginForm h2{
  text-align: center;
  margin: 30px;
}

.idForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.passForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.id {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.pw {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.btn {
  position:relative;
  left:40%;
  transform: translateX(-50%);
  margin-bottom: 40px;
  width:80%;
  height:40px;
  background: linear-gradient(125deg,#FFC0C4,#FF5C62,#FF0000);
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
}

.btn:hover {
  background-position: right;
}

.bottomText {
  text-align: center;
}
</style>
<meta charset="EUC-KR">
<title>로그인 화면</title>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css"> --%>
</head>
<body>
<%-- 
	<div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
            <img alt="left search" src="<%=request.getContextPath()%>/images/puppy.png" class="picture">                
           </div>
		</div>
	</div>
	
	 --%>
	<!-- Login Content -->
	<form action="login" method="post" class="loginForm">
	<h3>로그인</h3>
		<div class="idForm">
			<input type="text" class="id" name="id" placeholder="ID" required autofocus> 
		</div>
		<div class="passForm">
			<input type="password" class="pw" size="20" name="pass" placeholder="Password" required>
		</div>
		<button type="submit" class="btn" value="로그인">로그인</button>
		<div class="bottomText">
		아이디가 없으신가요? <a href ="joinForm">회원가입</a>
		</div>
	</form>
	</div>
</body>
</html>