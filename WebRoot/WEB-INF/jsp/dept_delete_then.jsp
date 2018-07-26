<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="dept_delete.action" method="post">
	<table border="1" width="70%" align="center">
		<tr>
   			<td>序列</td>	
   			<td>名字</td>   				  			   			
   			<td>类别</td>  			  			
   			<td>电话</td>   			
   			<td>日期</td>
   			<td>人数</td>
   		</tr>		
   		<tr>
   				<tr>
   					
		   			<td>${x.dept_id}
		   				<input type="hidden" name="dept_id" value="${x.dept_id}" />
		   			</td>
		   			<td>${x.dept_name}
		   				<input type="hidden" name="dept_name" value="${x.dept_name}" />
		   			</td>
		   			<td>${x.dept_class}
		   				<input type="hidden" name="dept_class" value="${x.dept_class}" />
		   			</td>
		   			<td>${x.dept_phone}
		   				<input type="hidden" name="dept_phone" value="${x.dept_phone}" />
		   			</td>
		   			<td>${x.dept_build_date}
		   				<input type="hidden" name="dept_build_date" value="${x.dept_build_date}" />
		   			</td>
		   			<td>${x.count}
		   				<input type="hidden" name="count" value="${x.count}" />
		   			</td>
		   		</tr>
		   		<tr>
   				<td colspan="2" align="center">
   					<input type="submit" value="确认删除" onclick="A()">
   				</td>
   			</tr>
	</table>
	</form>
	<script type="text/javascript">
		function A(){
			var r1= ${x.count};
			if(r1>0){
				alert("人数不为空无法删除");
				return false;
			}
			
	}
</script>
</body>
</html>