<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.spring.bo.system.CaseCondition"%>
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
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
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
								<a href="#" class="message-img"><img class="avatar"
									src="assets/img/fl.jpg" alt=""></a>
								<div class="message-body msg-in">
									<span class="arrow"></span>
									<div class="text">
										<p class="attribution">
											<a href="#"><%=caseCondititon.getFormDate()%></a>
										</p>
										案情：
										<p><%=caseCondititon.getCaseCondition()%></p>
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
													<sf:input class="form-control" id="focusedInput"
														path="caseCondition" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>涉案人员</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="crimePopele"/>
												</div>
											</td>
										</tr>
										<tr>
											<td><p>起诉和审判工作进展</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="caseProgress" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>资产追缴</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="moneyRecovered" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>善后清退</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="moneyReturn" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>涉访维稳</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="involvSafety" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>当前存在的主要问题</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="problem" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>与前期处置工作有何明显进展</p></td>
											<td colspan="5">
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="workProgress" />
												</div>
											</td>
										</tr>
										<tr>
											<td><p>填报人</p></td>
											<td>
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="informant" />
												</div>
											</td>
											<td><p>电话</p></td>
											<td>
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="phoneNum" />
												</div>
											</td>
											<td><p>填报日期</p></td>
											<td>
												<div class="form-group">
													<sf:input class="form-control" id="focusedInput" 
														path="formDate" />
												</div>
											</td>
										</tr>
									</table>
								</div>
								<div class="form-group">
									<div class="pull-right chat-features">
										<!-- <a href="javascript:;"> <i class="icon-camera"></i>
										</a> <a href="javascript:;"> <i class="icon-link"></i>
										</a> <a class="btn btn-success" href="javascript:;">保存</a> -->
										<input class="btn btn-success" type="submit" value="确定" />
									</div>
								</div>
							</sf:form>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</body>
</html>