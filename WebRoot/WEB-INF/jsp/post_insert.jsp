<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加岗位</title>
    <style>
    	.bg{
			background-image: url("img/table.jpg");
		}
		
    </style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body class="bg">
    <form action="post_insert.action" method="post">
    <table border="0" width="70%" align="center" >
    		<tr></tr>
    		<tr>
    			<td>岗位名称</td>
    			<td>
    				<input name="post_name"  id="pname" type="text">
    			</td>
    		</tr>
    		
    		<tr>
    			<td>岗位类型</td>
    			<td>
    				<select name="post_type">
    					<option value="管理">管理</option>
    					<option value="技术">技术</option>
    					<option value="营销">营销</option>
    					<option value="市场">市场</option>
    				</select>
    			</td>
    		</tr>
    		
    		<tr>
    			<td>岗位编制</td>
    			<td>
    				<input name="post_max" type="text">
    			</td>
    		</tr>
    		
    		<tr>
    			<td colspan="1" align="left">
    				<input type="submit" value="新建岗位" onclick="A()">
    			</td>
    			<td colspan="1" align="left">
    				<input type="button" onclick="javascript:window.history.go(-1)" value="返回">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
  <script type="text/javascript">
		function A(){			
			if(document.getElementById("pname").value=="")
				alert("错误：岗位名不能为空！");
	}
	</script>
</html>
