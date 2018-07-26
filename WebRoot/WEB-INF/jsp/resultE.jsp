<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看月报表</title>   
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
   	<script type="text/javascript">
	  </script>
	  <c:set var = "useSum1" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum1" value = "${useSum1+y.mone }" />
			</c:forEach>
	<c:set var = "useSum2" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum2" value = "${useSum2+y.mtwo }" />
			</c:forEach>
			<c:set var = "useSum3" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum3" value = "${useSum3+y.mthree }" />
			</c:forEach>
			<c:set var = "useSum4" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum4" value = "${useSum4+y.mfour }" />
			</c:forEach>
			<c:set var = "useSum5" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum5" value = "${useSum5+y.mfive }" />
			</c:forEach>
			<c:set var = "useSum6" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum6" value = "${useSum6+y.msix }" />
			</c:forEach>
			<c:set var = "useSum7" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum7" value = "${useSum7+y.mseven }" />
			</c:forEach>
			<c:set var = "useSum8" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum8" value = "${useSum8+y.meight }" />
			</c:forEach>
			<c:set var = "useSum9" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum9" value = "${useSum9+y.mnine }" />
			</c:forEach>
			<c:set var = "useSum10" value = "0" />
			<c:forEach items = "${x }" var = "y">
				<c:set var = "useSum10" value = "${useSum10+y.mten }" />
			</c:forEach>  
	<table border="1" width="90%" align="center" style="border-collapse:collapse;" id="mytable">
		<tr>
			<td colspan="9" align="center">人事月表</td>
			<td colspan="2" align="center">时间：${month }</td>
		</tr>
		<tr align="center">
			<th colspan="7">人数统计</th>
			<th colspan="4">学历统计</th>
		</tr>
		<tr>
			<th>部门名称</th>
			<th>月初人数</th>
			<th>月末人数</th>
			<th>本月新入职</th>
			<th>本月离职</th>
			<th>本月调入</th>
			<th>本月调出</th>
			<th>研究生</th>
			<th>本科</th>
			<th>大专</th>
			<th>高中及以下</th>		
		</tr>	
		<c:forEach var="y" items="${x}">
		<tr>	
	  			<td >${y.mzero }</td>
   	 			<td >${y.mone }</td>
   	 			<td >${y.mtwo }</td>
   	 			<td >${y.mthree }</td>
   	 			<td >${y.mfour }</td>
   	 			<td >${y.mfive }</td>
   	 			<td >${y.msix }</td>
   	 			<td >${y.mseven }</td>
   	 			<td >${y.meight }</td>
   	 			<td >${y.mnine }</td>
   	 			<td >${y.mten }</td>	
   	 	</tr>	
	 	</c:forEach>		
		<tr>
			<td>合计</td>
			<td>${useSum1 }</td>
			<td>${useSum2 }</td>
			<td>${useSum3 }</td>
			<td>${useSum4 }</td>
			<td>${useSum5 }</td>
			<td>${useSum6 }</td>
			<td>${useSum7 }</td>
			<td>${useSum8 }</td>
			<td>${useSum9 }</td>
			<td>${useSum10 }</td>
			
		</tr> 
		<tr>
			<td>
				<a href = "resultE_dayin.action?reporttype=${cc }&sdate=${aa}&edate=${bb}&deptname=${dd}">
					<input name = "dayin" type="button" value="打印">
				</a>
			</td>
		</tr>
	</table>
</body>

</html>