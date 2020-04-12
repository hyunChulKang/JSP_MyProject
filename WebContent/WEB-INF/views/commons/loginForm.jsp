<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>로그인 화면</title>
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
  	.btn-block{
  		width:98px;
  	}
  	body.login-page{
  	background-image: url('<%=request.getContextPath()%>/resources/images/intro3.jpg');
  	background-position:center;
	background-size:cover;
	background-repeat:no-repeat; 
  	}
  	.login-logo a{
  		color: black;
  	}
  </style>
</head>
<body>

<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href=""><b style="color: ">로그인</b>Test</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">홈페이지를 이용하시려면 <br/>로그인이 필요합니다.</p>

      <form name="frm" action="<%=request.getContextPath() %>/commons/login" method="post">
        <div class="input-group mb-3">
          <input type="text" autofocus name="id" class="form-control" placeholder="Id" value="mimi" }>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-key"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="pwd" class="form-control" placeholder="Password" value="mimi">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <label id="info">
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      </div>
      </div>
      </div>
      <!-- /.social-auth-links -->
	<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<script>
	var message="${msg}";
	if(message!=""){
		alert(message);
	}
</script>
	<% session.removeAttribute("msg"); %>
</body>
</html>