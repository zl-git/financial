<%@page import="com.trs.financial.bo.ClassExcel"%>
<%@page import="java.util.*"%>
<%@ page import="com.trs.financial.bo.Case"%>
<%@ page import="com.trs.financial.bo.ClassExcel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	List<Case> setCases = (List<Case>)request.getAttribute("cases");
	String from = (String)request.getAttribute("from");
	String to = (String)request.getAttribute("to");
	Integer pageNo = (Integer)request.getAttribute("pageNo");
	Integer pageSize = (Integer)request.getAttribute("pageSize");
	Integer totalCases = (Integer)request.getAttribute("totalCases");
	List<ClassExcel> classExcelList = (List<ClassExcel>)session.getAttribute("classExcels");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>statistics</title>
<link href="<%=request.getContextPath()%>/assets/css/pikaday.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/simplePagination.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
		<ul class="breadcrumb">
			<li><a href="#">首页</a></li>
			<li class="active">案件统计</li>
		</ul>
		<div class="searchbox">
			<section class=" pane1-selected">
			<div class="panel-body">
				<form class="form-horizontal" role="form" method="post" >
					<div class="form-group">
						<label for="inputPassword1"
							class="col-lg-2 col-sm-2 control-label">时间</label>
						<div class="col-lg-10">
							<div class="input-group input-large" data-date="2010-01-01"
								data-date-format="yyyy-dd-mm">
								<input type="text" class="form-control dpd1" name="from"
									id="datepickerfrom" value="${from}"> 
								<span class="input-group-addon">To</span>
								<input type="text" class="form-control dpd2" name="to"
									id="datepickerto" value="${to}">
							</div>
						</div>
					</div>
				   <div class="form-group">
                        <label class="col-lg-2 col-sm-2 control-label" >关键词</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control keyWords"  name="keyWords" value="${keyWords}"> 
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 col-sm-2 control-label ">地区</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control statistics-area" name="area" value="${area}">                           
                                  <select class="form-control statistics-select" name="areaType">
                                    <option value="涉及地区" ${areaType eq "涉及地区"? 'selected':''}>涉及地区</option>
                                    <option value="注册地" ${areaType eq "注册地"? 'selected':''}>注册地</option>
                                    <option value="案发地" ${areaType eq "案发地"? 'selected':''}>案发地</option>
                                  </select>                                      
                          
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-lg-2 col-sm-2 control-label ">所属行业</label> 
                        <div class="col-lg-10">                         
                           <select class="form-control statistics-industry" name="industry" >
                           <option></option>
                           <c:forEach items="${industries}" var="industry">
                             <option value="${industry.industryName}" ${industrys eq industry.industryName? 'selected':''}>${industry.industryName}</option>
                             </c:forEach>
                           </select>                                           
                        </div>  
                                                                      
                    </div>
                    <div class="form-group">
                            <label class="col-lg-2 col-sm-2 control-label ">业务类别</label>
                            <div class="col-lg-10">
                               <select class="form-control statistics-industry" name="service">
                               <option></option>
                               <c:forEach items="${parentServiceTypes}" var= "serviceType">
                                 <option value="${serviceType.serviceName}" ${serviceType.serviceName eq service? 'selected':''}>${serviceType.serviceName}</option>
                                 </c:forEach>
                               </select> 
                            </div> 
                    </div> 
                    <div class="form-group">
                        <label class="col-lg-2 col-sm-2 control-label ">涉及金额</label>
                        <div class="col-lg-10">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="amountOfMoney" checked value="range1" ${amountOfMoney=="range1"? 'checked':''}/> 1亿以下
                                </label>
                                <label>
                                    <input type="radio" name="amountOfMoney" value="range2" ${amountOfMoney=="range2"? 'checked':''}/> 1-10亿
                                </label>
                                <label>
                                    <input type="radio" name="amountOfMoney" value="range3" ${amountOfMoney=="range3"? 'checked':''}/> 10-50亿
                                </label>
                                <label>
                                    <input type="radio" name="amountOfMoney" value="range4" ${amountOfMoney=="range4"? 'checked':''}/> 50亿以上
                                </label>
                            </div>
                        </div>
                    </div> 
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<div class="radio">
								<label> <input type="radio" name="statType" checked
									value="count" ${statType=="count"?"checked":""} /> 汇总统计表
								</label> <label> <input type="radio" name="statType"
									value="classification" 
									${statType=="classification"?"checked":""}/> 分类
								</label> <label> <input type="radio" name="statType"
									value="contrast" ${statType=="contrast"?"checked":""}/> 对比
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<button type="submit" class="btn btn-primary search">搜索</button>
							<button type="button" class="btn btn-primary export" id="export">导出</button>
							<script type="text/javascript">
							
							     $("#export").click(function(){
							    	 var casesAmount  = $("#cases").children(":first").children().length;
							    	/*  if(casesAmount==0){
							    		 alert("当前没有数据");
							    		 return false;
							    	 } */
							    	 
							    	 var statType = $("[name=statType]:radio:checked").val();
							    	 var obj = $(".xx").children(":first").children(":first").children();
							    	 var txt = "";
							    	 var service = $("[name=service] option:selected").val();
							    	 for(var i=obj.length-1;i>=0;i--){
							    		 txt = obj.eq(i).text()+"+"+txt;
							    	 }
							    	 var str =txt;
							    	 location = "/financial/home/statistics/dcExcel?str="+str+"&statType="+statType+"&service="+service;
							     })
							   
							</script>
						</div>
					</div>
				</form>
			</div>
			</section>
			<div class="content searched">
				<table class="xx">
					<thead>
						<tr>
							<th>序号</th>
							<th>集资项目名称</th>
							<th>集资单位名称（个人姓名）</th>
							<th>所属行业</th>
							<th>集资方式</th>
							<th>集资金额</th>
							<th>参与集资人数</th>
							<th>涉及地区</th>
							<th>发案时间</th>
							<th>发现渠道</th>
							<th>行政受理</th>
							<th>行政处理</th>
							<th>移送公安</th>
							<th>排除非法集资</th>
							<th>公安受理</th>
							<th>公安立案</th>
							<th>立案罪名</th>
							<th>侦查</th>
							<th>起诉</th>
							<th>审判</th>
							<th>认定罪名</th>
							<th>获刑人数</th>
							<th>司法审结</th>
							<th>集资款清退完毕</th>
							<th>返还比例</th>
							<th>群体性事件</th>
						</tr>
					</thead>
					<tbody id="cases">
					<c:forEach items="${cases}" var="case" varStatus="stat">
						<tr>
							<td>${stat.count}</td>
							<td>${case.caseName}</td>
							<td>${case.orgName}</td>
							<td>${case.industry}</td>
							<td>${case.raiseType}</td>
							<td>${case.raiseAmount}</td>
							<td>${case.raiseNum}</td>
							<td>${case.involveArea}</td>
							<td>${case.caseTime}</td>
							<td>${case.channel}</td>
							<td>${case.adminReceive==true? '是':'否'}</td>
							<td>${case.adminHandle==true? '是':'否'}</td>
							<td>${case.movePolice==true? '是':'否'}</td>
							<td>${case.illegalRaise==true? '是':'否'}</td>
							<td>${case.policeReceive==true? '是':'否'}</td>
							<td>${case.policeRegister==true? '是':'否'}</td>
							<td>${case.crimeName}</td>
							<td>${case.investigation==true? '是':'否'}</td>
							<td>${case.prosecute==true? '是':'否'}</td>
							<td>${case.judgeResult}</td>
							<td>${case.finalCrimeName}</td>
							<td>${case.crimeNum}</td>
							<td>${case.judicial==true? '是':'否'}</td>
							<td>${case.amountReturn==true? '是':'否'}</td>
							<td>${case.rePercent}</td>
							<td>${case.policeEvent}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			  
					<% if (setCases != null) { %>
					<div id="simplePage1"></div>
				<%} %>
				
			</div>
			<div class="content statistic-classify">
			   <table class="table statistics-table">
				  <tr>
				    <td colspan="8"><p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;年涉嫌非法集资新发案件分类情况统计表&nbsp;</p></td>
				  </tr>
				  <tr>
				    <td width="335"><p >填报单位：北京市打非协调小组办公室</p></td>
				    <td width="113">&nbsp;</td>
				    <td width="64">&nbsp;</td>
				    <td width="94">&nbsp;</td>
				    <td width="85">&nbsp;</td>
				    <td colspan="3"><p >&nbsp;单位：件、万元、人</p></td>
				  </tr>
				  <tr>
				    <td class="td-background"></td>
				    <td><p >案件数</p></td>
				    <td><p >集资<br />
				    金额</p></td>
				    <td><p >参与<br />
				      集资<br />
				    人数</p></td>
				    <td><p >跨省<br />
				    案件数</p></td>
				    <td width="88"><p >立案数</p></td>
				    <td width="82"><p >司法<br />
				    审理数</p></td>
				    <td width="63"><p >结案数</p></td>
				  </tr>
				   <c:forEach items="${classExcels}" var="classExcel" varStatus="stat">
				 <!-- 如果pid为0，表示大类加粗 -->
				  <c:if test="${classExcel.pid==0}">
				    <td><p><b>${classExcel.serviceName}</b></p></td>
				    </c:if>
				    <c:if test="${classExcel.pid==1}">
				    <td><p>${classExcel.serviceName}</p></td>
				    </c:if>
				    <td>${classExcel.casesNum}</td>
				    <td>${classExcel.raiseAmount}</td>
				    <td>${classExcel.raiseNum}</td>
				    <td>${classExcel.outProvince}</td>
				    <td>${classExcel.policeRegisterAmount}</td>
				    <td>${classExcel.judicialAmount}</td>
				    <td>${classExcel.overAmount}</td>
				    
				  </tr>
				  </c:forEach>
				  
				</table>
			</div>
			<div class="content statistics-contrast">
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">title</h3>
							</div>
							<div class="panel-body">
								<div class="col-md-12" id="charts" style="width:98%;height:475px;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script src="<%=request.getContextPath()%>/assets/js/pikaday.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/js/echarts-plain.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/js/widget.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.simplePagination.js"
	type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/js/statistics.js"
	type="text/javascript"></script>	
	 <script type="text/javascript">
		var picker = new Pikaday({
			field : document.getElementById('datepickerfrom'),
			firstDay : 1,
			minDate : new Date('2010-01-01'),
			maxDate : new Date('2020-12-31'),
			yearRange : [ 2000, 2020 ]
		});
		var picker = new Pikaday({
			field : document.getElementById('datepickerto'),
			firstDay : 1,
			minDate : new Date('2010-01-01'),
			maxDate : new Date('2020-12-31'),
			yearRange : [ 2000, 2020 ]
		});
		  $(function() {
	    	    var from = "<%=from%>";
	    	    var to = "<%=to%>";
	    	    var pageNo = parseInt(<%=pageNo%>);
	    	    var pageSize = parseInt(<%=pageSize%>);
	    	    var totalCases = parseInt(<%=totalCases%>);
			    $("#simplePage1").pagination({
			        items: <%=totalCases%>,
			        itemsOnPage: <%=pageSize%>,
			        cssStyle: 'compact-theme',
			        currentPage:<%=pageNo%>+1,
			        prevText: '<',
			        nextText: '>',
			        onPageClick: function(pageNumber, event) {
			        	location = "<%=request.getContextPath()%>/home/statistics"
			        		+ "?from="+from
			        		+ "&to="+to
			        		+ "&pageNo="+(pageNumber-1)
			        		+ "&pageSize="+pageSize
			        		+ "&totalCases="+totalCases;
			        	
			        }
			    });
			    
			    var stat1 = $("input[name='statType']:checked").val();
			    if(stat1 == "classification"){
		    		$('.keyWords').attr("disabled", "true");
		    	}
			    
			    $("input[name=statType]").click(function(){
			    	var stat2 = $("input[name='statType']:checked").val();
			    	if(stat2 == "classification"){
			    		$('.keyWords').attr("disabled", "true");
			    	}
			    	else {
			    		$('.keyWords').removeAttr("disabled");
			    	}
			    });
			});
		  	
       
   <%--     function search(){
	    	var path = "<%=request.getContextPath()%>/admin/ajax/dataStatis";
		 	var from = $("#datepickerfrom").val();
		 	var to = $("#datepickerto").val();
		 	if (from == "" || to == "") {
		 		alert("时间格式不对，请重新输入!");
		 		return false;
		 	}
			widget.load(path,from,to);
	    	return false;
	    }
	   $(function(){ 
	       var path = "<%=request.getContextPath()%>/admin/ajax/dataStatis";
	 	   var from = "";
	 	   var to = "";
	 	   widget.load(path,from,to);
	   }); --%>
	</script>	 
</body>
</html>