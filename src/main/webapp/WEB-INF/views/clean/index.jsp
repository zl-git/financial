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
<title>Index</title>
<link href="<%=request.getContextPath()%>/assets/css/jquery-ui.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<form class="form-inline" role="form" action="<%=request.getContextPath()%>/clean/search">
			<input id="datepicker_start" class="form-control" type="text" 
				placeholder="starting time" name="dateStart">
			--
			<input id="datepicker_end" class="form-control" type="text" 
				placeholder="end time" name="dateEnd">
			<button type="submit" class="btn btn-default">搜索</button>
		</form>
		<br/>
		<a href="#" class="btn btn-default" role="button">全选</a>
		<a href="#" class="btn btn-default" role="button">清空</a>
		<a href="#" class="btn btn-default" role="button">保存</a>
		<br/><br/>
		<div class="table-responsive">
  			<table class="table table-condensed">
  				<thead>
  					<tr>
  						<th>#</th>
  						<th>序号</th>
  						<th>标题</th>
  						<th>摘要</th>
  						<th>标签</th>
  						<th>保存</th>
  					</tr>
  				</thead>
  				<tbody>
  					<tr>
  						<td><input type="checkbox"></td>
  						<td>1</td>
  						<td>title</td>
  						<td>abstract</td>
  						<td>tag</td>
  						<td>save</td>
  					</tr>
  					<tr>
  						<td><input type="checkbox"></td>
  						<td>2</td>
  						<td>title</td>
  						<td>abstract</td>
  						<td>tag</td>
  						<td>save</td>
  					</tr>
  				</tbody>
  			</table>
  		</div>
	</div>
	<script src="<%=request.getContextPath()%>/assets/js/jquery-ui.js"></script>
	<script type="text/javascript">
		$("#datepicker_start").datepicker({
			inline : true
		});
		$("#datepicker_end").datepicker({
			inline : true
		});
	</script>
</body>
</html>