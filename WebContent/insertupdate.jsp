<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录验证</title>
<% request.setCharacterEncoding("UTF-8");%>
</head>
<body>
	<%
	    request.setCharacterEncoding("UTF-8");
	String Grade=request.getParameter("Grade");
	Grade = new String(Grade.getBytes("iso8859-1"),"utf-8");
	
	
	String Name=request.getParameter("Name");
	Name = new String(Name.getBytes("iso8859-1"),"utf-8");
	
	
	String dAdd=request.getParameter("dAdd");
	dAdd = new String(dAdd.getBytes("iso8859-1"),"utf-8");
	
	String wAdd=request.getParameter("wAdd");
	wAdd = new String(wAdd.getBytes("iso8859-1"),"utf-8");
	
	String Mail=request.getParameter("Mail");
	Mail = new String(Mail.getBytes("iso8859-1"),"utf-8");
	
	String Stand=request.getParameter("Stand");
	Stand = new String(Stand.getBytes("iso8859-1"),"utf-8");
	
	String PC=request.getParameter("PC");
	PC = new String(PC.getBytes("iso8859-1"),"utf-8");
		
		%>
	<jsp:useBean id="db5" class="bean.DBBean" scope="page" />

	<%
	
			//String sql="select * from register where Grade="+"'"+Grade+"'";
	String sql2="update  register set Name= '"+Name+"' ,dAdd= '"+dAdd+"',wAdd= '"+wAdd+"',Mail= '"+Mail+"' ,Stand= '"+Stand+"' ,PC= '"+PC+"' where Grade='"+Grade+"' ";
	//System.out.println(sql2);
	//System.out.println(SStand);
	//System.out.println(dy);
	//System.out.println(people);
	db5.executeUpdate(sql2);
	int i = db5.executeUpdate(sql2);
	if (i == 1) {
		out.println("<script language='javaScript'> alert('修改成功，点击确定后自动跳到主页。');</script>");
		response.setHeader("refresh", "1;url=jump.jsp");
	}
			db5.close();
		%>
</body>
</html>