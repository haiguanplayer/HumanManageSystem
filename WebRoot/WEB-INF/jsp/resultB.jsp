<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>离职员工报表</title>
</head>
<body>
 <script type="text/javascript">
	var index=0;
	  </script>
	<table border="1" width="70%" align="center" style="border-collapse:collapse;">
		<tr>
			<td colspan="5" align="center">离职员工表</td>
			<td colspan="2" align="center" >时间：${aa }~${bb }</td>	
		</tr>
		<tr align="center">
			<th>序号</th>
			<th>部门</th>
			<th>岗位</th>
			<th>姓名</th>
			<th>性别</th>
			<th>离职日期</th>
			<th>离职原因</th>
		</tr>
		<c:forEach var="y" items="${x}">
			<tr>
			<td>
			    <script type="text/javascript">
			    index=index+1;
		 document.write(index);
	  </script>
	  </td>
   	 			<td >${y.dept_name }</td>
   	 			<td >${y.post_name }</td>
   	 			<td >${y.p_name }</td>
   	 			<td >${y.gender }</td>
   	 			<td >${y.leave_date }</td>
   	 			<td >${y.leave_class }</td>	
   	 		</tr>	
		</c:forEach>
		<tr>
			<td>
				<a href = "resultB_dayin.action?reporttype=${cc }&sdate=${aa}&edate=${bb}&deptname=${dd}">
					<input name = "dayin" type="button" value="打印">
				</a>
			</td>
		</tr>
	</table>
</body>
</html>