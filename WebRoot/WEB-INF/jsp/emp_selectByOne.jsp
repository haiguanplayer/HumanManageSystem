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
  	<form  method="post">
	  	<table border="0"  align="center">
		    	<tr>
		    		<td>编号</td>
		    		<td>姓名</td>
		    		<td>部门</td>
		    		<td>岗位</td>
		    	</tr>
		  		<c:forEach items="${u }" var = "pw">
		  			<tr>
		  				<td> ${pw.p_id }</td>
						<td> ${pw.p_name }</td>
						<td> ${pw.dept_name }</td>
						<td> ${pw.post_name }</td>
						<td>
							<a href = "emp_selectByOne.action?choice=${pw.p_id }">
								<input name = "choice" type="button" value="查看">
							</a>
						</td>
					</tr>
		  		</c:forEach>
		  	<tr>
		  		<td align="center">
		  			<a href = "talent_tiaohui.action">
		  				<input name = "fanhui" type="button" value="返回">
		  			</a>
		  		</td>
		  	</tr>
	  	</table>
	  </form>
  </body>
</html>
