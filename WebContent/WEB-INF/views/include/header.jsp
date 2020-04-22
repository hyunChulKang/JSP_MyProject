<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
<title><decorator:title default="MyProject" /></title>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	 <link href="<%=request.getContextPath() %>/resources/css/chkbox.css" rel="stylesheet" type="text/css">
	 	 <link href="<%=request.getContextPath() %>/resources/css/style.css" rel="stylesheet" type="text/css">
	<!-- jQuery -->
	<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
	
<decorator:head />
</head>
  
<body class="main">
	<header>
	<div class="col-sm-4" style="height:30px; float: left;">
	</div>
	<section class="content-header" style="float: right;  padding: 0px 15% 0px 0px;">
      <div class="container-fluid">
        <div class="row mb">
            <ol class="breadcrumb float-sm-right" style="line-height: 20px;">
              <li class="breadcrumb-item "><a id="userIdOnText">${loginUser.id} 님 환영합니다. </a></li>
              <li class="breadcrumb-item "><a id="logoutBtn" onmouseup="location.href='<%=request.getContextPath() %>/commons/logout';" > 로그아웃</a></li>
              <li class="breadcrumb-item clears">
              <a href="<%=request.getContextPath() %>/member/list.do" class="header-item">회원관리</a></li>
              <li class="breadcrumb-item clears">
              <a href="<%=request.getContextPath() %>/board/list.do" class="header-item">자유게시판</a></li>
              <li class="breadcrumb-item clears"><a href="#" class="header-item">Layout</a></li>
            </ol>
        </div>
      </div><!-- /.container-fluid -->
    </section>
      <nav class="clearfix">
   	      <a id="pull" href="#">Menu</a>
   	      <ul class="clearfix">
   	         <li><a href="#">일정관리</a></li>
   	         <li><a href="#">전자결재</a></li>
   	         <li><a href="#">프로젝트</a></li>
   	         <li><a href="#">통합게시판</a></li>
   	         <li><a href="#">자원요청</a></li>
   	         <li><a href="#">문의</a></li>
   	      </ul>
   	  </nav>
	</header>
<div class="center" style="">
<input type="checkbox" id="menuicons">
<label for="menuicons">
	<span></span>
	<span></span>
	<span></span>
</label>
<div class="sidebar" style="background: #000000">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
      <div class="blackArea"></div>
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
         </ul>
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
         </ul>
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
         </ul>
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
         </ul>
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
         </ul>
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
         </ul>
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
         </ul>
      </nav>
      <!-- /.sidebar-menu -->
	</div>
</div>

<script>
	function logout_go(id){
		alert(id+" 님 그동안 감사했습니다!. \r\n로그인 화면으로 이동합니다.");
		location.href="login";
		request.getSession().invalidate();

	}
</script>
<style>
	header{
		float: left;
		width: 100%;
		background: #455868;
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
		width: 134px;
	}
	.navbar2{
		height: 40px;
		float: right;
		line-height: 2.7;
		width: auto;
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
	color: #7eb7d6;
	}
	#logoutBtn:hover {
	color: red;
	cursor: pointer;
	}
	#userIdOnText{
	color: #f3a6a6;
	font-size: 10px;
	}
	.content_wrapper{
    margin-left: 10%;
    margin-right: 15%;
    float: left;
    width: 76%;
	}
	@media(min-width: 768){
	transition: margin-left .3s ease-in-out;
    margin-left: 15%;
}
	}
</style>
 <script>
   	      $(function(){
   	      	var pull=$('#pull');
   	      	    menu=$('nav ul');
   	      	    menuHeight=menu.height();   	      
   	      $(pull).on('click', function(e){
   	      	e.preventDefault();
   	      	menu.slideToggle();   	      	
   	      });
   	      $(window).resize(function(){
   	      	var w=$(window).width();
   	      	if(w>600 && menu.is(':hidden'))
   	      		{menu.removeAttr('style');}
   	      });
   	      
   	  });
   	   </script>
