<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.spring.util.Const"%>
<%
	String userName = (String) request
			.getAttribute(Const.HTTP_REQUEST_ATTR_USERNAME);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Push</title>
</head>
<body>
	<br>
	<div class="container">
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<label for="siteName" class="col-sm-2 control-label">网站名称</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="siteName"
						placeholder="">
				</div>
			</div>
			<div class="form-group">
				<label for="title" class="col-sm-2 control-label">文章标题</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="title"
						placeholder="">
				</div>
			</div>
			<div class="form-group">
				<label for="url" class="col-sm-2 control-label">文章链接</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="url"
						placeholder="">
				</div>
			</div>
			<div class="form-group">
				<label for="time" class="col-sm-2 control-label">发布时间</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="time"
						placeholder="">
				</div>
			</div>
			<div class="form-group">
				<label for="time" class="col-sm-2 control-label">标签选择</label>
				<div class="col-sm-4">
					<select class="form-control">
	  					<option>1</option>
	  					<option>2</option>
	  					<option>3</option>
	  					<option>4</option>
	  					<option>5</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="time" class="col-sm-2 control-label">发布时间</label>
				<div class="col-sm-4">
					<textarea class="form-control" rows="5"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">保存</button>
					<button type="" class="btn btn-default">取消</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>