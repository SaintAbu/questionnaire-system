<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看</title>
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

			<jsp:useBean id="db2" class="bean.DBBean" scope="page" />
			<table width="1050" height="40" border="1" align="center">
  			<tr>
    		<td width="77"><div align="center">序号</div></td>
    		<td width="236"><div align="center">技术需求名称</div></td>
    		<td width="147"><div align="center">需求时限</div></td>
    		<td width="173"><div align="center">科技活动类型</div></td>
    		<td width="100"><div align="center">审核状态</div></td>
    		<td width="100"><div align="center">审核意见</div></td>
    		<td width="65"><div align="center">查看</div></td>
    		<td width="65"><div align="center">删除</div></td>
  			</tr>
		</table>
			<%
 String Grade=new String(session.getAttribute("Grade").toString().getBytes("ISO-8859-1"),"UTF-8");

	//out.println("亲爱的："+Grade+"用户欢迎您"+"<br>");
	String sql1="select * from register where Grade="+"'"+Grade+"'";
	String sql2="select * from unit where Grade="+"'"+Grade+"'";
	String sql3="select * from register,unit where  register.Grade=unit.Grade and unit.Grade="+"'"+Grade+"'";
	//String sql3=sql1+sql2;
	//System.out.println("少时诵诗书   "+sql3);
	ResultSet rs=db2.executeQuery(sql3);
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
					<td width="236"><div align="center"><%=rs.getString(18) %></div></td>
					<td width="147"><div align="center"><%=rs.getString(19) %>年至<%=rs.getString(20) %>年</div></td>
					<td width="173"><div align="center"><%=rs.getString(37) %></div></td>
					<td width="100"><div align="center"><%=rs.getString(40)%></div></td>
					<td width="100"><div align="center"><a href=checkview.jsp?getName=<%=rs.getString(18) %>>审核意见</a></div></td>
					<td width="65"><div align="center"><a href=check.jsp?getName=<%=rs.getString(18) %>>查看</a></div></td>
					<td width="65"><div align="center"><a href=checkdelete.jsp?getName=<%=rs.getString(18) %>>删除</a></div></td>
					</tr>
				</table>							
			
		 <% } rs.close(); %>
</body>
</html>