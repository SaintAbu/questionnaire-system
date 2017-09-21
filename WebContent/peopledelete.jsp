<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户授权</title>
<style type="text/css">
/*设置超链接样式*/
table {
	border-collapse: collapse;
}
</style>
</head>
<body>
<table border="1"
		style="border-left-color: #000000; border-bottom-color: #000000; width: 701px; border-top-style: solid; border-top-color: #000000; border-right-style: solid; border-left-style: solid; height: 380px; border-right-color: #000000; border-bottom-style: #000000">
		<tbody>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="db2" class="bean.DBBean" scope="page" />
<table width="1050" height="40" border="1" align="center">
  			<tr>
  			<td width="77"><div align="center">序号</div></td>
    		<td width="77"><div align="center">机构代码(用户名)</div></td>
    		<td width="77"><div align="center">权限</div></td>
    		<td width="77"><div align="center">授权</div></td>
    		</tr>
		</table>
<% String sql1="select * from register ";
ResultSet rs=db2.executeQuery(sql1);
int k=0;
%>
<% 
	while(rs.next()){%>
   <% 
			    	k++;
					
			    %>
			    <table  width=1050 height=40 border=1 align=center >
				<tr>
					<td width="77"><div align="center"><%=k %></div></td>
					<td width="77"><div align="center"><%=rs.getString(1) %></div></td>
					<td width="77"><div align="center"><%=rs.getString(10) %></div></td>
					<td width="77"><div align="center"><a href=view.jsp?getName=<%=rs.getString(1) %>>更改权限</a></div></td>
					</tr>
				</table>							
			
		 <% } rs.close(); %>
</tbody>
</table>
</body>
</html>