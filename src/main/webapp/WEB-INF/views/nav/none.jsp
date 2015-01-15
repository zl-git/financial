<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.spring.bo.system.IndexPage"%>
<%@ page import="com.spring.util.Const"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%
	List<IndexPage> navList = (List<IndexPage>) request
			.getAttribute(Const.HTTP_REQUEST_ATTR_NAVIGATION);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>wlmq - <decorator:title /></title>
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/css/starter-template.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/css/sticky-footer-navbar.css"
	rel="stylesheet">
<script
	src="<%=request.getContextPath()%>/assets/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<decorator:head />
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">DataCleaning</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<%
					if (navList != null) {
						for (int i = 0; i < navList.size(); i++) {
				%>
				<li><a
					href="<%=request.getContextPath()
							+ navList.get(i).getUrl()%>"><%=navList.get(i).getName()%></a></li>
				<%
					}
					}
				%>
				<!--
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>-->
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!--<li><a href="../navbar/">Default</a></li>
            <li class="active"><a href="./">Static top</a></li>
            <li><a href="../navbar-fixed-top/">Fixed top</a></li>-->
				<li><a
					href="<%=request.getContextPath()%>/j_spring_security_logout"><span
						class="glyphicon glyphicon-user"></span></a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>
	<decorator:body />
	<div class="footer">
		<div class="container">
			<p style="text-align: center">Copyright(c) 2011-2014,TRS. All
				rights reserved.</p>
		</div>
	</div>
</body>
</html>