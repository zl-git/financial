<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.spring.util.Const"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<style>
body {
	background: #fff;
}
</style>
<decorator:head />
</head>
<body>
	<nav id="nav">
	<ul>
		<li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
		<li><a href="<%=request.getContextPath()%>/home/search">案件搜索</a></li>
		<li><a href="<%=request.getContextPath()%>/home/statistics">案件统计</a></li>
		<security:authorize url="/admin/users">
			<li><a href="<%=request.getContextPath()%>/admin/users">用户管理</a></li>
		</security:authorize>
		<security:authorize url="/admin/labels">
			<li><a href="<%=request.getContextPath()%>/admin/labels">标签管理</a></li>
		</security:authorize>
		<li><a
			href="<%=request.getContextPath()%>/j_spring_security_logout"> 退出
		</a></li>
	</ul>
	</ul>
	</nav>
	<decorator:body />
    <script
		src="<%=request.getContextPath()%>/assets/js/jquery-1.11.1.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/js/base.js"
		type="text/javascript"></script>
</body>
</html>