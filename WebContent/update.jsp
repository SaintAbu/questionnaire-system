<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
/*设置超链接样式*/
table {
	border-collapse: collapse;
}
</style>
<body>
	<form name="form2" action="insertupdate.jsp">
		<div id="tabContent1" style="display: block">
			<center>
				<table>
					<jsp:useBean id="db3" class="bean.DBBean" scope="page" />
					<%
 String Grade=new String(session.getAttribute("Grade").toString().getBytes("ISO-8859-1"),"UTF-8");

	String sql="select * from register where Grade="+"'"+Grade+"'";
	ResultSet rs=db3.executeQuery(sql);
	%>
					<% 
	while(rs.next()){%>



					<br>
					<tr>
						<td width="50%" colspan="3" rowspan="1">机构代码<input
							type="text" size=30 name="Grade" readonly="true"
							value='<%=rs.getString(1)%>'></td>

					</tr>
					<tr>
						<td width="50%" colspan="3" rowspan="1">机构全称<input
							type="text" size=30 name="Name" value='<%=rs.getString(2)%>'></td>

					</tr>
					<tr>
						<td colspan="3" rowspan="1">通讯地址<input name="dAdd"
							type="text" size=30 value='<%=rs.getString(3)%>'></td>

					</tr>
					<tr>
						<td colspan="3" rowspan="1">单位网址<input name="wAdd"
							type="text" size=30 value='<%=rs.getString(4)%>'></td>
					</tr>
					<tr>
						<td colspan="3" rowspan="1">电子信箱<input name="Mail"
							type="text" size=30 value='<%=rs.getString(5)%>'></td>
					</tr>
					<tr>
						<td colspan="3" rowspan="1">法人代表<input name="Stand"
							type="text" size=30 value='<%=rs.getString(6)%>'></td>
					</tr>
					<tr>
						<td colspan="3" rowspan="1">邮政编码<input name="PC" type="text"
							size=30 value='<%=rs.getString(7)%>'></td>
					</tr>
					<% } %>
					<tr>
						<td><input type="submit" onclick="checkForm()" value="保存修改"></td>
						<td><input type="button" name="jump" value="取消"
							onclick="location.href='add.jsp'" /></td>
					</tr>
					</tbody>
				</table>
			</center>
	</form>
</body>
</html>