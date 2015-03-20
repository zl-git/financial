Financial
===

* 数据库mysql，jdk 1.7
* 系统部署之前需要在mysql数据库中创建financial数据库
* 同时把src/main/resources/META-INF目录下的database.properties文件中的
connection.username和connection.password改成你本地的mysql用户名和密码
* 系统第一次启动后会自动初始化一个admin的系统用户，密码为123456
* 系统设计及说明

__系统设计及说明__

* 在WEB_INF/nav/none.jsp 定义了页面的头部，管理员用户拥有“用户管理”和“标签管理”这两个特殊的功能
