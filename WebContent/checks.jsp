<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>审核</title>
<style type="text/css">
/*设置超链接样式*/
table {
	border-collapse: collapse;
}
</style>
<% request.setCharacterEncoding("UTF-8");%>
</head>
<body>
<form action="xssh.jsp" method="post">
<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<h3 class="text-center">
						<center>河北省重大技术需求征集表</center>
					</h3>
					<center>
	<table border="1"
		style="border-left-color: #000000; border-bottom-color: #000000; width: 701px; border-top-style: solid; border-top-color: #000000; border-right-style: solid; border-left-style: solid; height: 380px; border-right-color: #000000; border-bottom-style: #000000">
		<tbody>

			<jsp:useBean id="db2" class="bean.DBBean" scope="page" />
			<%
			request.setCharacterEncoding("UTF-8");
			String xqName=request.getParameter("getName");
			xqName = new String(xqName.getBytes("iso8859-1"),"utf-8");
	String sql3="select * from register,unit where  register.Grade=unit.Grade and unit.xqName="+"'"+xqName +"'";
	//System.out.println(sql3);
	ResultSet rs=db2.executeQuery(sql3);
	%>
			<% 
	while(rs.next()){%>

               <br>
               <input type="hidden" name="Grade" value=<%=rs.getString(1) %>>
	
	</br>
			<br>
			<tr>
				<td width="50%" colspan="3" rowspan="1">机构全称</td>

				<td width="50%" colspan="3" rowspan="1"><input type="text"
					size=30 name="Name" readonly="true" value='<%=rs.getString(2)%>'></td>
				<td width="50%" colspan="3" rowspan="1" nowrap="nowrap">归口管理部门</td>
				<td width="50%" colspan="3" rowspan="1"><input type="text"
					size=30 name="Name" readonly="true" value='<%=rs.getString(12)%>'></td>
			</tr>
			<tr>
				<td colspan="3" rowspan="1">通讯地址</td>
				<td colspan="3" rowspan="1"><input name="dAdd" type="text"
					size=30 readonly="true" value='<%=rs.getString(3)%>'></td>
				<td colspan="3" rowspan="1">所在地域</td>
				<td colspan="3" rowspan="1"><input type="text"
					size=30 name="Name" readonly="true" value='<%=rs.getString(13)%>'></td>
			</tr>
			<tr>
				<td colspan="3" rowspan="1">单位网址</td>
				<td colspan="3" rowspan="1"><input name="wAdd" type="text"
					size=40 readonly="true" value='<%=rs.getString(4)%>'></td>
				<td colspan="3" rowspan="1">电子信箱</td>
				<td colspan="3" rowspan="1"><input name="Mail" type="text"
					size=25 readonly="true" value='<%=rs.getString(5)%>'></td>
			</tr>
			<tr>
				<td colspan="3" rowspan="1">法人代表</td>
				<td colspan="3" rowspan="1"><input name="Stand" type="text"
					size=40 readonly="true" value='<%=rs.getString(6)%>'></td>
				<td colspan="3" rowspan="1">邮政编码</td>
				<td colspan="3" rowspan="1"><input name="PC" type="text"
					size=25 readonly="true" value='<%=rs.getString(7)%>'></td>
			</tr>

								<tr>
									<td colspan="3" rowspan="2">联系人</td>
									<td colspan="3" rowspan="2"><input name="people" type="text"
					size=25 readonly="true" value='<%=rs.getString(14)%>'></td>
									<td colspan="3" rowspan="1">电话</td>
									<td colspan="3" rowspan="1"><input name="phone" type="text"
					size=25 readonly="true" value='<%=rs.getString(15)%>'></td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1">传真</td>
									<td colspan="3" rowspan="1"><input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(16)%>'></td>
								</tr>

								<tr>
									<td colspan="3" rowspan="1">机构属性</td>
									<td colspan="7" rowspan="1">
										<input name="jgsx" type="text"
					size=25 readonly="true" value='<%=rs.getString(35)%>'>
									</td>


								</tr>

								<tr>
									<td colspan="3 " rowspan="1">机构简介</td>
									<td colspan="7" rowspan="1"><input name="jj" type="text"
					size=25 readonly="true" value='<%=rs.getString(17)%>'></td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1">技术需求名称</td>
									<td colspan="3" rowspan="1"><input name="xqName" type="text"
					size=25 readonly="true" value='<%=rs.getString(18)%>'></td>
									<td colspan="3" rowspan="1">需求时限</td>
									<td colspan="3" rowspan="1"><input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(19)%>'>年 <input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(20)%>'>年</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1" nowrap="nowrap">技术需求概述</td>
									<td colspan="7" rowspan="1"><input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(21)%>'></td>
								</tr>

								<tr>
									<td colspan="3" rowspan="1">关键字(1-5个)</td>
									<td colspan="1" rowspan="1"><input name="fax" type="text"
					size=10 readonly="true" value='<%=rs.getString(22)%>'></td>
									<td colspan="1" rowspan="1"><input name="fax" type="text"
					size=10 readonly="true" value='<%=rs.getString(23)%>'></td>
									<td colspan="1" rowspan="1"><input name="fax" type="text"
					size=10 readonly="true" value='<%=rs.getString(24)%>'></td>
									<td colspan="1" rowspan="1"><input name="fax" type="text"
					size=10 readonly="true" value='<%=rs.getString(25)%>'></td>
									<td colspan="1" rowspan="1"><input name="fax" type="text"
					size=10 readonly="true" value='<%=rs.getString(26)%>'></td>
									</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1">拟投入资金总额</td>
									<td colspan="7" rowspan="1"><input name="yuan" type="text"
					size=25 readonly="true" value='<%=rs.getString(34)%>'>万元</td>
									</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="2" nowrap="nowrap">技术需求解决方式</td>
									<td colspan="7">
										<p id="type5">
											<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(36)%>'>
										</p>
									</td>
								</tr>
								<td colspan="1" rowspan="1">合作意向单位</td>
								<td colspan="7" rowspan="1"><input name="danwei" type="text"
					size=25 readonly="true" value='<%=rs.getString(33)%>'></td>

								<tr>
									<td colspan="3" rowspan="1">科技活动类型</td>
									<td colspan="7" rowspan="1">
										<p id="type3">
											<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(37)%>'>
										</p>
									</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1">学科分类（限基础研究填写）</td>
									
									<td colspan="7" rowspan="1">
									<p id="xq">
									<label></label>
									<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(27)%>'>
									<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(28)%>'>
					<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(29)%>'>
									</p></td>

								</tr>
								<tr>
									<td colspan="3" rowspan="1">需求技术所属领域（非基础研究填写）</td>
									<td colspan="7">
										<p id="type4">
											<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(38)%>'>
										</p>
									</td>

								</tr>
								<tr>
									<td colspan="3" rowspan="1">需求技术应用行业（非基础研究填写）</td>
									<td colspan="7">
									<p id="hangye">
									<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(30)%>'>
					<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(31)%>'>
					<input name="fax" type="text"
					size=25 readonly="true" value='<%=rs.getString(32)%>'>
									</p></td>
								</tr>
	<% } %>

							</tbody>

						</table>
					</center>
			
		
		
		<select name="xsshenhe">
											<option value=""></option>
											<option value=不通过>不通过</option>
											<option value=通过>通过</option>
											</select>
											<tr>
											<td colspan="3" rowspan="1">审核意见</td>
		<td colspan="3" rowspan="1"><input name="view"
										type="text" size=30></td>
		</tr>
		<td><input type="submit" value="确认" onclick="return check(form);"></td>
	</form>
</body>
</html>