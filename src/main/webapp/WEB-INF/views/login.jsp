<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Login</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/login.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">Login</h1>
			<form
				class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30"
				role="form" action="j_spring_security_check" method="post">
				<div class="form-group">
					<div class="col-xs-12">
						<div class="control-wrapper">
							<label for="username" class="control-label fa-label"> <i
								class="fa fa-user fa-medium"></i>
							</label> <input type="text" class="form-control" id="username"
								placeholder="Username" name="j_username">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<label for="password" class="control-label fa-label"><i
								class="fa fa-lock fa-medium"></i></label> <input type="password"
								class="form-control" id="password" placeholder="Password"
								name="j_password">
						</div>
					</div>
				</div>
				<!--  -->
				<div class="form-group">
					<div class="col-md-12">
						<div class="checkbox control-wrapper">
							<label> <input type="checkbox"> Remember me
							</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<input type="submit" value="Log in" class="btn btn-info">
							<!-- 
		          		<a href="forgot-password.html" class="text-right pull-right">Forgot password?</a>
		          		 -->
						</div>
					</div>
				</div>
				<hr>
			</form>
		</div>
	</div>
</body>
</html>