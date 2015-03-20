<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modify</title>
<link href="<%=request.getContextPath()%>/assets/css/pikaday.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/jquery.chineserp.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
	    <div class="alert alert-dismissable alert-success">
            <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
        </div>
		<ul class="breadcrumb">
			<li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
			<li class="active">修改案情</li>
		</ul>
		<article> <sf:form modelAttribute="case" method="post"
			class="modifyForm">
			<div class="content base">
				<header class="title"> 案件基本信息登记表 </header>
				<section>
				<table>
					<tr>
						<td><p>集资项目名称</p></td>
						<td colspan="3">
							<div class="form-group">
								<sf:input class="form-control caseName"  path="caseName" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资单位名称（个人姓名）</p></td>
						<td colspan="3">
							<div class="form-group">
								<sf:input class="form-control orgName" path="orgName" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>所属行业</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control select-type"  path="industry">
								<c:forEach items="${industries}" var="industry">
									<sf:option value="${industry.industryName}">${industry.industryName}</sf:option>
								</c:forEach>
								</sf:select>
							</div>
						</td>
						<td><p>集资方式</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control select-type"  path="raiseType">
								<c:forEach items="${raiseTypes}" var="raiseType">
									<sf:option value="${raiseType.raiseName}">${raiseType.raiseName}</sf:option>
									</c:forEach>
								</sf:select>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>业务类别</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control" id="serviceType" path="serviceType" onchange="gradeChange()">
								<c:forEach items="${parentServiceTypes}" var="parentServiceType">
									<sf:option id="${parentServiceType.serviceTypeId}" value="${parentServiceType.serviceName}">${parentServiceType.serviceName}</sf:option>
									</c:forEach>

								</sf:select>
								<script type="text/javascript">
								   function gradeChange(){
									 var grade = $("#serviceType option:selected").attr("id");
									  $.ajax({
									    	type : "POST", 
									        url: "<%=request.getContextPath()%>/home/ajax/add",
									      	data : "pid="+grade,
									      	dataType : "text",
									       	 success: function(data){
									       		var jsonParseJson=JSON.parse(data);
									       		$("#serviceTypes option").remove();
									       		//记录serviceName为“其他”的下标，让它显示在最后
									       		var p ;
									       		for(var i =0;i<jsonParseJson.length;i++){
									       			if(jsonParseJson[i].serviceName.substring(0,2)=="其他"){
									       				p = i;
									       				continue;
									       			}
									       			$("#serviceTypes").append("<option value="+jsonParseJson[i].serviceName+">"+jsonParseJson[i].serviceName+"</option>"); 
									       		}
									       		$("#serviceTypes").append("<option value="+jsonParseJson[p].serviceName+">"+jsonParseJson[p].serviceName+"</option>"); 
											} 
									   }); 
								  } 
								  
								</script>
							</div>
						</td>
						<td><p>类别明细</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control select-type" id="serviceTypes" path="serviceDetial">
								<c:forEach items="${serviceTypes}" var="serviceType">
									<sf:option  id="${serviceType.serviceTypeId}" value="${serviceType.serviceName }">${serviceType.serviceName }</sf:option>
									</c:forEach>
								</sf:select>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资金额</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control raiseAmount" path="raiseAmount" />
							</div>
						</td>
						<td><p>参与集资人数</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control raiseNum"  path="raiseNum" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>涉及地区</p></td>
						<td>
						    <div id="picker4" class="picker form-group">
							  <input type="text" class="form-control region-picker"  data-remote="<%=request.getContextPath()%>/assets/json" data-picked="新疆维吾尔自治区,喀什地区,巴楚县" data-visible="5" />
							</div>
                        </td>
						<td><p>案发时间</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control caseTime" id="modify-start" path="caseTime" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>注册地</p></td>
						<td>
                            <div id="picker1" class="picker form-group">
							  <sf:input type="text" class="form-control region-picker"  data-remote="${pageContext.request.contextPath}/assets/json" data-picked="新疆维吾尔自治区,喀什地区,巴楚县" data-visible="5"  path="registerArea"/>
							</div>
                        </td>
						<td><p>案发地</p></td>
						<td>
                            <div id="picker2" class="picker form-group">
							  <sf:input type="text" class="form-control region-picker"  data-remote="${pageContext.request.contextPath}/assets/json" data-picked="新疆维吾尔自治区,喀什地区,巴楚县" data-visible="5"  path="caseArea"/>
							</div>
                        </td>
					</tr>
					<tr>
						<td><p>发现渠道</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control select-type"  path="channel">
								<c:forEach items="${channels}" var="channel">
									<sf:option value="${channel.channelName}">${channel.channelName}</sf:option>
									</c:forEach>
								</sf:select>
							</div>
						</td>
						<td><p>案件级别</p></td>
						<td>
							<div class="form-group">
								<sf:select class="form-control select-type"  path="caseGrade">
								<c:forEach items="${caseGrades}" var = "caseGrade">
									<sf:option value="${caseGrade.caseGradeName}">${caseGrade.caseGradeName}</sf:option>
									</c:forEach>
								</sf:select>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>负责人</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control chargeName" path="chargeName" />
							</div>
						</td>
						<td><p>填报人</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control informan"  path="informant" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>联系电话</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control contactNum"  path="contactNum" />
							</div>
						</td>
						<td><p>填报日期</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control formDate" id="modify-data" path="formDate" />
							</div>
						</td>
					</tr>
				</table>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<input class="btn btn-success success" type="submit" value="确定" />
				</div>
				</section>
			</div>
			<div class="content administration hraf">
				<header class="title"> 行政处理情况 </header>
				<section>
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
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<input class="btn btn-success success" type="submit" value="确定" />
				</div>
				</section>
			</div>
			<div class="content judicial">
				<header class="title"> 司法处置情况 </header>
				<section>
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
								<sf:input class="form-control"  path="judgeResult" />
							</div>
						</td>
					</tr>
					<tr>
						<td><p>认定罪名</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="finalCrimeName" />
							</div>
						</td>
						<td><p>获刑人数</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control"  path="crimeNum" />
							</div>
						</td>
					</tr>
				</table>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<input class="btn btn-success success" type="submit" value="确定" />
				</div>
				</section>
			</div>
			<div class="content closed">
				<header class="title"> 案件结案情况 </header>
				<section>
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
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<input class="btn btn-success success" type="submit" value="确定" />
				</div>
				</section>
			</div>
			<div class="content aftermath">
				<header class="title"> 善后维稳情况 </header>
				<section>
				<table>
					<tr>
						<td><p>返还比例</p></td>
						<td>
							<div class="form-group">
								<sf:input class="form-control" path="rePercent" />
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
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<input class="btn btn-success success" type="submit" value="确定" />
				</div>
				</section>
			</div>
		</sf:form> </article>
	</div>
	<script src="<%=request.getContextPath()%>/assets/js/pikaday.min.js"
	type="text/javascript"></script>
     <script src="<%=request.getContextPath()%>/assets/js/chineserp.min.js" type="text/javascript"></script>
     <script src="<%=request.getContextPath()%>/assets/js/jquery.regionpicker.js" type="text/javascript"></script>
	 <script src="<%=request.getContextPath()%>/assets/js/select.js" type="text/javascript"></script>
	 <script type="text/javascript">
     	var picker = new Pikaday(
		{
			field: document.getElementById('startTime'),
			firstDay: 1,
			minDate: new Date('2010-01-01'),
			maxDate: new Date('2020-12-31'),
			yearRange: [2000,2020]
		});
     	var picker = new Pikaday(
		{
			field: document.getElementById('fillData'),
			firstDay: 1,
			minDate: new Date('2010-01-01'),
			maxDate: new Date('2020-12-31'),
			yearRange: [2000,2020]
		});	
       $(function(){
    		    function regionInfo(r){
    		      var list = [];
    		      list.push('<li>ID = '+ r.i +'</li>');
    		      list.push('<li>Name = '+ r.n +'</li>');
    		      list.push('<li>Alias = '+ r.a +'</li>');
    		      list.push('<li>Pinyin = '+ r.y +'</li>');
    		      list.push('<li>Abbr = '+ r.b +'</li>');
    		      list.push('<li>Postcode = '+ r.z +'</li>');
    		      return '<ul>'+ list.join("\n") +'</ul>'
    		    };

    		    $('#picker1 .region-picker').regionPicker().on('picked.rp', function(e, regions){
    		    	if( $('#picker1 input').val()==""){
    		    		 $('#picker1 input').val(regions.map(function(r){ return r.n; }).join("-"));
    		    	}else {
    		    		var num = $('#picker1 input').val() +" "+ regions.map(function(r){ return r.n; }).join("-");
    		    		$('#picker1 input').val(num);
    		    	}
    
    		    });

    		    $('#picker2 .region-picker').regionPicker().on('picked.rp', function(e, regions){
    		    	if( $('#picker2 input').val()==""){
   		    		 $('#picker2 input').val(regions.map(function(r){ return r.n; }).join("-"));
   		    	}else {
   		    		var num = $('#picker2 input').val() +" "+ regions.map(function(r){ return r.n; }).join("-");
   		    		$('#picker2 input').val(num);
   		    	}
    		    
    		    });
    		    
    		    $('#picker3 .region-picker').regionPicker().on('picked.rp', function(e, regions){
    		    	if( $('#picker3 input').val()==""){
   		    		 $('#picker3 input').val(regions.map(function(r){ return r.n; }).join("-"));
   		    	}else {
   		    		var num = $('#picker3 input').val() +" "+ regions.map(function(r){ return r.n; }).join("-");
   		    		$('#picker3 input').val(num);
   		    	}
    		    
    		    })
    		  
    		 
    		  });
    	$(document).ready(function (e) {
     		$(".select-type").editable(e);
     		});
	</script>
</body>
</html>