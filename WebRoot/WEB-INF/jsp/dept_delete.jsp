<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
   				<td>要删除的ID</td>
   				<td>
   					<input name="dept_id" type="text">
   				</td>
   			</tr>
   			
   			<tr>
   				<td>要删除的部门</td>
   				<td>
   					<input name="dept_name" type="text">
   				</td>
   			</tr>
   			
   			<tr>
   				<td colspan="2" align="center">
   					<input name="jump" type="submit" value="删除">
   					<input type="button" name="jump" value="返回" onclick="B()">
   				</td>
   			</tr>
   			
   		</table>
    </form>
    <form id="addform" action="">
    	<input type="hidden" name="jump" value="返回">
    </form>
    <script type="text/javascript">
    	function B(){
    		document.forms.addform.action="talent_tiaohui.action";
		       document.forms.addform.submit();
    	}
    </script>
</body>
</html>