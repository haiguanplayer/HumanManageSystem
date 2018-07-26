<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	
	</script>

  </head>
  
  <body>
    <form action="Temp_updateTime.action" method="post">
    	
		<table border = 1px;>
			<tr>
   				<td>员工编号 </td>
				<td>员工姓名 </td>
				<td>入职时间 </td>
				<td>试用期限</td>
				<td>期满时间</td>
   			</tr>
		
   			<tr>
   				<td>
   					<input name = "p_id" type="text" onfocus="this.blur()" value="${f.p_id }">
   				</td>
   				<td>
   					<input name = "p_name" type="text" onfocus="this.blur()" value="${f.p_name }">
   				</td>
   				<td>
   					<input name = "entry_date" type="text" onfocus="this.blur()" value="${f.entry_date }">
   				</td>
   				<td>
   					<input name = "try_time" type="text"   value="${f.try_time }" >
   				</td>
   				<td>
   					<input name = "qiman_time" type="text" onfocus="this.blur()" value="${f.qiman_time }">
   				</td>
   			</tr>
   		</table> 
   		<input name = "xiugai" type = "submit" value="确定" />
		<input name = "fanhui" type="button" onclick="javascript:window.history.back(-1)" value = "返回">
    </form>
  </body>
</html>
