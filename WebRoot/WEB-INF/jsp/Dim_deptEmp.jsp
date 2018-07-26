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
    
    <title>My JSP 'deptEmp.jsp' starting page</title>
    
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
  
   	 <table border="1" width="90%" align="center">
   	 	<tr>
   	 		<td>部门</td>
   	 		<td>员工号</td>
   	 		<td>员工姓名</td>
   	 		<td>性别</td>
   	 		<td>出生日期</td>
   	 		<td>身份证号</td>
   	 		<td>入职方式</td>
   	 		<td>学历</td>
   	 		<td>岗位</td>
   	 		<td>电话</td>
   	 		<td>入职时间</td>
   	 		<td>转正时间</td>
   	 		<td>员工种类</td>
   	 		<td>备注</td>	
   	 		<td></td>
   	 	</tr>
   	 	<c:forEach var="x" items="${y}">
   	 	<form action="findEmp1.action" method="post">
   	 	<tr>
   	 		<td >${x.dept_name }</td>
   	 		<td ><input name = "p_id" type="text" value="${x.p_id }" onfocus="this.blur()"  style="width: 70px; background:transparent;border:0"></td>
   	 		<td >${x.p_name}</td>
   	 		<td >${x.gender }</td>
   	 		<td >${x.birth }</td>
   	 		<td >${x.id_card}</td>
   	 		<td >${x.score }</td>
 			<td >${x.edu }</td>  	 		
   	 		<td >${x.post_name }</td>
   	 		<td >${x.tel }</td>
   	 		<td >${x.entry_date }</td>
   	 		<td >${x.work_date }</td>
   	 		<td >${x.work_state }</td>
   	 		<td >${x.remake }</td>
   	 		 
   	 		<td colspan="2" align="center">
   					<input type="submit" value="查询">
   			</td>
   		
   	 		</tr>	
   	 		</form>
   	 	</c:forEach>
   	 </table>
   	 	
  </body>
</html>
