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
    
    <title>My JSP 'sel.jsp' starting page</title>
    
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
      <form action="chasel.action" method="post" onsubmit="return checkDirection()">
     	<table border="1" width="90%" align="center">
     		<tr>
     			<td width = "20%">
     				员工号
     			</td>
     			<td><input name = "p_id" type="text" value="${x.p_id }" onfocus="this.blur()"  style="background:transparent;border:0"></td>
     		</tr>
     		<tr>
     			<td>
     				姓名
     			</td>
     			<td>
     				<input name = "p_name" type="text"  value="${x.p_name }" onfocus="this.blur()" style="wbackground:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>出生日期</td>
     			<td>
     				<input name = "birth" type="text"  value="${x.birth }" onfocus="this.blur()" style="background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				身份证号
     			</td>
     			<td>
     				<input name = "id_card" type="text"  value="${x.id_card }" onfocus="this.blur()" style="background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				性别
     			</td>
     			<td>
     				<input name = "gender" type="text"  value="${x.gender }" onfocus="this.blur()" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				学历
     			</td>
     			<td>
     				<input name = "edu" type="text"  value="${x.edu }" onfocus="this.blur()" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				手机号码
     			</td>
     			<td>
     				<input name = "tel" type="text"  value="${x.tel }" onfocus="this.blur()" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				部门
     			</td>
     			<td>
     				<input name = "dept_name" type="text" value = "${x.dept_name }" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				岗位
     			</td>
     			<td>
     				<input name = "post_name" type="text" value = "${x.post_name }" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				入职时间
     			</td>
     			<td>
     				<input name = "entry_date" type="date"  value="${x.entry_date }" onfocus="this.blur()" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				转正时间
     			</td>
     			<td>
     				<input name = "work_date" type="date"  value="${x.work_date }" onfocus="this.blur()" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		<tr>
     			<td>
     				招聘方式
     			</td>
     			<td>
     				<input name = "score" type="text"  value="${x.score }" onfocus="this.blur()" style=" background:transparent;border:0">
     			</td>
     		</tr>
     		</table>
     		<table border="1" width="90%" align="center" >
     		<tr>
     			<td width="20%">
     				离职时间
     			</td>
     			<td>
     				<input name = "leave_date"  id ="date" type="date"  onblur="checkDate()">
     				<a href="#" id="dateclass" class=""> </a>	
     					<span  style="font-size:13px" id="datespan"></span> 
     			</td>
     		</tr>
     		<tr>
     			<td>离职方式</td>
     			<td>
     				<select name="leave_class" style="width: 156px; height: 30px">
						<option value="开除">开除</option>
						<option value="试用期未通过">试用期未通过</option>
						<option value="退休">退休</option>
						<option value="辞退">辞退</option>
						<option value="试用期未通过">试用期未通过</option>
					</select>
     			</td>
     		</tr>
     		<tr>
     			<td>
     				离职去向
     			</td>
     			<td>
     				<input name = "leave_direction"   id="direction" type="text"  
     					onblur="checkDirection()" 
     					> <a href="#" id="directionclass" class=""> </a>	
     					<span  style="font-size:13px" id="directionspan"></span> 
     			</td>
     		</tr>
     		<tr>
     			<td>
     				是否进入人才库
     			</td>
     			<td>
     				<select name="whether" style="width: 156px; height: 30px">
						<option value="是">是</option>
						<option value="否">否</option>
					</select>
     			</td>
     		</tr>
     		<tr>
     			<td>
     				备注
     			</td>
     			<td>
     				<input name = "remarks" type="text" >
     			</td>
     		</tr>
     		
     		
     		<tr>	
     		<td></td>
     			<td align = "center">
     				<input name = "tijiao"   type="submit"  value="提交" onclick="formSubmit()">
     			</td>
     		</tr>
     	</table>
     	<c:if test=""></c:if>
      </form>
      <script type="text/javascript">
		 function formSubmit(){   
		 	 if(confirm('是否确定？')){ 
		        document.getElementById("myForm").submit();   
			 }
		 }
		 
 function checkDate(){  
  			  var date = document.getElementById("date").value;  
    			var spanNode = document.getElementById("datespan");  
    //日期的规则： XXXX-XX-XX
    			
   				  var reg = /^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/; ;        
   				 if(reg.test(date)){  
        //符合规则 
      			  spanNode.innerHTML = "".fontcolor("green");  
      				  document.getElementById("dateclass").className = "icon ticker";   
       				 return true;  
   					 }else{  
        //不符合规则  
      				  spanNode.innerHTML = "日期格式不正确，YYYY-MM-DD".fontcolor("red");  
       					 document.getElementById("dateclass").className = "icon into";
       					 return false;
   				 }     
}   
			function checkDirection(){  
  			  var direction = document.getElementById("direction").value;  
    			var spanNode = document.getElementById("directionspan");  
    //去向的规则： ，包含任意的字母、数字、中文，不可以使用其他符号
    			
   				  var reg = /^([\u4e00-\u9fa5]|[a-zA-Z0-9]){1,100}$/i;        
   				 if(reg.test(direction)){  
        //符合规则 
      			  spanNode.innerHTML = "".fontcolor("green");  
      				  document.getElementById("directionclass").className = "icon ticker";   
      				 
					if(checkDate()==true)
					{
       					 return true;  
       					 }
       					else
       					{
       						return false;
       					}
   					 }
   					 else{   
        //不符合规则  
      			
       			
      				  spanNode.innerHTML = "该项不能为空，包含任意中文、字母、数字，不能为其他符号".fontcolor("red");  
       					 document.getElementById("directionclass").className = "icon into";    
        				return false;  
   				 		}     
}   		
	

   
</script>
      
  </body>
</html>
