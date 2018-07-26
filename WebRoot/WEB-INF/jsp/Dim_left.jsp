<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <dl>
    <dt>功能介绍</dt>
    <dd><a href="./Dim_findEmp" target="center" >离职管理</a></dd> <!--这个target所指向的就是frame中的center-->
    <dd><a href="#">入职管理</a></dd>
    <dd><a href="#">1</a></dd>
    <dd><a href="#">2</a></dd>
    <dd><a href="#">3</a></dd>
</dl>
  </body>
</html>
