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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("UTF-8");%>
</head>
<% request.setCharacterEncoding("UTF-8");%>
<body>
<jsp:useBean id="db7" class="bean.DBBean" scope="page" />
			<%
			request.setCharacterEncoding("UTF-8");
			String jishushenhe=request.getParameter("view");
			String xsshenhe=request.getParameter("xsshenhe");
			String Grade=request.getParameter("Grade");
			Grade = new String(Grade.getBytes("iso8859-1"),"utf-8");
			//System.out.println("111   "+Grade);
		//	System.out.println("1222   "+xsshenhe);
			//System.out.println("111   "+jishushenhe);
	String sql2="update  unit set xsshenhe= '"+xsshenhe+"',jishushenhe= '"+jishushenhe+"' where Grade='"+Grade+"'";
	//System.out.println(sql2);
	int i = db7.executeUpdate(sql2);
	if (i == 1) {
		out.println("<script language='javaScript'> alert('审核成功，点击确定后自动跳到审核界面。');</script>");
		response.setHeader("refresh", "1;url=querys.jsp");
	}
			db7.close();
		%>
</body>
</html>