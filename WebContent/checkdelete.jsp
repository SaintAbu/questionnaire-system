<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db3" class="bean.DBBean" scope="page" />
			<%
 String Grade=new String(session.getAttribute("Grade").toString().getBytes("ISO-8859-1"),"UTF-8");
			request.setCharacterEncoding("UTF-8");
			String xqName=request.getParameter("getName");
			xqName = new String(xqName.getBytes("iso8859-1"),"utf-8");
	String sql3="delete from unit where  xqName="+"'"+xqName +"' and Grade="+"'"+Grade+"'";
	//System.out.println(  "iiii"+   sql3);
	int i = db3.executeUpdate(sql3);
	if (i == 1) {
		out.println("<script language='javaScript'> alert('删除成功，点击确定后自动跳到查看界面。');</script>");
		response.setHeader("refresh", "1;url=query.jsp");
	}
	db3.close();
	%>

</body>
</html>