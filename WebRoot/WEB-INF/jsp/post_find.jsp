<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  prefix="c"  uri = "http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>操作岗位信息</title>
    
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
  	
    <form action="post_find.action" method="post">
    	<table border="1" width="70%" align="center" >
			<tr>
				<td>选中</td>
    			<td>岗位名称</td>
    			<td>岗位类型</td>
    			<td>岗位编制</td>
    		</tr>
    		
    		<c:forEach items="${p }" var="m">
				<tr>
					<td>
						<input name="choose" type="radio" checked="checked" value="${m.post_id }"/>
					</td>
					<td>${m.post_name }</td>
					<td>${m.post_type}</td>
					<td>${m.post_max}</td>
				</tr>
			</c:forEach>
			
			
			
			<tr>
    			<td colspan="2" align="center">
    				<input type="submit" value="修改" name="doaction">
    				<input type="submit" value="删除" name="doaction">
    				<input type="submit" value="查询岗位下员工" name="doaction">
    				<input type="submit" value="返回" name="doaction">
    			</td>
    		</tr>
		</table>
    </form>
  </body>
</html>
