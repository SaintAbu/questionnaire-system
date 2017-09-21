<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<% request.setCharacterEncoding("UTF-8");%>


</head>
<body>
	<form name="form2" action="insertregister.jsp">
		<div id="tabContent1" style="display: block">
			<center>
				<table>
					<tr>
						<td style="width: 50%">注册信息</td>
					</tr>
					<tr>
						<td style="width: 50%">机构代码：<input type="text" id="Grade"
							name="Grade" size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">机构名称：<input type="text" name="Name"
							size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">通讯地址：<input type="text" name="dAdd"
							size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">单位网址：<input type="text" name="wAdd"
							size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">电子信箱：<input type="text" name="Mail"
							size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">法人代表：<input type="text" name="Stand"
							size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">邮政编码：<input type="text" name="PC"
							size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">输入密码：<input type="password"
							name="password" size="20"></td>
					</tr>
					<tr>
						<td style="width: 50%">确认密码：<input type="password"
							name="confirm" size="20"></td>
					</tr>
					<tr>
						<td><input type="submit" onclick="checkForm()" value="提交"></td>
						<td><input type="button" name="jump" value="取消"
							onclick="location.href='jump.jsp'" /></td>
					</tr>
				</table>
			</center>
	</form>

</body>
</html>