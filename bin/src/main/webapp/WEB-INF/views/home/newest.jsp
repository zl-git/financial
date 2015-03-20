<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.trs.financial.bo.CaseCondition"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%
	List<CaseCondition> conditionList = (List<CaseCondition>) request
			.getAttribute("conditionList");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>newest</title>
<link href="<%=request.getContextPath()%>/assets/css/pikaday.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
	    <div class="alert alert-dismissable alert-success">
            <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
        </div>
		<ul class="breadcrumb">
			<li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
			<li class="active">案情最新情况</li>
		</ul>
		<div class="row content">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading">
						案件最新情况 <span class="tools pull-right"> <a
							class="icon-chevron-down" href="javascript:;"></a> <a
							class="icon-remove" href="javascript:;"></a>
						</span>
					</header>
					<div class="panel-body">
						<div class="timeline-messages">
							<%
								if (conditionList != null && conditionList.size() > 0) {
									for (int i = 0; i < conditionList.size(); i++) {
										CaseCondition caseCondititon = conditionList.get(i);
							%>
							<div class="msg-time-chat">
								<a href="<%=request.getContextPath()%>/home/conditionDetail?id=<%=caseCondititon.getId()%>" 
								   class="message-img">
									<img class="avatar"
										 src="<%=request.getContextPath()%>/assets/img/fl.jpg" 
										 alt="">
								</a>
								<div class="message-body msg-in">
									<span class="arrow"></span>
									<div class="text">
										<p class="attribution">
											<a href="<%=request.getContextPath()%>/home/conditionDetail?id=<%=caseCondititon.getId()%>">
												<%=caseCondititon.getFormDate()%>
												&nbsp;&nbsp;
												<%=caseCondititon.getInformant()%>
												&nbsp;&nbsp;
												<%=caseCondititon.getPhoneNum()%>
											</a>
										</p>
										案情：&nbsp;<%=caseCondititon.getCaseCondition()%>
									</div>
								</div>
							</div>
							<%
								}
								}
							%>
						</div>
						<div class="chat-form">
							<sf:form modelAttribute="caseCondition" method="post"
								class="modifyForm">
								<div class="input-cont ">
									<table>
										<tr>
											<td width="23%"><p>案情</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control caseCondition" 
														path="caseCondition" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>涉案人员</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control crimePopele" 
														path="crimePopele"/>
												</div>
											</td>
										</tr>
										<tr>
											<td><p>起诉和审判工作进展</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control caseProgress" 
														path="caseProgress" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>资产追缴</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control moneyRecovered" 
														path="moneyRecovered" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>善后清退</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control moneyReturn"  
														path="moneyReturn" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>涉访维稳</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control involvSafety"  
														path="involvSafety" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>当前存在的主要问题</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control problem"  
														path="problem" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>与前期处置工作有何明显进展</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control workProgress"  
														path="workProgress" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>填报人</p></td>
											<td>
												<div class="form-group">
													<sf:input class="form-control informant"  
														path="informant" />
												</div>
											</td>
											<td><p>电话</p></td>
											<td>
												<div class="form-group">
													<sf:input class="form-control phoneNum" 
														path="phoneNum" />
												</div>
											</td>
											<td><p>填报日期</p></td>
											<td>
												<div class="form-group">
													<sf:input class="form-control formDate" 
														path="formDate" id="newest-time"/>
												</div>
											</td>
										</tr>
									</table>
								</div>
								<div class="form-group">
									<div class="pull-right chat-features">
										<input class="btn btn-success button-success" type="submit" value="添加" />
									</div>
								</div>
							</sf:form>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
   <script src="<%=request.getContextPath()%>/assets/js/pikaday.min.js"
	type="text/javascript"></script>
	<script type="text/javascript">
     	var picker = new Pikaday(
		{
			field: document.getElementById('newest-time'),
			firstDay: 1,
			minDate: new Date('2010-01-01'),
			maxDate: new Date('2020-12-31'),
			yearRange: [2000,2020]
		});
     	
	</script>
</body>
</html>