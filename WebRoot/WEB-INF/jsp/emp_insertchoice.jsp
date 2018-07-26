<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>失败</title>
    
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
 	 <form action="emp_insertchoice.action" method="post">
 	 	<table border="0" width="0%" align="center">
 	 		<tr>
 	 			<td>
 	 				<input name = "choice" type="submit" value="手动添加">
 	 			</td>
 	 		</tr>
 	 		<tr>
 	 			<td>
 	 				<input name = "choice" type="submit" value="从人才库添加">
 	 			</td>
 	 		</tr>
 	 		<tr>
 	 			<td>
 	 				<input name = "fanhui" type="button" onclick="javascript:window.history.back(-1)" value = "返回">
 	 			</td>
 	 		</tr>
 	 	</table>
 	 </form>
  </body>
</html>
