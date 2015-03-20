<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.trs.financial.util.Const"%>
<%@ page import="java.util.*"%>
<%@ page import="com.trs.financial.bo.Case"%>
<% 
	List<Case> listCases = (List<Case>)request.getAttribute("cases");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
	    <ul class="breadcrumb">
				<li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
				<li class="active">首页</li>
		</ul>
	    <div class="content">
	        <section class="content-main">
				
				<div class="txthead">
					最新导入案件列表
					<a href="<%=request.getContextPath()%>/home/add" class="btn btn-primary add">案件录入</a>
				</div>
				<div class="main">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th>序号</th>
								<th>集资项目名称</th>
								<th>集资单位名称（个人姓名）</th>
								<th>所属行业</th>
								<th>发案时间</th>
								<th>操作</th>
								<th>最新情况</th>
							</tr>
						</thead>
						<tbody>
						<% if (listCases != null) {
							for (int i = 0; i < listCases.size(); i++) {
							
						%>
								<tr>
									<td><%=i+1 %></td>
									<td><div class="case"><%=listCases.get(i).getCaseName() %></div></td>
									<td><div class="case"><%=listCases.get(i).getOrgName() %></div></td>
									<td><%=listCases.get(i).getIndustry() %></td>
									<td><%=listCases.get(i).getCaseTime() %></td>
									<td>
										<a href="<%=request.getContextPath()%>/home/check?id=<%=listCases.get(i).getId() %>" 
											>查看</a> 
										<a href="<%=request.getContextPath()%>/home/modify?id=<%=listCases.get(i).getId() %>" 
											class="modify">
											修改
										</a> 
										<a href="<%=request.getContextPath()%>/home/delete?id=<%=listCases.get(i).getId() %>" 
											class="delete">
											删除
										</a>
									</td>
									<td>
										<a href="<%=request.getContextPath()%>/home/newest?caseId=<%=listCases.get(i).getId() %>"
											target="_blank" class="">
											最新情况
										</a>
									</td>
								</tr>
						<%		
							}
						}
						%> 
						</tbody>
					</table>
				</div>
			</section> 
	    </div>	
	</div>
	<script>
	    $(function(){
	    	$('.delete').click(function(){
	    		alert("你确定删除这条数据？");
	    	});
	    });
	</script>
</body>
</html>