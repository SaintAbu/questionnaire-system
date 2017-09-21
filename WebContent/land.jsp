<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>


<script type="text/javascript" src="js/jquery-1.4.js">
</script>
<script type="text/javascript" src="login/refresh.js"></script>
<!-- 回车换行 -->


<script type="text/javascript">
	
function test()
{
	alert("如果丢失密码，请与0311-85813216电话联系！");
	}
</scriPt>

</head>
<body bgcolor="#FFFFFF"
	onLoad="MM_preloadImages('login/login000_06.jpg','login/loging000_07.jpg')">


	<table>
		<table width="795" height="475" border="0" align="center"
			cellpadding="0" cellspacing="0" id="__01">
			<tr>
				<td colspan="5"><img src="images/login_01.jpg" width="795"
					height="159" alt=""></td>
			</tr>
			<tr>
				<td rowspan="2"><img src="images/login_02.jpg" width="269"
					height="174" alt=""></td>
				<td bgcolor="#CFE5F2"><img src="images/login_03.jpg" width="66"
					height="115" alt=""></td>
				<td colspan="2" bgcolor="#D0E6F3"><table width="100%"
						height="116" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td colspan="2" align="left" valign="bottom"><INPUT
								NAME="LoginName" TYPE="text" CLASS="STYLE1"
								STYLE="width: 180px; height: 17px; border: #336699 1px solid"
								tabindex="1" MAXLENGTH="26" id="username"></td>
						</tr>
						<tr>
							<td height="32" colspan="2" align="left" valign="bottom"><INPUT
								NAME="LoginName" TYPE="password" CLASS="STYLE1"
								STYLE="width: 180px; height: 17px; border: #336699 1px solid"
								tabindex="1" MAXLENGTH="26" id="userpassword"></td>
						</tr>
						<tr>
							<td width="50%" height="29" align="left" valign="bottom"><INPUT
								NAME="LoginName" TYPE="text" CLASS="STYLE1"
								STYLE="width: 100px; height: 17px; border: #336699 1px solid"
								tabindex="1" MAXLENGTH="26" id="randcode"></td>
							<td width="50%" align="left" valign="bottom"><img
								src="images/randCode.jsp" id='shuaxin' width="50" height="25">
							</td>
						</tr>
						<tr>
							<td height="30" colspan="1" align="left" valign="bottom">&nbsp;</td>
						</tr>
					</table></td>
				<td rowspan="2"><img src="images/login_05.jpg" width="262"
					height="174" alt=""></td>
			</tr>
			<tr>
				<td colspan="2"><a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('Image12','','images/loging000_06.jpg',1)"><img
						src="images/login_06.jpg" name="Image12" width="135" height="59"
						border="0" onClick="IMG1_onclick2()"></a></td>
				<td><a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('Image13','','login/loging000_08.png',1)"><img
						src="images/login_09.png" name="Image13" width="129" height="59"
						border="0" onClick="window.location='indexregister.jsp'"></a></td>
			</tr>
			<tr>
				<td colspan="5"><img src="images/login_08.jpg" alt=""
					width="795" height="141" border="0" usemap="#Map"></td>
			</tr>
			<tr>
				<td><img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="269"
					height="1" alt=""></td>
				<td><img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="66"
					height="1" alt=""></td>
				<td><img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="69"
					height="1" alt=""></td>
				<td><img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="129"
					height="1" alt=""></td>
				<td><img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="262"
					height="1" alt=""></td>
			</tr>
			<tr>
			<!--  	<td colspan="5" align="center"><a href="download/Browser.zip">浏览器兼容问题说明</a></td>-->
			</tr>
		</table>
		<script type="text/javascript">
	//	System.out.println(0000+"rand");
	//	System.out.println(1111+"sRand");
	function IMG1_onclick2() {
		var Grade = document.getElementById("username");
		var password = document.getElementById("userpassword");
		var randcode = document.getElementById("randcode");
		var url = "insertland.jsp?user=" + "&Grade="+Grade.value + "&password=" +password.value+ "&randcode=" +randcode.value;
		//System.out.println("password"+password);
		if (Grade.value == "") {
			alert("用户名不能为空");
			
		} else if (password.value == "") {
			alert("密码不能为空");
			
		}  else if (randcode.value == "") {
			alert("验证码不能为空");
			
		}else if (!isNum(randcode.value)) {
				alert("验证码只能由数字组成!");
				randcode.value = "";
		}else
		{
			window.location.href = url;
			}
				
			
	}
	function CheckCode(s) //有特殊字符为true  
	{
		var containSpecial = RegExp(/[(\ )(\~)(\!)(\#)(\$)(\%)(\^)(\&)(\*)(\()(\))(\-)(\_)(\+)(\=)(\[)(\])(\{)(\})(\|)(\\)(\;)(\:)(\')(\")(\,)(\.)(\/)(\<)(\>)(\?)(\)]+/);
		return (containSpecial.test(s));
	}
	function isNum(str){
		for (ilen = 0; ilen < str.length; ilen++) {
                if (str.charAt(ilen) < '0' || str.charAt(ilen) > '9') {
                       return false;
                    }
                }
            return true;
	}
</script>
</body>
</html>