<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>user</title>
    <link href="<%=request.getContextPath()%>/assets/css/DT_bootstrap.css" rel="stylesheet" type="text/css">   
</head>
<body>
     <section id="main-content">
          <section class="wrapper">
             <ul class="breadcrumb">
                      <li><a href="<%=request.getContextPath()%>/home/index">首页</a></li>
                      <li class="active">用户管理</li>
             </ul>
              <!-- page start-->
              <section class="content">
                  
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group">
                                  <button id="editable-sample_new" class="btn btn-primary add">
                                      添加新用户<i class="icon-plus"></i>
                                  </button>
                              </div> 
                          </div>
                          <div class="space15"></div>
                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                              <thead>
                              <tr>
                                  <th>用户名</th>
                                  <th>密码</th>
                                  <th>角色</th>
                                  <th>编辑</th>
                                  <th>删除</th>
                              </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${users}" var="user">
                              <tr class="" id = "${user.id}">
                                  <td>${user.userName}</td>
                                  <td>${user.passWord}</td>
                                  <td class="center">${user.role}</td>
                                  <td><a class="edit" href="javascript:;">编辑</a></td>
                                  <td><a class="delete" href="javascript:;">${user.role=='ROLE_ADMIN'? '':'删除'}</a></td>
                              </tr>
                              </c:forEach>
                              </tbody>
                          </table>
                      </div>
                  </div>
              </section>
              <!-- page end-->
          </section>
      </section>
     <script src="<%=request.getContextPath()%>/assets/js/jquery.dataTables.js" type="text/javascript"></script>
     <script src="<%=request.getContextPath()%>/assets/js/DT_bootstrap.js" type="text/javascript"></script>
     <script src="<%=request.getContextPath()%>/assets/js/editable-table.js" type="text/javascript"></script>
    <script>
          jQuery(document).ready(function() {
              EditableTable.init();
          });
      </script>
</body>
</html>
