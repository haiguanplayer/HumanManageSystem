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
    
    <title>员工信息管理界面</title>
    <style type="text/css">
    	#headline{
    		text-align: left;
        	font-size: 28px;
        	font-weight:900;
       	    font-family:黑体,隶书;
    	}
    	#left {
			float: left;
			border: 1px solid red;
			width: 33.3%;
			height: 89.5%;
			background-color: green;
		}
    </style>
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
    <form action="emp_register.action" method="post">
    	<table border="0"  align="center">
			<tr>
				<td>
					<input name = "caozuo" type="submit" value = "查询">
				</td>
			</tr>
			<tr>
				<td>
					<input name = "caozuo" type = "submit" value = "修改">
				</td>
			</tr>
			
			
			<tr>
				<td>
					<input name = "caozuo" type = "submit" value="增加" >
				</td>
			</tr>
			
			<tr>
				<td>
					<a href = "talent_tiaohui.action">
						<input name = "fanhui" type="button" value="返回">
					</a>
				</td>
			</tr>
    	</table>
    </form>
  </body>
</html>
