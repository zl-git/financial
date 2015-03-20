<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.trs.financial.bo.Case"%>
<%
	List<Case> setCases = (List<Case>)request.getAttribute("cases");
	String keyWords = (String)request.getAttribute("keyWords");
	String from = (String)request.getAttribute("from");
	String to = (String)request.getAttribute("to");
	Integer pageNo = (Integer)request.getAttribute("pageNo");
	Integer pageSize = (Integer)request.getAttribute("pageSize");
	String timeType = (String)request.getAttribute("timeType");
	Integer totalCases = (Integer)request.getAttribute("totalCases");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>search</title>
<link href="<%=request.getContextPath()%>/assets/css/pikaday.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/simplePagination.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
		<ul class="breadcrumb">
			<li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
			<li class="active">案件搜索</li>
		</ul>
		<div class="searchbox content">
			<section class="panel pane1-selected">
			<div class="panel-body">
				<form class="form-horizontal" role="form" method="post">
					<div class="form-group">
						<label for="keyWords" class="col-lg-2 col-sm-2 control-label">关键词</label>
						<div class="col-lg-10">
							<input type="text" class="form-control" id="keyWords"
								name="keyWords" value="<%=keyWords%>"
								placeholder="对集资项目名称检索" >
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword1"
							class="col-lg-2 col-sm-2 control-label">时间</label>
						<div class="col-lg-10">
							<div class="input-group input-large" data-date="2010-01-01"
								data-date-format="yyyy-dd-mm">
								<input type="text" class="form-control dpd1" name="from"
									id="datepicker-from" value="<%=from%>"> <span
									class="input-group-addon">To</span> <input type="text"
									class="form-control dpd2" name="to" id="datepicker-to"
									value="<%=to%>">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<div class="checkbox">
								<label> <input type="radio" name="timeType"
									value="caseTime" <%="caseTime".equals(timeType)?"checked":""%>>
									案件案发时间
								</label> <label> <input type="radio" name="timeType"
									value="formDate" <%="formDate".equals(timeType)?"checked":""%>>
									案件填报时间
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<button type="submit" class="btn btn-primary search">搜索</button>
						</div>
					</div>
				</form>
			</div>
			</section>
			<div class="searched">
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
						<%
							if (setCases != null) {
								int i = 0;
								for (Case caseTemp : setCases) {
						%>
						<tr>
							<td><%=++i%></td>
							<td><%=caseTemp.getCaseName()%></td>
							<td><%=caseTemp.getOrgName()%></td>
							<td><%=caseTemp.getIndustry()%></td>
							<td><%=caseTemp.getCaseTime()%></td>
							<td><a
								href="<%=request.getContextPath()%>/home/check?id=<%=caseTemp.getId()%>"
								>查看</a> <a
								href="<%=request.getContextPath()%>/home/modify?id=<%=caseTemp.getId()%>"
								target="_blank"> 修改 </a> <a
								href="<%=request.getContextPath()%>/home/delete?id=<%=caseTemp.getId()%>"
								> 删除 </a></td>
							<td><a
								href="<%=request.getContextPath()%>/home/newest?caseId=<%=caseTemp.getId()%>"
								target="_blank"> 最新情况 </a></td>
						</tr>
						<%
							}
						}
						%>
					</tbody>
				</table>
				<% if (setCases != null) { %>
					<div id="simplePage"></div>
				<%} %>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/assets/js/pikaday.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.simplePagination.js"
	type="text/javascript"></script>
	<script type="text/javascript">
		var picker = new Pikaday({
			field : document.getElementById('datepicker-from'),
			firstDay : 1,
			minDate : new Date('2010-01-01'),
			maxDate : new Date('2020-12-31'),
			yearRange : [ 2000, 2020 ]
		});
		var picker = new Pikaday({
			field : document.getElementById('datepicker-to'),
			firstDay : 1,
			minDate : new Date('2010-01-01'),
			maxDate : new Date('2020-12-31'),
			yearRange : [ 2000, 2020 ]
		});
       $(function() {
    	    var keys = "<%=keyWords%>";
    	    var from = "<%=from%>";
    	    var to = "<%=to%>";
    	    var timeType = "<%=timeType%>";
    	    var pageNo = parseInt(<%=pageNo%>);
    	    var pageSize = parseInt(<%=pageSize%>);
    	    var totalCases = parseInt(<%=totalCases%>);
		    $("#simplePage").pagination({
		        items: <%=totalCases%>,
		        itemsOnPage: <%=pageSize%>,
		        cssStyle: 'compact-theme',
		        currentPage:<%=pageNo%>+1,
		        prevText: '<',
		        nextText: '>',
		        onPageClick: function(pageNumber, event) {
		        	location = "<%=request.getContextPath()%>/home/search"
		        		+ "?keyWords="+keys
		        		+ "&from="+from
		        		+ "&to="+to
		        		+ "&timeType="+timeType
		        		+ "&pageNo="+(pageNumber-1)
		        		+ "&pageSize="+pageSize
		        		+ "&totalCases="+totalCases;
		        }
		    })
		});
	</script>
</body>
</html>