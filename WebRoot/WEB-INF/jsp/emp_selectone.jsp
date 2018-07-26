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
    
    <title>查询</title>
    
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
  	<form method="post">
	  	<table border="1" width="70%" align="center">
	  	
	  			<tr>
	  				<td>姓名: </td>
	  				<td> ${u.p_name }</td>
	  				<td> </td>
	  				<td>性别: </td>
	  				<td> ${u.gender }</td>
	  				<td> </td>
	  				<td>生日: </td>
	  				<td> ${u.birth }</td>
	  			</tr>
	  			<tr>
	  				<td>手机号码: </td>
	  				<td> ${u.tel }</td>
	  				<td>身份证号: </td>
	  				<td> ${u.id_card }</td>
	  			</tr>
	  			<tr>
	  				<td>来源: </td>
	  				<td> ${u.score }</td>
	  				<td> </td>
	  				<td>学历: </td>
	  				<td> ${u.edu }</td>
	  			</tr>
		    	<tr>
		    		<td>部门: </td>
		    		<td> ${u.dept_name }</td>
		    		<td> </td>
		    		<td>岗位: </td>
		    		<td> ${u.post_name }</td>
		    	</tr>
		    	<tr>
		    		<td>入职时间</td>
		    		<td> ${u.entry_date }</td>
		    		<td> </td>
		    		<td>转正时间</td>
		    		<td> ${u.work_date }</td>
		    		<td> </td>
		    		<td>用工形式</td>
		    		<td> ${u.work_state }</td>
		    		
		    	</tr>
		  		<tr>				
					<td>评价</td>
					<td> ${u.remake }</td>
				</tr>
		  		<tr>
		  			<td align="center">
		  				<input name = "page" type="button" onclick="javascript:window.history.go(-1)" value="返回">
		  			</td>
		  		</tr>
	  		</table>
	  </form>
  </body>
</html>
