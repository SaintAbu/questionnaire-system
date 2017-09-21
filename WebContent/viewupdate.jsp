<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="db2" class="bean.DBBean" scope="page" />
<%
String Grade=request.getParameter("Grade");
Grade = new String(Grade.getBytes("iso8859-1"),"utf-8");
String authority=request.getParameter("view");
authority = new String(authority.getBytes("iso8859-1"),"utf-8");
String sql1="update  register set authority= '"+authority+"' where Grade='"+Grade+"' ";
//System.out.println(sql1);
ResultSet rs=db2.executeQuery(sql1);
int i = db2.executeUpdate(sql1);
if (i == 1) {
	out.println("<script language='javaScript'> alert('修改成功，点击确定后自动跳到主页。');</script>");
	response.setHeader("refresh", "1;url=jump.jsp");
}
		db2.close();
%>
</body>
</html>