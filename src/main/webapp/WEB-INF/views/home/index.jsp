<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.spring.util.Const"%>
<%@ page import="java.util.*"%>
<%@ page import="com.spring.bo.system.Case"%>
<% 
	List<Case> listCases = (List<Case>)request.getAttribute("cases");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<style>
body {
	background: #fff;
}
</style>
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
		<div>
			<a href="<%=request.getContextPath()%>/home/add" class="btn btn-warning add">案件录入</a>
		</div>
		<div class="txthead">最新导入案件列表</div>
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
							<td><%=listCases.get(i).getCaseName() %></td>
							<td><%=listCases.get(i).getOrgName() %></td>
							<td><%=listCases.get(i).getIndustry() %></td>
							<td><%=listCases.get(i).getCaseTime() %></td>
							<td>
								<a href="<%=request.getContextPath()%>/home/check?id=<%=listCases.get(i).getId() %>" 
									class="btn btn-default">查看</a> 
								<a href="<%=request.getContextPath()%>/home/modify?id=<%=listCases.get(i).getId() %>" 
									class="btn btn-primary modify">
									修改
								</a> 
								<a href="<%=request.getContextPath()%>/home/delete?id=<%=listCases.get(i).getId() %>" 
									class="btn btn-success delete">
									删除
								</a>
							</td>
							<td>
								<a href="<%=request.getContextPath()%>/home/newest?caseId=<%=listCases.get(i).getId() %>"
									target="_blank" class="btn btn-default">
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
		<div id="bgDiv"></div>
	</div>
</body>
</html>