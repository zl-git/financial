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
							class="list-group-item labelpading"> <span class="labelfont">所属行业指标维护</span></a>
						<a href="<%=request.getContextPath()%>/admin/labels/raiseType"
							class="list-group-item labelpading"> <span class="labelfont">集资方式指标维护</span></a>
						<a href="<%=request.getContextPath()%>/admin/labels/caseGrade"
							class="list-group-item labelpading"> <span class="labelfont">案件级别指标维护</span></a>
						<a href="<%=request.getContextPath()%>/admin/labels/serviceTypes"
							class="list-group-item labelpading active"> <span
							class="labelfont">业务类别指标维护</span></a>
						<a href="<%=request.getContextPath()%>/admin/labels/channel"
							class="list-group-item labelpading"> <span class="labelfont">发现渠道指标维护</span></a>
					</div>
				</section>
				<section class="col-sm-9">
					<form class="form-horizontal" role="form"
						action="<%=request.getContextPath()%>/admin/serviceType/add"
						method="post">
						<div class="form-group">
							<div class="col-lg-10">
								<input type="text" class="form-control targetinput"
									name="serviceTypeName">
								<button type="submit" class="btn btn-primary" id="add1">添加</button>
							</div>
						</div>
						<script type="text/javascript">
							$('#add1').click(
									function() {
										if ($('.form-control').val() == "") {
											$('.alert-success').css("display",
													"block");
											$('.alert-success').text(
													"业务类别指标不能为空");
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
						<tbody>
							<c:forEach items="${parentServiceTypes}" var="serviceType"
								varStatus="stat">
								<tr>
									<td>${stat.count}</td>
									<td>${serviceType.serviceName}</td>
									<td><a
										href="<%=request.getContextPath()%>/admin/serviceType/del?serviceTypeId=${serviceType.serviceTypeId}"
										onclick="return del()">删除</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr/>
					<form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/admin/serviceType/add" method="post">
                         <div class="form-group">
                              <div class="col-lg-4">                                   
                                  <select class="form-control targetselect" id="serviceType" name="serviceTypeId" onchange="gradeChange()">
                                  <c:forEach items="${parentServiceTypes}" var="serviceType">
                                    <option value="${serviceType.serviceTypeId}">${serviceType.serviceName}</option>
                                    </c:forEach>
                                  </select> 
                                  <script type="text/javascript">
								   function gradeChange(){
									 var grade = $("#serviceType option:selected").val();
									 if (grade == "1") {
										 $('.form-control1').attr("disabled", "true");
										 $('#add2').attr("disabled", "true");
									 } else {
										 $('.form-control1').removeAttr("disabled");
										 $('#add2').removeAttr("disabled");
									 }
									  $.ajax({
									    	type : "POST", 
									        url: "<%=request.getContextPath()%>/admin/serviceType/ajax/list",
									      	data : "serviceTypeId="+grade,
									      	dataType : "text",
									       	 success: function(data){
									       		var jsonParseJson=JSON.parse(data);
									       		$("#content").children().remove();
									       	 	for(var i =0;i<jsonParseJson.length;i++){
									       	 	var serviceTypeId = jsonParseJson[i].serviceTypeId;
									       		var a = "<%=request.getContextPath()%>/admin/serviceType/del?serviceTypeId="+serviceTypeId;
									       	    $("#content").append("<tr>"+"<td>"+(i+1)+"</td>"+"<td>"+jsonParseJson[i].serviceName+
									       	    	"<td><a href="+a+" onclick='return del()'>删除</a></td>"
									       	    	+"</td>"+"</tr>");
									       		} 
									       		
											} 
									   }); 
								  } 
								</script>                                                              
                              </div>
                              <div class="col-lg-4">
                                  <input type="text" class="form-control form-control1 targetinput" 
                                  	name="serviceTypeName">  
                                  <button type="submit" class="btn btn-primary" id="add2">添加</button>                            
                              </div>
                          </div>
                          <script type="text/javascript">
							$('#add2').click(
									function() {
										if ($('.form-control1').val() == "") {
											$('.alert-success').css("display",
													"block");
											$('.alert-success').text(
													"业务类别指标不能为空");
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
                              <th>业务明细</th>
                              <th>操作</th> 
                            </tr>
                          </thead>
                          <tbody id ="content">
                          <c:forEach items="${serviceTypes}" var="serviceType" varStatus="stat">
                            <tr>
                              <td>${stat.count}</td>
                              <td>${serviceType.serviceName}</td>
                              <td>
                                  <a href="<%=request.getContextPath()%>/admin/serviceType/del?serviceTypeId=${serviceType.serviceTypeId}" 
                                  	onclick="return del()">删除</a>
                              </td>
                            </tr>
                             </c:forEach>
                          </tbody>
                        </table>
				</section>
			</div>
		</div>
	</div>
</body>
</html>