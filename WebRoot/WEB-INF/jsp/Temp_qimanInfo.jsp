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
    
    <title>临时员工信息</title>
    
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
    <form   method="post">
		<table border = 1px>
			<tr>
   				<td>员工编号 </td>
				<td>员工姓名 </td>
				<td>入职时间 </td>
				<td>试用期限</td>
				<td>期满时间</td>
				<td>     </td>
   			</tr>
		<c:forEach var="f" items="${findByNow }">
		
   			<tr>
   				<td>${f.p_id }</td>
   				<td>${f.p_name }</td>
   				<td>${f.entry_date }</td>
   				<td>${f.try_time }</td>
   				<td>${f.qiman_time }</td>
   				<td>
   					<a href="Temp_updateToZs.action?choice=${f.p_id }">
   						<input name = "fanhui" type="button" value="转正">
   					</a>
   				</td>
   			</tr>
   			
   		</c:forEach>
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

