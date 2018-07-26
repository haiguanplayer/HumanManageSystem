<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>查看离职员工报表</title>
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
  <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/humanmanage" user="root"  password=""/>
        <sql:query dataSource="${snapshot}" var="result">
		 	select dept_name from department;
		</sql:query>
  <br>
  <br>
  <form action="reportB.action" method="post">
		<table border="1" width="50%" align="center" style="border-collapse:collapse;">
   			<tr>
   				<td width="25%">开始时间</td>
   				<td>
   					<input name="sdate" type="date" value="2018-06-01">
   				</td>
   			</tr>
   			<tr>
   				<td width="25%">截止时间</td>
   				<td>
   					<input name="edate" type="date" value="2018-07-31">
   				</td>
   			</tr>
			<tr>	
   				<td>部门选择</td>
   				<td>
   					<select name="deptname" >
   						<option value="null" selected="selected" >所有部门</option>
          				   <c:forEach var="row" items="${result.rows}">
           					 <option value="<c:out value="${row.dept_name}"/>">${row.dept_name}</option>
            			  </c:forEach>
        			</select> 	
        		</td>		
   			</tr>		
  			<tr>
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
   		</table>    
    </form>
  </body>
</html>
