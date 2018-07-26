<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>选择插入对象</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  	<form action="Talent_insert.action" method="post">
  		<table border="0" width="70%" align="center">
  			<tr>
  				<td>编号 </td>
  				<td>
  					<input name = "p_id" type="text">
  				</td>
  			</tr>
  			<tr>
  				<td>姓名</td>
  				<td>
  					<input name = "p_name" type="text">
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
 	 				<input name = "birth" type="text">
				</td>
			</tr>
			<tr>
 	 			<td>身份证号</td>
 	 			<td>
 	 				<input name = "id_card" type="text">
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
  				<td>
  					<a href = "talent_tiaohui.action">
  						<input name = "fanhui" type="button" value="返回">
  					</a>
  					<input name = "caozuo" type="submit" value = "确定">
  				</td>
  			</tr>
  		</table>
  	</form>
  
  </body>
</html>
