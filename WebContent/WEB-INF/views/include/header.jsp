<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
<title></title>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="main">
	<header>
	<section class="content-header" style="float: right;  padding: 0px 15% 0px 0px;">
      <div class="container-fluid">
        <div class="row mb">
            <ol class="breadcrumb float-sm-right" style="line-height: 20px;">
              <li class="breadcrumb-item"><a id="userIdOnText">${loginUser.id} 님 환영합니다. </a><a id="logoutBtn" onmouseup="location.href='<%=request.getContextPath() %>/commons/logout';" > 로그아웃</a></li>
              <li class="breadcrumb-item"><a href="#" class="header-item">Home</a></li>
              <li class="breadcrumb-item"><a href="#" class="header-item">회원관리</a></li>
              <li class="breadcrumb-item"><a href="#" class="header-item">Layout</a></li>
            </ol>
        </div>
      </div><!-- /.container-fluid -->
    </section>
      <div class= "content-headerdown">
	      <div class="navbar1 col-sm-3">
	      	<a href="#" >MyProject</a>
	      </div>
      <div class="navbar2 col-sm-9">
      	<ol>
      		<li><a class="navbar_btn" style="color: #f5f8fa;">일정관리</a></li>
      	
      		<li><a class="navbar_btn" style="color: #f5f8fa;">전자결재</a></li>
      	
      		<li><a class="navbar_btn" style="color: #f5f8fa;">프로젝트</a></li>
      	
      		<li><a class="navbar_btn" style="color: #f5f8fa;">통합게시판</a></li>
      	
      		<li><a class="navbar_btn" style="color: #f5f8fa;">자원요청</a></li>
      	</ol>
      </div>
      </div>
	</header>
	<div class="navbar_DetailContentLine">
		
	</div>
	<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<script>
	function logout_go(id){
		alert(id+" 님 그동안 감사했습니다!. \r\n로그인 화면으로 이동합니다.");
		location.href="login";
		request.getSession().invalidate();

	}
</script>
<style>
	header{
		height: auto;
		border-bottom: 1px solid;
		background: #2981af;
	}
	.btn-block{
		width: 150px;
	}
	.content-headerdown{
		padding: 0px 10% 0px 10%;
		height: 39px;
		clear: both;
	}
	.navbar1{
		float: left;
		font-size: 28px;
	}
	.navbar2{
		height: 40px;
		float: right;
		line-height: 2.7;
	}
	.navbar2>ol>li{
		float: right;
		height: 40px;
	}
	.navbar2>ol>li>a{
		height: 40px;
		
	}
	
	.navbar_btn{
		margin: 0 0 0 33px;
	    font-weight: 600;
	    font-size: 15px;
	    line-height: 37px;
	    
	}
	ol{
		list-style: none;
	}
	 .navbar1>a{
		color: #f5f8fa;
	}
	.header-item{
	color: #7eb7d6;
	font-size: 10px;
	}
	.navbar_DetailContentLine{
	height:20px;
	background: #2d3e50;
	}
	#logoutBtn{
	font-size: 10px;
	}
	#logoutBtn:hover {
	color: white;
	}
	#userIdOnText{
	color: #f3a6a6;
	font-size: 10px;
	}
	.content_wrapper{
    margin-left: 10%;
    margin-right: 10%;
    width: max-content;
	}
	@media(min-width: 768){
	transition: margin-left .3s ease-in-out;
    margin-left: 15%;
}
	}
</style>
