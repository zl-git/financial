<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>target</title>
<script
	src="<%=request.getContextPath()%>/assets/js/jquery-1.10.2.min.js"
	type="text/javascript"></script>
	<script type="text/javascript">
        function del(){
       	  if(!confirm("确定删除？"))
       	   {
       		  return false;
       	   }
        }
     </script>
</head>
<body>
	 <div class="wrapper wrapper-style1 wrapper-first">
         <ul class="breadcrumb">
              <li><a href="#">指标维护</a></li>
              <li class="active">指标维护</li>
         </ul>
         <div class="content">
             <section class="targetadd">
                 <section class="targetcontent">      
                      <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/admin/industry/add" method="post">
                          <div class="form-group">
                              <label class=" col-sm-2 control-label ">所属行业指标添加：</label>
                              <div class="col-lg-10"> 
                                  <input type="text" class="form-control targetinput" name="industryName">  
                                  <button type="submit" class="btn btn-success search" >添加</button>                            
                              </div>
                          </div>
                      </form> 
                     <table class="table table-striped table-hover">
                          <thead>
                            <tr>
                              <th>序号</th>
                              <th>名称</th>
                              <th>操作</th> 
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach items="${industries}" var="industry" varStatus="stat">
                            <tr>
                              <td>${stat.count}</td>
                              <td>${industry.industryName}</td>
                              <td>
                                  <a href="<%=request.getContextPath()%>/admin/industry/del?industryId=${industry.industryId}" class="btn btn-success delete" onclick="return del()">删除</a>
                              </td>
                            </tr>
                             </c:forEach>
                          </tbody>
                        </table>   
                  </section>
                   <hr/>
                  <section class="targetcontent">      
                      <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/admin/raiseType/add" method="post">
                          <div class="form-group">
                              <label class=" col-sm-2 control-label ">集资方式指标添加：</label>
                              <div class="col-lg-10"> 
                                  <input type="text" class="form-control targetinput" name="raiseName">  
                                  <button type="submit" class="btn btn-success search">添加</button>                            
                              </div>
                          </div>
                      </form> 
                     <table class="table table-striped table-hover ">
                          <thead>
                            <tr>
                              <th>序号</th>
                              <th>名称</th>
                              <th>操作</th> 
                            </tr>
                          </thead>
                          <c:forEach items="${raiseTypes}" var="raiseType" varStatus="stat">
                            <tr>
                              <td>${stat.count}</td>
                              <td>${raiseType.raiseName}</td>
                              <td>
                                  <a href="<%=request.getContextPath()%>/admin/raiseType/del?raiseTypeId=${raiseType.raiseTypeId}" class="btn btn-success delete" onclick="return del()">删除</a>
                              </td>
                            </tr>
                             </c:forEach>
                          <tbody>
                          </tbody>
                        </table>   
                  </section>
                  <hr/>
                  <section class="targetcontent">      
                      <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/admin/caseGrade/add" method="post">
                          <div class="form-group">
                              <label class=" col-sm-2 control-label ">案件级别指标添加：</label>
                              <div class="col-lg-10"> 
                                  <input type="text" class="form-control targetinput" name="caseGradeName">  
                                  <button type="submit" class="btn btn-success search">添加</button>                            
                              </div>
                          </div>
                      </form> 
                     <table class="table table-striped table-hover ">
                          <thead>
                            <tr>
                              <th>序号</th>
                              <th>名称</th>
                              <th>操作</th> 
                            </tr>
                          </thead>
                          <tbody>
                            <c:forEach items="${caseGrades}" var="caseGrade" varStatus="stat">
                            <tr>
                              <td>${stat.count}</td>
                              <td>${caseGrade.caseGradeName}</td>
                              <td>
                                  <a href="<%=request.getContextPath()%>/admin/caseGrade/del?caseGradeId=${caseGrade.caseGradeId}" class="btn btn-success delete" onclick="return del()">删除</a>
                              </td>
                            </tr>
                             </c:forEach>
                          </tbody>
                        </table>   
                  </section>
                   <hr/>
                  <section class="targetcontent">      
                      <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/admin/serviceType/add" method="post">
                          <div class="form-group">
                              <label class=" col-sm-2 control-label ">业务类别指标添加：</label>
                              <div class="col-lg-10"> 
                                  <input type="text" class="form-control targetinput" name="serviceTypeName">  
                                  <button type="submit" class="btn btn-success search">添加</button>                            
                              </div>
                          </div>
                      </form> 
                     <table class="table table-striped table-hover ">
                          <thead>
                            <tr>
                              <th>序号</th>
                              <th>名称</th>
                              <th>操作</th> 
                            </tr>
                          </thead>
                          <tbody>
                            <c:forEach items="${parentServiceTypes}" var="serviceType" varStatus="stat">
                            <tr>
                              <td>${stat.count}</td>
                              <td>${serviceType.serviceName}</td>
                              <td>
                                  <a href="<%=request.getContextPath()%>/admin/serviceType/del?serviceTypeId=${serviceType.serviceTypeId}" class="btn btn-success delete" onclick="return del()">删除</a>
                              </td>
                            </tr>
                             </c:forEach>
                          </tbody>
                        </table>   
                  </section>
                   <hr/>
                  <section class="targetcontent">      
                      <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/admin/serviceType/add" method="post">
                         <div class="form-group">
                              <label class=" col-sm-2 control-label ">业务类别：</label>
                              <div class="col-lg-3">                                   
                                  <select class="form-control targetselect" id="serviceType" name="serviceTypeId" onchange="gradeChange()">
                                  <c:forEach items="${parentServiceTypes}" var="serviceType">
                                    <option value="${serviceType.serviceTypeId}">${serviceType.serviceName}</option>
                                    </c:forEach>
                                  </select> 
                                  <script type="text/javascript">
								   function gradeChange(){
									 var grade = $("#serviceType option:selected").val();
									  $.ajax({
									    	type : "POST", 
									        url: "<%=request.getContextPath()%>/admin/serviceType/ajax/list",
									      	data : "serviceTypeId="+grade,
									      	dataType : "text",
									       	 success: function(data){
									       		var jsonParseJson=JSON.parse(data);
									       		$("#content").children().remove();
									       	 	for(var i =0;i<jsonParseJson.length;i++){
									       	 	
									       	 	var serviceTypeId = jsonParseJson[i].serviceTypeId;
									       		var a = "serviceType/del?serviceTypeId="+serviceTypeId;
									       	    	$("#content").append("<tr>"+"<td>"+(i+1)+"</td>"+"<td>"+jsonParseJson[i].serviceName+
									       	    			"<td><a href="+a+" class='btn btn-success delete' onclick='return del()'>删除</a></td>"
									       	    			+"</td>"+"</tr>");
									       		} 
									       		
											} 
									   }); 
								  } 
								  
								</script>                                                              
                              </div>
                              <label class=" col-sm-2 control-label ">业务明细指标添加：</label>
                              <div class="col-lg-4"> 
                                  <input type="text" class="form-control targetinput" name="serviceTypeName">  
                                  <button type="submit" class="btn btn-success search">添加</button>                            
                              </div>
                          </div>
                      </form> 
                     <table class="table table-striped table-hover ">
                          <thead>
                            <tr>
                              <th>序号</th>
                              <th>业务明细</th>
                              <th>操作</th> 
                            </tr>
                          </thead>
                          <tbody id ="content">
                          <c:forEach items="${serviceTypes}" var="serviceType" varStatus="stat">
                            <tr>
                              <td>${stat.count}</td>
                              <td>${serviceType.serviceName}</td>
                              <td>
                                  <a href="<%=request.getContextPath()%>/admin/serviceType/del?serviceTypeId=${serviceType.serviceTypeId}" onclick="return del()" class="btn btn-success delete">删除</a>
                              </td>
                            </tr>
                             </c:forEach>
                          </tbody>
                        </table>   
                  </section>
                   <hr/>
                  <section class="targetcontent">      
                      <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/admin/channel/add" method="post">
                          <div class="form-group">
                              <label class=" col-sm-2 control-label ">发现渠道指标添加：</label>
                              <div class="col-lg-10"> 
                                  <input type="text" class="form-control targetinput" name="channelName">  
                                  <button type="submit" class="btn btn-success search">添加</button>                            
                              </div>
                          </div>
                      </form> 
                     <table class="table table-striped table-hover ">
                          <thead>
                            <tr>
                              <th>序号</th>
                              <th>名称</th>
                              <th>操作</th> 
                            </tr>
                          </thead>
                          <tbody>
                            <c:forEach items="${channels}" var="channel" varStatus="stat">
                            <tr>
                              <td>${stat.count}</td>
                              <td>${channel.channelName}</td>
                              <td>
                                  <a href="<%=request.getContextPath()%>/admin/channel/del?channelId=${channel.channelId}" onclick="return del()" class="btn btn-success delete">删除</a>
                              </td>
                            </tr>
                             </c:forEach>
                          </tbody>
                          
                        </table>   
                  </section>
             </section> 
         </div>    
      </div>
</body>
</html>