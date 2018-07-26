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
    
    <title>插入部门调动信息</title>
    
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
 	 <form action = "emp_insertpost.action" method="post">
		<table border="0" width="0%" align="center">
		<tr>
			<td>
				<input name = "p_id" type="text" value="${u.p_id }" style="display:none">
			</td>
		<tr>
		<tr>
			<td>姓名</td>
			<td>
				<input name = "p_name" type="text" value="${u.p_name }">
			</td>
		<tr>
		<tr>
			<td>之前岗位</td>
			<td>
				<input name = "before_post" type="text" value="${z.post_name }">
			</td>
		<tr>
		<tr>
			<td>现在岗位</td>
			<td>
				<input name = "after_post" type="text" value="${u.post_name }">
			</td>
		<tr>
		<tr>
			<td>调转类型</td>
			<td>
				<select name="move_post_class" style="width: 156px; height: 30px">
 	 				<option value="主动调动">主动调动</option>
 	 				<option value="被动调动">被动调动</option>
 	 				<option value="数据错误">数据错误</option>
 	 			</select>
			</td>
		<tr>
		<tr>
			<td>调转原因</td>
			<td>
				<input id = "1" name = "move_post_reason" type="text">
			</td>
		<tr>
		<tr>
			<td>调转日期</td>
			<td>
				<input id = "2" name = "move_post_date" type="date">
			</td>
		<tr>
		<tr>
			<td>
				<input name = "queding" type="submit" value = "确认" >
			</td>
			<td>
				<input name = "fanhui" type = "button" onclick= "javascript:window.history.back(-1)" 
					value="返回" >
			</td>
		<tr>
		</table>
	</form>
  </body>
</html>
