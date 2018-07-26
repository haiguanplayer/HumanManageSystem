<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改岗位</title>
    
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
    <form action="post_update.action" method="post">
    <table border="1" width="70%" align="center" >
    		<tr>
 	 			<td>
 	 				<input name="post_id" type="text" onfocus = "this.blur()" style="display:none" value="${pp.post_id }">
 	 			</td>
 	 		</tr>
			<tr>
    			<td>请输入要修改的岗位名称：</td>
    			<td>
    				<input name="post_name" type="text" value="${pp.post_name }">
    			</td>
    		</tr>
    		
    		<tr>
    			<td>岗位类型</td>
    			<td>
    				<input name="post_type" type="text" value="${pp.post_type }">
    			</td>
    		</tr>
    		
    		<tr>
    			<td>岗位编制</td>
    			<td>
    				<input name="post_max" type="text" value="${pp.post_max }">
    			</td>
    		</tr>
			<tr>
    			<td colspan="2" align="center">
    				<input type="submit" value="确定">
    			</td>
    			<td colspan="2" align="center">
    				<input type="button" onclick="javascript:window.history.back(-1)" value="返回">
    			</td>
    		</tr>
		</table>
    </form>
  </body>
</html>
