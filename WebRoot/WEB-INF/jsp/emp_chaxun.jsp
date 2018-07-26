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
	  	<table border="0"  align="center">
		    	<tr>
		    		<td>姓名</td>
		    		<td>手机号码</td>
		    		<td>部门</td>
		    		<td>岗位</td>
		    		<td>来源</td>
		    		<td>学历</td>
		    		<td>入职时间</td>
		    		<td>转正时间</td>
		    		<td>用工形式</td>
		    	</tr>
		  		<c:forEach items="${u }" var = "pw">
		  			<tr>
						<td> ${pw.p_name }</td>
						<td> ${pw.tel }</td>
						<td> ${pw.dept_name }</td>
						<td> ${pw.post_name }</td>
						<td> ${pw.score }</td>
					    <td> ${pw.edu }</td>
					    <td> ${pw.entry_date }</td>
					    <td> ${pw.work_date }</td>
						<td> ${pw.work_state }</td>
					</tr>
		  		</c:forEach>
		  	<tr>
		  		<td align="center">
		  			<input name = "page" type="button" onclick="javascript:window.history.back(-1)" value="返回">
		  		</td>
		  	</tr>
	  	</table>
	  </form>
  </body>
</html>
