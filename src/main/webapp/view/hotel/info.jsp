<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<%=request.getContextPath()%>/member/main">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <h1>ȣ�ڸ���Ʈ</h1>
    	<c:forEach var="hotel" items="${list}">
<p><a href="info?h_num=${hotel.h_num}">${hotel.h_name}</a></p>     
      </c:forEach>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>${hotel.h_name}</h1>
      <div class="row">
		<div class="col-6 col-12-small">
        <h4>����</h4>
		</div>
		<div class="col-6 col-12-small">
        <h4>����</h4>
		</div>
		</div>
			<ul>
				
				<li>${hotel.h_location}</li>
				<li>${hotel.h_tel}</li>
				<li>${hotel.park==1?'���� ����':'���� �Ұ���'}</li>
				<li>${hotel.reserve==1?'���� ����':'���� �Ұ���'}</li>
				<li>${hotel.wifi==1?'�������ͳ� ��� ����':'�������ͳ� ��� �Ұ���'}</li>
				<li>${hotel.disability}</li>
				<li>${hotel.reference_room}</li>
			</ul>

			<ul class="actions">
			<a href="/reserveHotel/reserve?h_num=${hotel.h_num}"><button type="button" class="btn">�����ϱ�</a></button>
			</ul>
      <hr>
      <h3>�ı�</h3>
      <table class="table table-hover">
    <thead>
      <tr>
        <th>�̸�</th>
        <th>�ٳ�� ��¥</th>
        <th>�ݷ�����/����</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>4/23</td>
        <td>�ܽ���/��ȭ�ҷ�</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>4/25</td>
        <td>�����/����</td>
      </tr>
      <tr>
        <td>July</td>
        <td>4/29</td>
        <td>������/�Ȱ�</td>
      </tr>
    </tbody>
  </table>
      <a href="#"><button type="button" class="btn">�ۼ��ϱ�</a></button>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
