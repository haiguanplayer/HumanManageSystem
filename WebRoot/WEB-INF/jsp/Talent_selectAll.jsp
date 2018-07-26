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
    
    <title>人才库信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  	<form  method="post">
  		<table border="0" width="70%" align="center">
  			<tr>
  				<td>   </td>
		    	<td>姓名</td>
		    	<td>性别</td>
		    	<td>手机号码</td>
		    	<td>生日</td>
		    	<td>身份证号</td>
		    	<td>来源</td>
		    	<td>学历</td>
		    </tr>
  			<c:forEach items="${u }" var="pw">
  				<tr>
  							<td> ${pw.p_id }</td>
  							<td> ${pw.p_name }</td>
							<td> ${pw.gender }</td>
							<td> ${pw.tel }</td>
							<td> ${pw.birth }</td>
							<td> ${pw.id_card }</td>
							<td> ${pw.score }</td>
					   	    <td> ${pw.edu }</td>
  				</tr>
  			</c:forEach>
  			<tr>
  				<td>
  					<a href = "talent_tiaohui.action" >
  						<input name = "caozuo" type="button" value="返回">
  					</a>
  				</td>
  			</tr>
  		</table>
  	</form>
  
  </body>
</html>
