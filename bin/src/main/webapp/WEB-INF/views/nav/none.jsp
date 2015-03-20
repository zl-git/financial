<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.trs.financial.util.Const"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>financial - <decorator:title /></title>
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/base.css"
	rel="stylesheet" type="text/css">
<script
	src="<%=request.getContextPath()%>/assets/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/base.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/verification.js"
	type="text/javascript"></script>
<decorator:head />
</head>
<body>
	<nav id="nav">
		<a href="<%=request.getContextPath()%>/home/index" class="logo">非法集资案件<span>信息管理系统</span></a>
		<ul>
			<li><a
				href="<%=request.getContextPath()%>/home/index">首页</a></li>
			<li><a href="<%=request.getContextPath()%>/home/search">案件搜索</a></li>
			<li><a href="<%=request.getContextPath()%>/home/statistics">案件统计</a></li>
			<security:authorize url="/admin/users">
				<li><a href="<%=request.getContextPath()%>/admin/users">用户管理</a></li>
			</security:authorize>
			<security:authorize url="/admin/labels">
				<li><a href="<%=request.getContextPath()%>/admin/labels/index">指标维护</a></li>
			</security:authorize>
		</ul>
		<div class="top-nav ">
			<div class="nav pull-right top-menu notify-label">
				<div class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
						class="username">${username}</span> <b class="caret"></b>
					</a>
					<div class="dropdown-menu extended logout">
						<div class="log-arrow-up"></div>
						<div class="last-out">
							<a href="<%=request.getContextPath()%>/j_spring_security_logout"><i
								class="icon-key"></i> 退出登录</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<decorator:body />
</body>
</html>