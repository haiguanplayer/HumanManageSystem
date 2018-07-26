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
    
    <title>成功</title>
    
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
    <form action="emp_update.action" method="post">
		<table border="0" width="0%" align="center">
			<tr>
				<td>
					<input name = "before_dept" type="text" style="display: none" value="${z.dept_name }">
				</td>
			</tr>
			<tr>
				<td>
					<input name = "before_post" type="text" style="display: none" value="${z.post_name }">
				</td>
			</tr>
			<tr>
				<td>
					<input name="p_id" type="text" onfocus = "this.blur()" style="display: none" value="${u.p_id }">
				</td>
				<td>
					<input type = "text" value="是否进行岗位和部门变更" disabled="disabled">
				</td>
			</tr>
			<tr>
				<td>
					<input name = "page" type="submit" value="返回">
				</td>
				<td>
					<input name = "page" type="submit" value="部门变更记录">
				</td>
				<td>
					<input name = "page" type="submit" value="岗位变更记录">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
