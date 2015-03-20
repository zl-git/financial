<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>check</title>
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
		<ul class="breadcrumb">
			<li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
			<li class="active">查看案情</li>
		</ul>
		<article> <sf:form modelAttribute="case" method="post"
			class="modifyForm">
			
			<div class="content base">
				<header class="title"> 案件基本信息登记表 </header>
				<section>
				<fieldset disabled>
				<table>
					<tr>
						<td><p>集资项目名称</p></td>
						<td colspan="3">
							<div class="form-group">
								<sf:input class="form-control"  path="caseName" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资单位名称（个人姓名）</p></td>
						<td colspan="3">
							<div class="form-group">
								<sf:input class="form-control"  path="orgName" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>所属行业</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="industry" />
							</div>
						</td>
						<td><p>集资方式</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="raiseType" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>业务类别</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="serviceType" />
							</div>
						</td>
						<td><p>类别明细</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="serviceDetial" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资金额（万元）</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="raiseAmount" />
							</div>
						</td>
						<td><p>参与集资人数</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="raiseNum" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>涉及地区</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="involveArea" />
							</div>
						</td>
						<td><p>发案时间</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="caseTime" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>注册地</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="registerArea" />
							</div>
						</td>
						<td><p>案发地</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="caseArea" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>发现渠道</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="channel" />
							</div>
						</td>
						<td><p>案件级别</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="caseGrade" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>负责人</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="chargeName" />
							</div>
						</td>
						<td><p>填报人</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="informant" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>联系电话</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="contactNum" />
							</div>
						</td>
						<td><p>填报日期</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="formDate" />
							</div>
						</td>
					</tr>
				</table>
				</fieldset>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<!-- <input class="btn btn-success" type="submit" value="确定" /> -->
				</div>
				</section>
			</div>
			<div class="content administration hraf">
				<header class="title"> 行政处理情况 </header>
				<section>
				<fieldset disabled>
				<table>
					<tr>
						<td>行政受理</td>
						<td>
							<sf:radiobutton path="adminReceive" name="adminReceive" value="true" />已完成
							<sf:radiobutton path="adminReceive" name="adminReceive" value="false"/>未完成
						</td>
						<td>行政处理</td>
						<td>
							<sf:radiobutton path="adminHandle" name="adminHandle" value="true" />已完成
							<sf:radiobutton path="adminHandle" name="adminHandle" value="false" />未完成
						</td>
					</tr>
					<tr>
						<td>移送公安</td>
						<td>
							<sf:radiobutton path="movePolice" name="movePolice" value="true" />已完成
							<sf:radiobutton path="movePolice" name="movePolice" value="false" />未完成
						</td>
						<td>排除非法集资</td>
						<td>
							<sf:radiobutton path="illegalRaise" name="illegalRaise" value="true" />已完成
							<sf:radiobutton path="illegalRaise" name="illegalRaise" value="false" />未完成
						</td>
					</tr>
				</table>
				</fieldset>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<!-- <input class="btn btn-success" type="submit" value="确定" /> -->
				</div>
				</section>
			</div>
			<div class="content judicial">
				<header class="title"> 司法处置情况 </header>
				<section>
				<fieldset disabled>
				<table>
					<tr>
						<td>公安受理</td>
						<td>
							<sf:radiobutton path="policeReceive" name="policeReceive" value="true" />已完成
							<sf:radiobutton path="policeReceive" name="policeReceive" value="false" />未完成
						</td>
						<td>公安立案</td>
						<td>
							<sf:radiobutton path="policeRegister" name="policeRegister" value="true" />已完成
							<sf:radiobutton path="policeRegister" name="policeRegister" value="false" />未完成
						</td>
					</tr>
					<tr>
						<td>侦查</td>
						<td>
							<sf:radiobutton path="investigation" name="investigation" value="true" />已完成
							<sf:radiobutton path="investigation" name="investigation" value="false" />未完成
						</td>
						<td>起诉</td>
						<td>
							<sf:radiobutton path="prosecute" name="prosecute" value="true" />已完成
							<sf:radiobutton path="prosecute" name="prosecute" value="false" />未完成
						</td>
					</tr>
					<tr>
						<td><p>立案罪名</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="crimeName" />
							</div>
						</td>
						<td><p>审判结果</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="judgeResult" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>认定罪名</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="finalCrimeName" />
							</div>
						</td>
						<td><p>获刑人数</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="crimeNum" />
							</div>
						</td>
					</tr>
				</table>
				</fieldset>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<!-- <input class="btn btn-success" type="submit" value="确定" /> -->
				</div>
				</section>
			</div>
			<div class="content closed">
				<header class="title"> 案件结案情况 </header>
				<section>
				<fieldset disabled>
				<table>
					<tr>
						<td>司法审结</td>
						<td>
							<sf:radiobutton path="judicial" name="judicial" value="true" />已完成
							<sf:radiobutton path="judicial" name="judicial" value="false" />未完成	
						</td>
						<td>集资款清退完毕</td>
						<td>
							<sf:radiobutton path="amountReturn" name="amountReturn" value="true" />已完成
							<sf:radiobutton path="amountReturn" name="amountReturn" value="false" />未完成
						</td>
					</tr>
				</table>
				</fieldset>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<!-- <input class="btn btn-success" type="submit" value="确定" /> -->
				</div>
				</section>
			</div>
			<div class="content aftermath">
				<header class="title"> 善后维稳情况 </header>
				<section>
				<fieldset disabled>
				<table>
					<tr>
						<td><p>返还比例</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="rePercent" />
							</div>
						</td>	
						<td>上访/维稳事件</td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="policeEvent" />
							</div>
						</td>
					</tr>
				</table>
				</fieldset>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<!-- <input class="btn btn-success" type="submit" value="确定" /> -->
				</div>
				</section>
			</div>
			
		</sf:form> </article>
	</div>
</body>
</html>