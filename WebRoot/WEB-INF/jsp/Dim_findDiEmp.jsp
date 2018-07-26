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
    
    <title>My JSP 'Dim_diEmp.jsp' starting page</title>
    
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
  <sql:setDataSource var="find" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/humanmanage" user="root"  password=""/>
        <sql:query dataSource="${find}" var="findpost">
		 	select post_name from post;
		</sql:query>
		
        <sql:query dataSource="${find}" var="result">
		 	select dept_name from department;
		</sql:query>
    <table border="1" width="70%" align="center">
	
     <form action="findDiEmp.action" method="post">
   			<tr>
   				<td width = "40%">离职员工号</td>
   				<td>
   					<input name="p_id" type="text">
   				</td>
   		
   			
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
    </form>
    
      <form action="findDiEmp1.action" method="post">
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
    
    <form action="findDiEmp2.action" method="post">
   			<tr>
   				<td width = "40%">部门</td>
   				<td>
   					<!-- <input name="dept_name" type="text"> -->
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
   
    <form action="findDiEmp3.action" method="post">
   			<tr>
   				<td width = "40%">岗位</td>
   				<td>
   					<select name="post_name" >
          				  <c:forEach var="row" items="${findpost.rows}">
           					 <option value="<c:out value="${row.post_name}"/>">${row.post_name}</option>
            			  </c:forEach>
        			</select>
   				</td> 			
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
    </form>
    
    <form action="findDiEmp4.action" method="post">
   			<tr>
   				<td width = "40%">离职类型</td>
   				<td>
   					<select name="leave_class" style="width: 156px; height: 30px">
						<option value="开除">开除</option>
						<option value="试用期未通过">试用期未通过</option>
						<option value="退休">退休</option>
						<option value="辞退">辞退</option>
					</select>
   				</td> 			
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
    </form>
    <form action="findDiEmp5.action" method="post">
   		
   			<tr>
   			<td>
   				入职日期
   			</td>
   			<td>
   				离职日期
   			</td>
   			</tr>
   			<tr>
   				<td>
   					<input name="entry_date" type="date">
   				</td> 	
   				<td>
   					<input name="leave_date" type="date">
   				</td> 		
   				<td colspan="2" align="center">
   					<input type="submit" value="查询">
   				</td>
   			</tr>
    </form>
</table>

  </body>
</html>
