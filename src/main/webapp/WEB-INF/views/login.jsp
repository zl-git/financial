<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>

<!-- Bootstrap -->
<link href="<%=request.getContextPath() %>/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/starter-template.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/signin.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<form class="form-signin" role="form" action="j_spring_security_check" method="post">
			<h1></h1>
			<input type="text" name="j_username" class="form-control" placeholder="Username"
				required autofocus> 
			<input type="password" name="j_password" class="form-control" placeholder="Password" required>

			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>

			<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
		</form>
	</div>
	<script src="<%=request.getContextPath() %>/assets/js/jquery-1.11.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
</body>
</html>