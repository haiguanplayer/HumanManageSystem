<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		/*基本信息*/
		.hder_body {font:7px Tahoma;margin:0px;text-align:center;background:#FFF ;}
		.hder_body a:link,hder_body a:visited {font-size:13px;text-decoration: none;}
		.hder_body a:hover{}
		
		/*页面层容器*/
		#container {width:100%;height:7px;margin:7px auto}
		
		/*页面头部*/
		#header {background:url() no-repeat}
		#menu {padding:5px 250px 0 0}
		#menu ul {float:right;list-style:none;margin:0px;}
		#menu ul li {float:left;display:block;line-height:13px;margin:0 5px}
		#menu ul li a:link,#menu ul li a:visited {font-weight:bold;color:#666}
		#menu ul li a:hover{}
		.menuDiv {width:1px;height:13px;background:#999}
		#banner {background:url(banner.jpg) 0 30px no-repeat;width:100%;margin:auto;height:10px;border-bottom:5px solid #EFEFEF;clear:both}
		
		/*页面主体*/
		#pagebody {width:100%;margin:0 auto;height:400px;background:#CCFF00}
		
		/*页面底部*/
		#footer {width:100%;margin:0 auto;height:50px;background:#00FFFF}
	
	*{ margin:0px; padding:0px;background-repeat:no-repeat;list-style-type:none;}
	a:link {text-decoration:none;}
	a:visited {text-decoration:none;}
	a:hover {text-decoration:none;}
	a:active {text-decoration:none;}
	#nav{ width:83%; height:40px; line-height:40px;margin:25px auto 0;padding-left:16.9%; background: rgba(0,0,0,0.35); }
	#nav ul{list-style:none;}
	#nav ul li{ width:115px; float:left; line-height:40px; text-align:center; position:relative;}
	#nav ul li a{ text-decoration:none; color:#000; display:block;padding:0px 10px;}
	#nav ul li a:hover{ color:#FFF; background:#333}
	#nav ul li ul{ position:absolute; display:none;}
	#nav ul li ul li{ float:none; line-height:30px; text-align:center;background: rgba(0,0,0,0.25);font-size: 15px;}
	#nav ul li ul li a:hover{ background-color:#06f;text-decoration:none;width:83%;}
	#nav ul li:hover ul{ display:block}

	
	
</style>
</head>
<body >
	<div id="container">
		<div id="header">
			<div id="menu">
				<ul>
					<li><a href=""  target="_blank">登录</a></li>
					<li class="menuDiv" ></li>
					<li><a href=""  target="_blank">注销</a></li>
					<li class="menuDiv"></li>
					<li><a href=""  target="_blank">联系客服</a></li>
				</ul>
			</div>
			<div id="banner">
			</div>
		</div>
	</div>
	
	<!-- NavigationBar-->
	<div id="nav">
		<ul>
			<li><a>首页</a></li>
			<li><a>员工管理</a>
				<ul>
					<li><a href="emp_summary.action">员工档案</a></li>
				</ul>
			</li>
			<li><a>临时员工</a>
				<ul>
					<li><a href="Temp_findTemp.action">试用期限查询</a></li>
					<li><a href="Temp_findByNow.action">临时员工转正</a></li>
				</ul>
			</li>			
			<li><a>部门管理</a>
				<ul>
					<li><a href="dept_select.action?jump=select">查询部门员工</a></li>
					<li><a href="dept_select.action?jump=update">修改部门信息</a></li>
					<li><a href="dept_addjsp.action?page=add">新建部门</a></li>
					<!-- <li><a href="dept_addjsp.action?page=delete">删除部门</a></li> -->
				</ul>
			</li>
			<li><a>岗位管理</a>
				<ul>
					<li><a href="post_posttable.action?action=operate">操作岗位</a></li>
					<li><a href="post_posttable.action?action=insert">新建岗位</a></li>
				</ul>
			</li>
			<li><a>人才库</a>
				<ul>
					<li><a href="Talent_select.action">人员信息</a></li>
					<li><a href="Talent_insertonjsp.action">手动添加</a></li>
				</ul>
			</li>	
			<li><a>职务管理</a>
				<ul>
					<li><a href="emp_ruzhi.action">入职管理</a></li>
					<li><a href="Dim_main.action">离职管理</a></li>
				</ul>	
			</li>

			<li class = "last"><a>报表管理</a>
				<ul>
					<li><a href="ReportA_jump.action">新聘员工报表</a></li>
					<li><a href="ReportB_jump.action">离职员工报表</a></li>
					<li><a href="ReportC_jump.action">部门调动报表</a></li>
					<li><a href="ReportD_jump.action">岗位调动报表</a></li>
					<li><a href="ReportE_jump.action">人事月报</a></li>
				</ul>
			</li>
		</ul>
	</div>
	
	
</body>
</html>