<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加</title>
    
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
        <sql:query dataSource="${snapshot}" var="dept">
		 	select dept_name from department;
		</sql:query>
        <sql:query dataSource="${snapshot}" var="post">
		 	select post_name from post;
		</sql:query>
 	 <form action="emp_insert.action" method="post">
		<table border="0" width="70%" align="center">
			<tr>
 	 			<td>姓名</td>
 	 			<td>
 	 				<input name = "p_name" id="name" type="text">
 	 			</td>
 	 		</tr>
			<tr>
 	 			<td>性别</td>
 	 			<td>
 	 				<select name="gender" style="width: 156px; height: 30px">
 	 					<option value="男" selected="selected">男</option>
 	 					<option value="女">女</option>
 	 				</select>
				</td>
			</tr>
			<tr>
				<td>手机号码</td>
				<td>
					<input name = "tel" type="text">
				</td>
			</tr>
			<tr>
 	 			<td>出生日期</td>
 	 			<td>
 	 				<input name = "birth" id="bir" type="text">
				</td>
			</tr>
			<tr>
 	 			<td>身份证号</td>
 	 			<td>
 	 				<input name = "id_card" id="card" type="text">
				</td>
			</tr>
 	 		<tr>
 	 			<td>来源</td>
 	 			<td>
 	 				<select name="score" style="width: 156px; height: 30px">
 	 					<option value="校园招聘" selected="selected">校园招聘</option>
 	 					<option value="社会招聘">社会招聘</option>
 	 					<option value="其他">其他</option>
 	 				</select>
				</td>
			</tr>
			<tr>
 	 			<td>学位</td>
 	 			<td>
 	 				<select name="edu" style="width: 156px; height: 30px">
 	 					<option value="高中及以下" selected="selected">高中及以下</option>
 	 					<option value="大专">大专</option>
 	 					<option value="本科">本科</option>
 	 					<option value="研究生">研究生</option>
 	 				</select>
				</td>
			</tr>
			<tr>
 	 			<td>部门</td>
 	 			<td>
	 	 			<select name="dept_name" >
	          			 <c:forEach var="row" items="${dept.rows}">
	           				 <option value="<c:out value="${row.dept_name}"/>">${row.dept_name}</option>
	            		 </c:forEach>
	        		</select>
        		</td>
 	 		</tr>
 	 		<tr>
 	 			<td>岗位</td>
 	 			<td>
	 	 			<select name="post_name" >
	          			 <c:forEach var="row" items="${post.rows}">
	           				 <option value="<c:out value="${row.post_name}"/>">${row.post_name}</option>
	            		 </c:forEach>
	        		</select>
        		</td>
 	 		</tr>
 	 		<tr>
 	 			<td>入职时间</td>
 	 			<td>
 	 				<input name = "entry_date" id="edate" type="date">
				</td>
			</tr>
			<tr>
 	 			<td>转正时间</td>
 	 			<td>
 	 				<input name = "work_date" id="wdate" type="date">
				</td>
			</tr>
 	 		<tr>
 	 			<td>用工形式</td>
 	 			<td>
 	 				<select name="work_state" style="width: 156px; height: 30px">
 	 					<option value="正式工">正式工</option>
 	 					<option value="临时工" selected="selected">临时工</option>
 	 				</select>
				</td>
			</tr>
			<tr>
 	 			<td>评价</td>
 	 			<td>
 	 				<input name = "remake" type="text">
				</td>
			</tr>
			<tr>
				<td>
					<input name = "caozuo" type="button" onclick="javascript:window.history.back(-1)" value="返回">
					<input name = "caozuo" type="submit"  value="提交" onclick="A()">
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		function A() {
			if(document.getElementById("id").value=="")
				alert("id不能为空");
			else if(document.getElementById("name").value=="")
				alert("姓名不能为空");
			else if(document.getElementById("bir").value=="")
				alert("生日不能为空");
			else if(document.getElementById("card").value=="")
				alert("身份证不能为空");
			else if(document.getElementById("edate").value=="")
				alert("入职时间不能为空");
		}
	
	</script>
  </body>
</html>
