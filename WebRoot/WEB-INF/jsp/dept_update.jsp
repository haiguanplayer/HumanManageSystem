<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="dept_oneselect.action" method="post">
	<table border="1" width="70%" align="center">
   		<tr>
   			<td></td>
   			<td>序列</td>	
   			<td>名字</td>   				  			   			
   			<td>类别</td>  			  			
   			<td>电话</td>   			
   			<td>日期</td>
   		
   		</tr>		 
   		<tr>
   			<c:forEach items="${x}" var="x">
   				<tr>
   					<td><input name="dept_id" value="${x.dept_id}" type="radio" checked="checked"></td>
		   			<td>${x.dept_id}</td>
		   			<td>${x.dept_name}</td>
		   			<td>${x.dept_class}</td>
		   			<td>${x.dept_phone}</td>
		   			<td>${x.dept_build_date}</td>

		   		</tr>
	   		</c:forEach>
	   		</tr>
		<tr>
			<td colspan="2" align="center">
	   			<input name="jump" type="submit" value="修改">	   		
	   			<input name="jump" type="submit" value="返回" >
	   			 <input name="jump" type="submit" value="删除" > 
	   		<td>
	   		
   		</tr>
   		
   		
   	</table>
	</form>

   		

   			
</body>
</html>