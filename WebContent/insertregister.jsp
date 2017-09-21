<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加信息</title>
</head>

<body>
	<jsp:useBean id="dbb" class="bean.DBBean" scope="page" />
	<%			
		String Grade=request.getParameter("Grade");
	    Grade = new String(Grade.getBytes("iso8859-1"),"utf-8");
		String Name=(String)request.getParameter("Name");
		Name = new String(Name.getBytes("iso8859-1"),"utf-8");
		String dAdd=(String)request.getParameter("dAdd");
		dAdd = new String(dAdd.getBytes("iso8859-1"),"utf-8");
		String wAdd=(String)request.getParameter("wAdd");
		wAdd = new String(wAdd.getBytes("iso8859-1"),"utf-8");
		String Mail=(String)request.getParameter("Mail");
		Mail = new String(Mail.getBytes("iso8859-1"),"utf-8");
		String Stand=(String)request.getParameter("Stand");
		Stand = new String(Stand.getBytes("iso8859-1"),"utf-8");
		String PC=(String)request.getParameter("PC");
		PC = new String(PC.getBytes("iso8859-1"),"utf-8");
		String password=(String)request.getParameter("password");
		String confirm=(String)request.getParameter("confirm");
		String s ="select * from register";
		ResultSet rs=dbb.executeQuery(s);
		boolean exit=true;
		while(rs.next())
		{
			if(Grade.equals(rs.getString(1)))
					{
				exit = false;
				out.println("<script language='javaScript'> alert('用户名已存在，请重新输入。');</script>");
				response.setHeader("refresh", "1;url=register.jsp");
				
					}
		}
		if(exit)
		{
			if(password.equals(""))
			{
				out.println("<script language='javaScript'> alert('密码不能为空，请重新输入。');</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
			else if(password.equals(confirm))
			{
				
				String sql2="insert into register values('"+Grade+"','"+Name+"','"+dAdd+"','"+wAdd+"','"+Mail+"','"+Stand+"','"+PC+"','"+password+"','"+confirm+"','0')";
				dbb.execQuery(sql2);
				out.println("<script language='javaScript'> alert('注册成功，点击返回登陆界面。');</script>");
				response.setHeader("refresh", "1;url=jump.jsp");
			}
			else 
			{
				//System.out.println("QQQQ:"+password+"hhhh:"+confirm);
				out.println("<script language='javaScript'> alert('密码与确认密码不同，请重新输入。');</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
				
		}
		
		
		
		dbb.close();
	%>





</body>
</html>
