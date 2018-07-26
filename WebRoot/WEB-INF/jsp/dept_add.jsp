<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加部门</title>
    
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
    <form action="dept_add.action" method="post">
    	<table border="1" width="70%" align="center">
    	<%-- <c:forEach items="${x}" var="x">
   				<tr>
		   			<td>${x.dept_id}</td>
		   			<td>${x.dept_name}</td>
		   			<td>${x.dept_class}</td>
		   			<td>${x.dept_phone}</td>
		   			<td>${x.dept_build_date}</td>

		   		</tr>
	   		</c:forEach> --%>
   			<tr>
   				<td>部门名字</td>
   				<td>
   					<input name="dept_name" id="name" type="text">*
   				</td>
   			</tr>
   			<tr>
   				<td>部门类别</td>
   				<td>
   					
   					<select name="dept_class">
   						<option value="部门" label="部门">部门
   						<option value="公司" label="公司">公司
   					</select>*
   					<!-- <input name="dept_class" type="text"> -->
   				</td>
   			</tr>
   			<tr>
   				<td>部门电话</td>
   				<td>
   					<input name="dept_phone" id="phone" type="text">*
   				</td>
   			</tr>
   			<tr>
   				<td>部门成立日期</td>
   				<td>
   					<input name="dept_build_date" id="date" type="date">*
   				</td>
   			</tr>
   			
   			<tr>
   				<td colspan="2" align="center">
   					<input type="submit" value="确认" onclick="A()">
   					<input type="button" name="jump" value="返回" onclick="B()">
   				</td>
   				<!-- <td colspan="2" align="center">
   					<input type="submit" value="返回">
   				</td> -->
   			</tr>
   			
   		</table>
    </form>
    <form id="addform" action="">
    	<input type="hidden" name="jump" value="返回">
    </form>

<script type="text/javascript">
		function A(){			
			if(document.getElementById("name").value=="")
				alert("错误：部门名不能为空！");
			else if(document.getElementById("phone").value=="")
				alert("错误：部门电话不能为空！");
			else if(document.getElementById("date").value=="")
				alert("错误：部门创建日期不能为空！");
	}
		function B(){
			document.forms.addform.action="talent_tiaohui.action";
		       document.forms.addform.submit();
		}
</script>
  </body>
</html>
