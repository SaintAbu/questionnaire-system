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
			//System.out.println(  "iiii"+   xqName);
	String sql3="select * from unit where  xqName="+"'"+xqName +"' and Grade="+"'"+Grade+"'";
	ResultSet rs=db3.executeQuery(sql3);
	//System.out.println(  "iiii"+   sql3);
	%><% 
	while(rs.next()){
		%>
		<td width="50%" colspan="3" rowspan="1">审核意见</td>
		<td width="50%" colspan="3" rowspan="1"><input type="text" style="background:transparent"
										size=30 name="Name" readonly="true"
										value='<%=rs.getString(31)%>'> </td>
		<% 
	}%>

</body>
</html>