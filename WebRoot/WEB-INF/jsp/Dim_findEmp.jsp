<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="height: 5px; ">
    	 <sql:setDataSource var="find" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/humanmanage" user="root"  password=""/>
        <sql:query dataSource="${find}" var="findpost">
		 	select post_name from post;
		</sql:query>
		
        <sql:query dataSource="${find}" var="result">
		 	select dept_name from department;
		</sql:query>
		<table border="1" width="70%" align="center">
		 <form action="findEmp2.action" method="post">
			<tr>
   				<td width = "40%">部门</td>
   				<td>
   					<select name="dept_name" >
          				  <c:forEach var="row" items="${result.rows}">
           					 <option value="<c:out value="${row.dept_name}"/>">${row.dept_name}</option>
            			  </c:forEach>
        			</select>
   				</td>
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
   			
   		 </form>
   		 
   		 
   		 <form action="findEmp1.action" method="post">
   		 
			<tr>
   				<td width = "40%">员工号</td>
   				<td>
   					<input name ="p_id" type="text">
   				</td>
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
   		
   		 </form>
   		 <form action="findEmp3.action" method="post">
			<tr>
   				<td width = "40%">员工姓名</td>
   				<td>
   					<input name="p_name" type="text">
   				</td>
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
   		 </form>			
   			 </table>
   			   
   			   
   			   
  
   		
 	
	
  </body>
</html>
