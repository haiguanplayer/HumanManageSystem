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
    
    <title>My JSP 'DiEmp.jsp' starting page</title>
    
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
  	
    <table border="1" width="70%" align="center">
    
     		<tr>
     			<td>员工号:</td>
     			<td>姓名: </td>
     			<td>身份证号</td>
     			<td>性别</td>
     			<td>出生日期</td>
     			<td>学历</td>
     			<td>电话</td>
     			<td>部门</td>
     			<td>岗位</td>
     			<td>入职时间</td>
     			<td>转正时间</td>
     			<td>离职时间</td>
     			<td>离职方式</td>
     			<td>离职去向</td>
     			<td>是否在人才库中:</td>
     			<td>备注</td>
     			
     		</tr>
     		<c:forEach items="${x}" var = "y">
     		<tr>
     			<td>${y.p_id }</td>
     			<td>${y.p_name }	</td>
     	
     			<td>${y.id_card }</td>
     	
     		
     			<td>${y.gender }</td>
     		
     			
     			<td>${y.birth }</td>
     	
     			<td>${y.edu }</td>
     			<td>${y.tel }</td>
     		
     			<td>${y.dept_name}</td>
     		
     			<td>${y.post_name}</td>
     	
     			<td>${y.entry_date}</td>
     		
     			<td>${y.work_date}</td>
     		
     			<td>${y.leave_date }</td>
     		
     			<td>${y.leave_class }</td>
     		
     			<td>${y.leave_direction }</td>
     	
     			<td>${y.whether }</td>
  
     			<td>${y.remarks }</td>
     		 </tr>
 		 </c:forEach>
     </table>
    
  </body>
</html>
