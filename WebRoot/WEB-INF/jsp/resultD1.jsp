<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>岗位调动员工报表</title>
</head>
<body>
	<table border="1" width="70%" align="center" style="border-collapse:collapse;">
		<tr>
			<td colspan="7" align="center">岗位调动员工表</td>
			<td colspan="2" align="center" >时间：${aa }~${bb }</td>
		</tr>
		<tr align="center">
			<th>部门</th>
			<th>原岗位</th>
			<th>新岗位</th>
			<th>姓名</th>
			<th>性别</th>
			<th>调动日期</th>
			<th>调动原因</th>
		</tr>
		<c:forEach var="y" items="${x}">
		<tr>
	  			<td >${y.dept_name }</td>
   	 			<td >${y.before_post }</td>
   	 			<td >${y.after_post }</td>
   	 			<td >${y.p_name }</td>
   	 			<td >${y.gender }</td>
   	 			<td >${y.move_post_date }</td>
   	 			<td >${y.move_post_class }</td>	
   	 	</tr>	
		</c:forEach>
	</table>
</body>
</html>