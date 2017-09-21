<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--框架必需start-->
<script type="text/javascript" src="../js/jquery-1.4.js">
	
</script>
<script type="text/javascript" src="../js/framework.js">
	
</script>
<link href="../css/import_basic.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" id="skin" />
<!--框架必需end-->
<script type="text/javascript" src="../js/nav/ddaccordion.js">
	
</script>
<script type="text/javascript" src="../js/text/text-overflow.js">
	
</script>
<style>
a {
	
}

.categoryitems span {
	width: 160px;
}
</style>
<title>左侧栏</title>
<% request.setCharacterEncoding("UTF-8");%>
</head>
<body>
<body leftFrame="true" onload="hide()">
	<jsp:useBean id="db" class="bean.DBBean" scope="page" />
	<%
String Grade=new String(session.getAttribute("Grade").toString().getBytes("ISO-8859-1"),"UTF-8");
String sql="select * from register where Grade="+"'"+Grade+"'";
ResultSet rs=db.executeQuery(sql);
String id="";//权限
if(rs.next())
{
	id=rs.getString(10);//获取用户权限
	//System.out.println("id="+id);
	if(id.equals("0"))
	{
%>
<div id="scrollContent">
		<div class="arrowlistmenu">
			<div class="menuheader expandable">系统菜单</div>
			<ul class="categoryitems" id="category">
				<li><a href="../add.jsp;" target="frmright"><span>填写表格</span></a></li>
				<li><a href="../update.jsp;" target="frmright"><span>修改基础信息</span></a></li>
				<!-- <li><a href="../check.jsp;" target="frmright"><span>查看及提交</span></a></li>  -->
				<li><a href="../query.jsp;" target="frmright"><span>查看</span></a></li>
			</ul>
			</div>
			</div>
			<%
	}
	if(id.equals("1"))	 		
		{
			%>
			<div id="scrollContent">
		<div class="arrowlistmenu">
			<div class="menuheader expandable">系统菜单</div>
			<ul class="categoryitems" id="category">
			<li><a href="../update.jsp;" target="frmright"><span>修改基础信息</span></a></li>
				<!-- <li><a href="../check.jsp;" target="frmright"><span>查看及提交</span></a></li>  -->
				<li><a href="../querys.jsp;" target="frmright"><span>审核</span></a></li>
			</ul>
			</div>
			</div>
			<% 
			} 
	if(id.equals("2"))	 		
	{
		%>
		<div id="scrollContent">
	<div class="arrowlistmenu">
		<div class="menuheader expandable">系统菜单</div>
		<ul class="categoryitems" id="category">
		
					<li><a href="../peopledelete.jsp;" target="frmright"><span>用户授权</span></a></li>
		
		</ul>
					
		
		</div>
		</div>
		<% 
		} 
			}%>
</body>
</html>