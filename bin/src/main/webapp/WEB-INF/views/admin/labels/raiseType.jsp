<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>target</title>
<style type="text/css">
.labelpading {
	padding: 15px 25px
}

.labelfont {
	font-weight: bold
}
</style>
<script type="text/javascript">
	function del() {
		if (!confirm("确定删除？")) {
			return false;
		}
	}
</script>
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
	<div class="alert alert-dismissable alert-success">
            <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
        </div>
		<ul class="breadcrumb">
			<li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
			<li class="active">指标维护</li>
		</ul>
		<div class="content">
			<div class="panel-body">
				<section class="col-sm-3">
					<div class="list-group">
						<a href="<%=request.getContextPath()%>/admin/labels/index"
							class="list-group-item labelpading"> <span
							class="labelfont">所属行业指标维护</span></a> <a
							href="<%=request.getContextPath()%>/admin/labels/raiseType"
							class="list-group-item labelpading active"> <span class="labelfont">集资方式指标维护</span></a>
						<a href="<%=request.getContextPath()%>/admin/labels/caseGrade"
							class="list-group-item labelpading"> <span
							class="labelfont">案件级别指标维护</span></a> 
						<a href="<%=request.getContextPath()%>/admin/labels/serviceTypes"
							class="list-group-item labelpading"> <span class="labelfont">业务类别指标维护</span></a>
						<a href="<%=request.getContextPath()%>/admin/labels/channel"
						    class="list-group-item labelpading"> <span
							class="labelfont">发现渠道指标维护</span></a>
					</div>
				</section>
				<section class="col-sm-9">
					<form class="form-horizontal" role="form"
						action="<%=request.getContextPath()%>/admin/raiseType/add"
						method="post">
						<div class="form-group">
							<div class="col-lg-10">
								<input type="text" class="form-control targetinput"
									name="raiseName">
								<button type="submit" class="btn btn-primary">添加</button>
							</div>
						</div>
						<script type="text/javascript">
							$('.btn-primary').click(
									function() {
										if ($('.form-control').val() == "") {
											$('.alert-success').css("display",
													"block");
											$('.alert-success').text(
													"集资方式指标不能为空");
											setTimeout("clean()", 3000);
											return false;
										}
									})
						</script>
					</form>
					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th>序号</th>
								<th>名称</th>
								<th>操作</th>
							</tr>
						</thead>
						<c:forEach items="${raiseTypes}" var="raiseType" varStatus="stat">
							<tr>
								<td>${stat.count}</td>
								<td>${raiseType.raiseName}</td>
								<td><a
									href="<%=request.getContextPath()%>/admin/raiseType/del?raiseTypeId=${raiseType.raiseTypeId}"
								    onclick="return del()">删除</a></td>
							</tr>
						</c:forEach>
						<tbody>
						</tbody>
					</table>
				</section>
			</div>
		</div>
	</div>
</body>
</html>