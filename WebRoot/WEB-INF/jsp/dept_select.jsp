<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="dept_selectnum.action" method="post">
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
   					<td><input name="dept_name" value="${x.dept_name}" type="radio" checked="checked"></td>
		   			<td>${x.dept_id}</td>
		   			<td>${x.dept_name}</td>
		   			<td>${x.dept_class}</td>
		   			<td>${x.dept_phone}</td>
		   			<td>${x.dept_build_date}</td>

		   		</tr>
	   		</c:forEach>
	   		<td colspan="2" align="center">
   					<input type="submit" value="确认" ">
   					<input type="button"  value="返回" onclick="A()">
   					
   			</td>
	   		</tr>
	   		
	</table>
	</form>
	<form id="addform" action="">
    	<input type="hidden" name="jump" value="返回">
    </form>
	<script type="text/javascript">
		function A(){
			document.forms.addform.action="talent_tiaohui.action";
		       document.forms.addform.submit();
			
		}
	</script>		
</body>
</html>