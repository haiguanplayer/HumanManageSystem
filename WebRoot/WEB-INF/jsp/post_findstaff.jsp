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
    
    <title>员工列表</title>
    
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
  	
    <form action="post_findstaff.action" method="post">
    	<table border="1" width="70%" align="center" >
			<tr>
    			<td>员工号</td>
    			<td>姓名</td>
    			<td>性别</td>
    			<td>出生日期</td>
    			<td>身份证号</td>
    			<td>来源</td>
    			<td>教育程度</td>
    			<td>部门</td>
    			<td>岗位</td>
    			<td>入职日期</td>
    			<td>参加工作日期</td>
    			<td>用工形式</td>
    			<td>评论</td>
    		</tr>
    		
    		<c:forEach items="${fs }" var="fs">
				<tr>
					<td>${fs.p_id }</td>
					<td>${fs.p_name}</td>
					<td>${fs.gender}</td>
					<td>${fs.birth }</td>
					<td>${fs.id_card}</td>
					<td>${fs.score }</td>
					<td>${fs.edu}</td>
					<td>${fs.dept_name }</td>
					<td>${fs.post_name}</td>
					<td>${fs.entry_date }</td>
					<td>${fs.work_date}</td>
					<td>${fs.work_state }</td>
					<td>${fs.remake}</td>
				</tr>
			</c:forEach>
			<td colspan="2" align="center">
    			<input type="button" onclick="javascript:window.history.back(-1)" value="返回">
    		</td>
		</table>
    </form>
  </body>
</html>
