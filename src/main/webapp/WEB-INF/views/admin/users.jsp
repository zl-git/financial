<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<title>search</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/assets/css/DT_bootstrap.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/assets/css/base.css" rel="stylesheet" type="text/css">

</head>
<body>

     <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <section class="panel">
                  <header class="panel-heading">
                      Editable Table
                  </header>
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group">
                                  <button id="editable-sample_new" class="btn green">
                                      Add New <i class="icon-plus"></i>
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
                                  <th>修改</th>
                                  <th>删除</th>
                              </tr>
                              </thead>
                              <tbody>
                             <c:forEach items="${users}" var="user">
                              <tr class="">
                                  <td>${user.userName}</td>
                                  <td>${user.passWord}</td>
                                  <td class="center">${user.role}</td>
                                  <td><a class="edit" href="javascript:;">Edit</a></td>
                                  <td><a class="delete" href="javascript:;">${user.role=='ROLE_ADMIN'? '':'Delete'}</a></td>
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
      <script src="<%=request.getContextPath()%>/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
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
