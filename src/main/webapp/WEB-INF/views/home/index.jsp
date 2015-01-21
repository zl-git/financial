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
								<a href="#" class="btn btn-default check">查看</a> 
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
		<div class="modal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<!-- <h4 class="modal-title">Modal title</h4> -->
					</div>
					<div class="modal-body">
						<p>
							<article>
							<div class="base">
								<header class="title"> 案件基本信息登记表 </header>
								<section>
								<table>
									<tr>
										<td><p>集资项目名称</p></td>
										<td colspan="3"></td>
									</tr>
									<tr>
										<td><p>集资单位名称（个人姓名）</p></td>
										<td colspan="3"></td>
									</tr>
									<tr>
										<td><p>所属行业</p></td>
										<td></td>
										<td><p>集资方式</p></td>
										<td></td>
									</tr>
									<tr>
										<td><p>业务类别</p></td>
										<td></td>
										<td><p>类别明细</p></td>
										<td></td>
									</tr>
									<tr>
										<td><p>集资金额</p></td>
										<td></td>
										<td><p>参与集资人数</p></td>
										<td></td>
									</tr>
									<tr>
										<td><p>涉及地区</p></td>
										<td>&nbsp;</td>
										<td><p>发案时间</p></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td><p>注册地</p></td>
										<td>&nbsp;</td>
										<td><p>案发地</p></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td><p>发现渠道</p></td>
										<td></td>
										<td><p>案件级别</p></td>
										<td></td>
									</tr>
									<tr>
										<td><p>负责人</p></td>
										<td></td>
										<td><p>填报人</p></td>
										<td></td>
									</tr>
									<tr>
										<td><p>联系电话</p></td>
										<td></td>
										<td><p>填报日期</p></td>
										<td>&nbsp;</td>
									</tr>
								</table>
								</section>
							</div>
							<div class="administration">
								<header class="title"> 行政处理情况 </header>
								<section>
								<table>
									<tr>
										<td>行政受理</td>
										<td>未完成记录时间</td>
										<td>行政处理</td>
										<td>未完成</td>
									</tr>
									<tr>
										<td>移送公安</td>
										<td>未完成</td>
										<td>排除非法集资</td>
										<td>未完成</td>
									</tr>
								</table>

								</section>
							</div>
							<div class="judicial">
								<header class="title"> 司法处置情况 </header>
								<section>
								<table>
									<tr>
										<td>公安受理</td>
										<td>未完成</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>公安立案</td>
										<td>未完成</td>
										<td>立案罪名</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>侦查</td>
										<td>未完成</td>
										<td>起诉</td>
										<td>未完成</td>
									</tr>
									<tr>
										<td>审判结果</td>
										<td></td>
										<td>认定罪名</td>
										<td></td>
									</tr>
									<tr>
										<td>获刑人数</td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
								</section>
							</div>
							<div class="closed">
								<header class="title"> 案件结案情况 </header>
								<section>
								<table>
									<tr>
										<td>司法审结</td>
										<td>未完成</td>
										<td>集资款清退完毕</td>
										<td>未完成</td>
									</tr>
								</table>
								</section>
							</div>
							<div class="aftermath">
								<header class="title"> 善后维稳情况 </header>
								<section>
								<table>
									<tr>
										<td>返还比例</td>
										<td>未完成</td>
										<td>上访/维稳事件</td>
										<td>时间、地点、人物、描述（可以添加多个）</td>
									</tr>
								</table>
								</section>
							</div>
							</article>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div id="bgDiv"></div>
	</div>
</body>
</html>