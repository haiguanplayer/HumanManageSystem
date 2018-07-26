<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改部门</title>
    
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
    <form action="dept_update.action" method="post">
    	<table border="1" width="70%" align="center">
   			<tr>
   				<td>部门名字</td>
   				<td>
   					<input name="dept_id" type="hidden" value="${x.dept_id} ">
   					<input name="dept_name" type="text" value="${x.dept_name} ">
   				</td>
   			</tr>
   			<tr>
   				<td>部门类别</td>
   				<td>
   					
   					<select name="dept_class" >
   						<option value="部门" label="部门">部门
   						<option value="公司" label="公司">公司
   					</select>
   					<!-- <input name="dept_class" type="text"> -->
   				</td>
   			</tr>
   			<tr>
   				<td>部门电话</td>
   				<td>
   					<input name="dept_phone" type="text" value="${x.dept_phone}">
   				</td>
   			</tr>
   			<tr>
   				<td>部门成立日期</td>
   				<td>
   					<input name="dept_build_date" type="date" value="${x.dept_build_date}">
   				</td>
   			</tr>
   			
   			<tr>
   				<td colspan="2" align="center">
   					<input type="submit" value="确认">
   				</td>
   			</tr>
   			
   		</table>
    </form>
    	<table border="1" width="70%" align="center">
   				<td colspan="2" align="center">
   					<input type="submit" value="返回" onclick="javascript:window.history.go(-1)">
   				</td>
   		</table>

  </body>
</html>
