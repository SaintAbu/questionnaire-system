<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>授权</title>
</head>
<body>
<form action="viewupdate.jsp" method="post">
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="db2" class="bean.DBBean" scope="page" />
<%
String Grade=request.getParameter("getName");
Grade = new String(Grade.getBytes("iso8859-1"),"utf-8");
String sql1="select * from register where Grade='"+Grade+"' ";
ResultSet rs=db2.executeQuery(sql1);

%>
<table>
<tr>
  <td>请输入权限对应的数字（“0” 代表普通用户，“1”代表形式审核用户）</td>
<td ><input name="view" type="text" size=30></td>
<% while(rs.next()){%>
   
<input    type="hidden" name="Grade"    value='<%=rs.getString(1)%>' >
<%}%>
</tr>
</table>
<td><input type="submit" value="确认" onclick="return check(form);"></td>
	</form>
</body>
</html>