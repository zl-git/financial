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
								<sf:input class="form-control" id="focusedInput" path="caseName" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资单位名称（个人姓名）</p></td>
						<td colspan="3">
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="orgName" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>所属行业</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control" id="select" path="industry">
									<sf:option value="大类">大类</sf:option>
									<sf:option value="小类">小类</sf:option>
									<sf:option value="其他">其他</sf:option>
								</sf:select>
							</div>
						</td>
						<td><p>集资方式</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control" id="select" path="raiseType">
									<sf:option value="投资理财">投资理财</sf:option>
									<sf:option value="售后包租">售后包租</sf:option>
									<sf:option value="加盟返利">加盟返利</sf:option>
									<sf:option value="矿产资源开发投资">矿产资源开发投资</sf:option>
									<sf:option value="其他">其他</sf:option>
								</sf:select>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>业务类别</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control" id="select" path="serviceType">
									<sf:option value="债权类">债权类</sf:option>
									<sf:option value="股权类">股权类</sf:option>
									<sf:option value="商品营销类">商品营销类</sf:option>
									<sf:option value="生产经营类">生产经营类</sf:option>
									<sf:option value="其他">其他</sf:option>
								</sf:select>
							</div>
						</td>
						<td><p>类别明细</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control" id="select" path="serviceDetial">
									<sf:option value="债权类">债权类</sf:option>
									<sf:option value="股权类">股权类</sf:option>
									<sf:option value="商品营销类">商品营销类</sf:option>
									<sf:option value="生产经营类">生产经营类</sf:option>
									<sf:option value="其他">其他</sf:option>
								</sf:select>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资金额</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="raiseAmount" />
							</div>
						</td>
						<td><p>参与集资人数</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="raiseNum" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>涉及地区</p></td>
						<td>&nbsp;</td>
						<td><p>发案时间</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="caseTime" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>注册地</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="registerArea" />
							</div>
						</td>
						<td><p>案发地</p></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><p>发现渠道</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control" id="select" path="channel">
									<sf:option value="自查发现">自查发现</sf:option>
									<sf:option value="公安机关发现">公安机关发现</sf:option>
									<sf:option value="举报发现">举报发现</sf:option>
									<sf:option value="其他">其他</sf:option>
								</sf:select>
							</div>
						</td>
						<td><p>案件级别</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control" id="select" path="caseGrade">
									<sf:option value="督办案件">督办案件</sf:option>
									<sf:option value="本市案件">本市案件</sf:option>
									<sf:option value="配合其他省（市）处置案件">配合其他省（市）处置案件</sf:option>
									<sf:option value="其他">其他</sf:option>
								</sf:select>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>负责人</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="chargeName" />
							</div>
						</td>
						<td><p>填报人</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="informant" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>联系电话</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="contactNum" />
							</div>
						</td>
						<td><p>填报日期</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="formDate" />
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
								<sf:input class="form-control" id="focusedInput" path="crimeName" />
							</div>
						</td>
						<td><p>审判结果</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="judgeResult" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>认定罪名</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="finalCrimeName" />
							</div>
						</td>
						<td><p>获刑人数</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="crimeNum" />
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
								<sf:input class="form-control" id="focusedInput" path="rePercent" />
							</div>
						</td>	
						<td>上访/维稳事件</td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" id="focusedInput" path="policeEvent" />
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