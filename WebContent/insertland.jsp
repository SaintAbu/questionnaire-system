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
		String Grade=(String)request.getParameter("Grade");
		String Name=(String)request.getParameter("Name");
		String dAdd=(String)request.getParameter("dAdd");
		String wAdd=(String)request.getParameter("wAdd");
		String Mail=(String)request.getParameter("Mail");
		String Stand=(String)request.getParameter("Stand");
		String PC=(String)request.getParameter("PC");
		String password=(String)request.getParameter("password");
		String confirm=(String)request.getParameter("confirm");
		String randcode=(String)request.getParameter("randcode");
		
		
		session.setAttribute("Grade",Grade);
		session.setAttribute("Name",Name);
		session.setAttribute("dAdd",dAdd);
		session.setAttribute("wAdd",wAdd);
		session.setAttribute("Mail",Mail);
		session.setAttribute("Stand",Stand);
		session.setAttribute("PC",PC);
		session.setAttribute("password",password);
		String rand=new String(session.getAttribute("rand").toString().getBytes("ISO-8859-1"),"UTF-8");
		%>
	<jsp:useBean id="db" class="bean.DBBean" scope="page" />

	<%
			String sql="select * from register where Grade="+"'"+Grade+"'";
	System.out.println("验证码"+Grade);
	System.out.println(sql);
	System.out.println("随机验证码"+rand);	
	ResultSet rs=db.executeQuery(sql);
		
			if(rs.next()){
	
			    if(password.equals(rs.getObject("confirm"))){
			    	if(randcode.equals(rand))
			    	{
			    		response.sendRedirect("index.jsp");
			    	}
			    	else
			    	{
			    		out.print("<script language='javaScript'> alert('验证码错误');</script>");
				    	response.setHeader("refresh", "1;url=land.jsp");
			    	}

			    }
			    else{
			    	out.print("<script language='javaScript'> alert('密码错误');</script>");
			    	response.setHeader("refresh", "1;url=land.jsp");
			    }
			}
			else{
				out.print("<script language='javaScript'> alert('未知错误');</script>");
		    	response.setHeader("refresh", "1;url=land.jsp");
			}
			rs.close();
			db.close();
		%>
</body>
</html>